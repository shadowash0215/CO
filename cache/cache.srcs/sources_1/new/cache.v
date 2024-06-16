`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/09 19:42:33
// Design Name: 
// Module Name: cache
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`define IDLE 2'b00
`define COMPARE_TAG 2'b01
`define WRITE_BACK 2'b10
`define ALLOCATE 2'b11

module cache(
    input clk,
    input rst,
    input [31:0] addr,
    input [31:0] data_in,
    input [127:0] mem_in,
    input [1:0] cache_request, // 00: no request, 01: read, 10: write
    input in_ready,
    output reg out_ready,
    output reg MemRW,
    output reg [31:0] data_out,
    output reg [127:0] mem_out
    );

    // 128 lines of 2-way set associative cache
    // 154 bits per line: 1 valid bit, 1 dirty bit, 1 LRU bit, 23 tag bits, 128 data bits
    reg [153:0] cache [127:0] [1:0];
    wire [1:0] offset = addr[1:0];
    wire [6:0] index = addr[13:7];
    wire [18:0] tag = addr[31:13];
    reg [1:0] state;

    always @(posedge clk or posedge rst) begin 
        if (rst) begin
            state <= `IDLE;
        end else begin
            case (state)
                `IDLE: begin
                    MemRW <= 1'b0;
                    out_ready <= 1'b0;
                    if (cache_request == 2'b01 || cache_request == 2'b10) begin
                        state <= `COMPARE_TAG;
                    end else begin 
                        state <= `IDLE;
                    end
                end
                `COMPARE_TAG: begin
                    // If the tag matches, then we have a cache hit
                    if (cache[index][0][153] == 1'b1 && cache[index][0][150:128] == tag) begin
                        if (cache_request == 2'b10) begin
                            cache[index][0][offset*32+:32] <= data_in;
                            cache[index][0][152] <= 1'b1;
                            cache[index][0][151] <= 1'b1;
                        end else data_out <= cache[index][0][offset*32+:32];
                        out_ready <= 1'b1;
                        state <= `IDLE;
                    end else if (cache[index][1][153] == 1'b1 && cache[index][1][150:128] == tag) begin
                        if (cache_request == 2'b10) begin
                            cache[index][1][offset*32+:32] <= data_in;
                            cache[index][1][152] <= 1'b1;
                            cache[index][1][151] <= 1'b1;
                        end else data_out <= cache[index][1][offset*32+:32];
                        out_ready <= 1'b1;
                        state <= `IDLE;
                    end 
                    // If the tag does not match, then we have a cache miss
                    else begin
                        // If the line is dirty, then we need to write it back to memory
                        if (cache[index][0][152] == 1'b1 || cache[index][1][152] == 1'b1) begin
                            state <= `WRITE_BACK;
                            MemRW <= 1'b1;
                        end else begin
                            state <= `ALLOCATE;
                            MemRW <= 1'b0;
                        end
                        out_ready <= 1'b0;
                    end
                end
                `WRITE_BACK: begin
                    if (in_ready) begin
                        MemRW <= 1'b1;
                        if (cache[index][0][152] == 1'b1) begin
                            mem_out <= cache[index][0][127:0];
                            cache[index][0][152] <= 1'b0;
                            state <= `ALLOCATE;
                        end else begin
                            mem_out <= cache[index][1][127:0];
                            cache[index][1][152] <= 1'b0;
                            state <= `ALLOCATE;
                        end
                    end else begin
                        state <= `WRITE_BACK;
                    end
                end
                `ALLOCATE: begin
                    if (in_ready) begin
                        if (cache[index][0][151] == 1'b1) begin
                            cache[index][0][151] <= 1'b0;
                            cache[index][1][153] <= 1'b1;
                            cache[index][1][152] <= 1'b0;
                            cache[index][1][151] <= 1'b1;
                            cache[index][1][150:128] <= tag;
                            cache[index][1][127:0] <= mem_in;
                        end else begin
                            cache[index][1][151] <= 1'b0;
                            cache[index][0][153] <= 1'b1;
                            cache[index][0][152] <= 1'b0;
                            cache[index][0][151] <= 1'b1;
                            cache[index][0][150:128] <= tag;
                            cache[index][0][127:0] <= mem_in;
                        end
                        state <= `COMPARE_TAG;
                    end else begin
                        state <= `ALLOCATE;
                    end
                end
            endcase
        end
    end
endmodule
