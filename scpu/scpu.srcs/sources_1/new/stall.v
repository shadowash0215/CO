`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/29 14:04:39
// Design Name: 
// Module Name: stall
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


module stall(
    input [4:0] IF_ID_rs1,
    input [4:0] IF_ID_rs2,
    input [4:0] ID_EX_rd,
    input       ID_EX_MemRead,
    input       BJ,
    input       ID_EX_RegWrite,
    output      bubble
    );

    assign bubble = (ID_EX_MemRead && ID_EX_rd != 0 && ((ID_EX_rd == IF_ID_rs1) || (ID_EX_rd == IF_ID_rs2))) || (BJ && ID_EX_RegWrite && ID_EX_rd!= 0 && ((ID_EX_rd == IF_ID_rs1) || (ID_EX_rd == IF_ID_rs2)));
endmodule
