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
  output reg [2:0]  ImmSel,
  output reg        ALUSrc_A,
  output reg        ALUSrc_B,
  output reg [2:0]  MemtoReg,
  output reg [1:0]  Jump,
  output reg [3:0]  Branch,
  output reg        RegWrite,
  output reg        MemRW,
  output reg [3:0]  ALU_Control,
  output reg        CPU_MIO,
  output reg        signal,
  output reg [1:0]  width
);

wire [1:0] ALU_op;
wire [2:0] ImmSel_temp;
wire ALUSrc_A_temp;
wire ALUSrc_B_temp;
wire [2:0] MemtoReg_temp;
wire [1:0] Jump_temp;
wire [3:0] Branch_temp;
wire RegWrite_temp;
wire MemRW_temp;
wire [3:0] ALU_Control_temp;
wire CPU_MIO_temp;
wire signal_temp;
wire [1:0] width_temp;

main_ctrl U1(.OPcode(OPcode), .Fun3(Fun3), .Fun7(Fun7), .ImmSel(ImmSel_temp), .ALUSrc_A(ALUSrc_A_temp), .ALUSrc_B(ALUSrc_B_temp), .MemtoReg(MemtoReg_temp), .Jump(Jump_temp), .Branch(Branch_temp), .signal(signal_temp), .width(width_temp), .RegWrite(RegWrite_temp), .MemRW(MemRW_temp), .ALU_op(ALU_op), .CPU_MIO(CPU_MIO_temp));

ALU_ctrl U2(.ALU_op(ALU_op), .Fun3(Fun3), .Fun7(Fun7), .ALU_Control(ALU_Control_temp));

always @(*) begin
  ImmSel = ImmSel_temp;
  ALUSrc_A = ALUSrc_A_temp;
  ALUSrc_B = ALUSrc_B_temp;
  MemtoReg = MemtoReg_temp;
  Jump = Jump_temp;
  Branch = Branch_temp;
  RegWrite = RegWrite_temp;
  MemRW = MemRW_temp;
  ALU_Control = ALU_Control_temp;
  CPU_MIO = CPU_MIO_temp;
  signal = signal_temp;
  width = width_temp;
end


endmodule