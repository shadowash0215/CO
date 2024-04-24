`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/14 21:26:37
// Design Name: 
// Module Name: scpu
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

module scpu(
    input clk,
    input rst,
    input MIO_ready,
    input [31:0] inst_in,
    input [31:0] Data_in,

    `RegFile_Regs_Outputs
    output reg [3:0] RAM_mask,
    output reg [31:0] Data_out,
    output reg [31:0] PC_out,
    output reg [31:0] Addr_out,
    output reg MemRW,
    output reg CPU_MIO
    );

wire [2:0] ImmSel;
wire ALUSrc_A;
wire ALUSrc_B;
wire [2:0] MemtoReg;
wire [1:0] Jump;
wire [3:0] Branch;
wire RegWrite;
wire MemRW_temp;
wire CPU_MIO_temp;
wire signal;
wire [1:0] width;
wire [3:0] mask_temp;
wire [3:0] ALU_Control;
wire [31:0] Data_out_temp;
wire [31:0] Addr_out_temp;
wire [31:0] PC_out_temp;

SCPU_ctrl U1(.OPcode(inst_in[6:2]), .Fun3(inst_in[14:12]), .Fun7(inst_in[30]), .MIO_ready(MIO_ready), .ImmSel(ImmSel), .ALUSrc_A(ALUSrc_A), .ALUSrc_B(ALUSrc_B), .MemtoReg(MemtoReg), .Jump(Jump), .Branch(Branch), .RegWrite(RegWrite), .MemRW(MemRW_temp), .ALU_Control(ALU_Control), .CPU_MIO(CPU_MIO_temp), .signal(signal), .width(width));

datapath U2(.clk(clk), .rst(rst), .inst_field(inst_in), .data_in(Data_in), .ALU_Control(ALU_Control), 

`RegFile_Regs_Arguments
.ImmSel(ImmSel), .MemtoReg(MemtoReg), .Branch(Branch), .Jump(Jump), .ALUSrc_A(ALUSrc_A), .ALUSrc_B(ALUSrc_B), .RegWrite(RegWrite), .signal(signal), .width(width), .RAM_mask(mask_temp), .Data_out(Data_out_temp), .ALU_out(Addr_out_temp), .PC_out(PC_out_temp));

always @(*) begin
    MemRW = MemRW_temp;
    RAM_mask = mask_temp;
    CPU_MIO = CPU_MIO_temp;
    Data_out = Data_out_temp;
    Addr_out = Addr_out_temp;
    PC_out = PC_out_temp;
end

endmodule
