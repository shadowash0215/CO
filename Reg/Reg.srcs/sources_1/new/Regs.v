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


module Regs(
    input clk,
    input rst,
    input [4:0] Rs1_addr, 
    input [4:0] Rs2_addr, 
    input [4:0] Wt_addr, 
    input [31:0] Wt_data, 
    input RegWrite, 
    output [31:0] Rs1_data, 
    output [31:0] Rs2_data,
    output [31:0] Reg00,
    output [31:0] Reg01,
    output [31:0] Reg02,
    output [31:0] Reg03,
    output [31:0] Reg04,
    output [31:0] Reg05,
    output [31:0] Reg06,
    output [31:0] Reg07,
    output [31:0] Reg08,
    output [31:0] Reg09,
    output [31:0] Reg10,
    output [31:0] Reg11,
    output [31:0] Reg12,
    output [31:0] Reg13,
    output [31:0] Reg14,
    output [31:0] Reg15,
    output [31:0] Reg16,
    output [31:0] Reg17,
    output [31:0] Reg18,
    output [31:0] Reg19,
    output [31:0] Reg20,
    output [31:0] Reg21,
    output [31:0] Reg22,
    output [31:0] Reg23,
    output [31:0] Reg24,
    output [31:0] Reg25,
    output [31:0] Reg26,
    output [31:0] Reg27,
    output [31:0] Reg28,
    output [31:0] Reg29,
    output [31:0] Reg30,
    output [31:0] Reg31
    );

    reg [31:0] temp [31:0];

    assign Reg00 = temp[0]; 
    assign Reg01 = temp[1];
    assign Reg02 = temp[2];
    assign Reg03 = temp[3];
    assign Reg04 = temp[4];
    assign Reg05 = temp[5];
    assign Reg06 = temp[6];
    assign Reg07 = temp[7];
    assign Reg08 = temp[8];
    assign Reg09 = temp[9];
    assign Reg10 = temp[10];
    assign Reg11 = temp[11];
    assign Reg12 = temp[12];
    assign Reg13 = temp[13];
    assign Reg14 = temp[14];
    assign Reg15 = temp[15];
    assign Reg16 = temp[16];
    assign Reg17 = temp[17];
    assign Reg18 = temp[18];
    assign Reg19 = temp[19];
    assign Reg20 = temp[20];
    assign Reg21 = temp[21];
    assign Reg22 = temp[22];
    assign Reg23 = temp[23];
    assign Reg24 = temp[24];
    assign Reg25 = temp[25];
    assign Reg26 = temp[26];
    assign Reg27 = temp[27];
    assign Reg28 = temp[28];
    assign Reg29 = temp[29];
    assign Reg30 = temp[30];
    assign Reg31 = temp[31];

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
