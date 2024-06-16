`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/16 13:58:25
// Design Name: 
// Module Name: cache_tb
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


module cache_tb();
    reg clk;
    reg rst;
    reg [31:0] addr;
    reg [31:0] data_in;
    reg [127:0] mem_in;
    reg [1:0] cache_request; 
    reg in_ready;
    wire out_ready;
    wire MemRW;
    wire [31:0] data_out;
    wire [127:0] mem_out;

    cache U1 (
        .clk(clk),
        .rst(rst),
        .addr(addr),
        .data_in(data_in),
        .mem_in(mem_in),
        .cache_request(cache_request),
        .in_ready(in_ready),
        .out_ready(out_ready),
        .MemRW(MemRW),
        .data_out(data_out),
        .mem_out(mem_out)
    );

    initial begin
        clk = 1;
        rst = 1;
        cache_request = 2'b00;
        #10;
        rst = 0;
        in_ready = 1;
        // read miss
        addr = 32'h10000000;
        cache_request = 2'b01;
        mem_in = 128'h11111111222222223333333344444444;
        #40;
        // read miss
        addr = 32'h20000000;
        mem_in = 128'h55555555666666667777777788888888;
        #40;
        // read hit
        addr = 32'h10000002;
        #20;
        addr = 32'h10000003;
        #20;
        // write hit
        cache_request = 2'b10;
        addr = 32'h10000002;
        data_in = 32'hbabecafe;
        #20;
        addr = 32'h10000003;
        data_in = 32'hdeadbeef;
        #20;
        // read hit
        cache_request = 2'b01;
        addr = 32'h10000002;
        #20;
        addr = 32'h10000003;
        #20;
        // write miss
        cache_request = 2'b10;
        addr = 32'h30000000;
        data_in = 32'h99999999;
        mem_in = 128'hdeadbeefbabecafedeadbeefbabecafe;
        #50;
        cache_request = 2'b01;
        addr = 32'h30000000;
        #20;
        addr = 32'h30000002;
        #20;
        $stop();
    end
    always begin
        #5 clk = ~clk;
    end

endmodule
