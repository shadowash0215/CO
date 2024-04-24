`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/01 19:35:06
// Design Name: 
// Module Name: Regs
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

`include "scpu_header.vh"

module Regs(
    input clk,
    input rst,
    input [4:0] Rs1_addr, 
    input [4:0] Rs2_addr, 
    input [4:0] Wt_addr, 
    input [31:0] Wt_data, 
    input RegWrite, 
    
    `RegFile_Regs_Outputs
    output [31:0] Rs1_data, 
    output [31:0] Rs2_data
    );

    reg [31:0] temp [31:0];

    `RegFile_Regs_Assignments

    assign Rs1_data = temp[Rs1_addr];
    assign Rs2_data = temp[Rs2_addr];

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            temp [0] <= 32'b0;
            temp [1] <= 32'b0;
            temp [2] <= 32'b0;
            temp [3] <= 32'b0;
            temp [4] <= 32'b0;
            temp [5] <= 32'b0;
            temp [6] <= 32'b0;
            temp [7] <= 32'b0;
            temp [8] <= 32'b0;
            temp [9] <= 32'b0;
            temp [10] <= 32'b0;
            temp [11] <= 32'b0;
            temp [12] <= 32'b0;
            temp [13] <= 32'b0;
            temp [14] <= 32'b0;
            temp [15] <= 32'b0;
            temp [16] <= 32'b0;
            temp [17] <= 32'b0;
            temp [18] <= 32'b0;
            temp [19] <= 32'b0;
            temp [20] <= 32'b0;
            temp [21] <= 32'b0;
            temp [22] <= 32'b0;
            temp [23] <= 32'b0;
            temp [24] <= 32'b0;
            temp [25] <= 32'b0;
            temp [26] <= 32'b0;
            temp [27] <= 32'b0;
            temp [28] <= 32'b0;
            temp [29] <= 32'b0;
            temp [30] <= 32'b0;
            temp [31] <= 32'b0;
        end else begin 
            if (RegWrite) begin
                if (Wt_addr != 5'b00000) begin
                    temp[Wt_addr] <= Wt_data;
                end else begin
                    temp[0] = 32'b0;
                end
            end
        end
    end


endmodule
