`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/14 19:26:29
// Design Name: 
// Module Name: SCPU_ctrl
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


module SCPU_ctrl(
  input [4:0]       OPcode, 
  input [2:0]       Fun3,
  input             Fun7,
  input             MIO_ready,
  output [2:0]  ImmSel,
  output        ALUSrc_A,
  output        ALUSrc_B,
  output  [2:0]  MemtoReg,
  output  [1:0]  Jump,
  output  [3:0]  Branch,
  output         RegWrite,
  output         MemRW,
  output  [3:0]  ALU_Control,
  output         CPU_MIO,
  output         sign,
  output  [1:0]  width
);

wire [1:0] ALU_op;

main_ctrl U1(.OPcode(OPcode), .Fun3(Fun3), .Fun7(Fun7), .ImmSel(ImmSel), .ALUSrc_A(ALUSrc_A), .ALUSrc_B(ALUSrc_B), .MemtoReg(MemtoReg), .Jump(Jump), .Branch(Branch), .sign(sign), .width(width), .RegWrite(RegWrite), .MemRW(MemRW), .ALU_op(ALU_op), .CPU_MIO(CPU_MIO));

ALU_ctrl U2(.ALU_op(ALU_op), .Fun3(Fun3), .Fun7(Fun7), .ALU_Control(ALU_Control));

endmodule