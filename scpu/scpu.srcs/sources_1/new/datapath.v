`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/14 15:34:07
// Design Name: 
// Module Name: datapath
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


module datapath(
    input clk,
    input rst,
    input [31:0] inst_field,
    input [31:0] data_in,
    input [3:0] ALU_Control, 
    input [1:0] ImmSel, // Immediate type
    input [1:0] MemtoReg,
    input Branch, // Branch signal
    input Jump, // Jump signal
    input ALUSrc_B, // the source of the second operand of ALU
    input RegWrite, // Register write signal
    output reg [31:0] Data_out,
    output reg [31:0] ALU_out,
    output reg [31:0] PC_out
);

wire [31:0] Wt_data;
wire [31:0] A, B;
wire [31:0] ALUSrc_B_Reg;
wire [31:0] ALUSrc_B_Imm;
wire [31:0] Imm_out;
wire [31:0] ALU_res;
wire [31:0] PC_in;
wire [31:0] PC_res;
wire [4:0] rd, rs1, rs2;
wire zero;

assign rd = inst_field[11:7];
assign rs1 = inst_field[19:15];
assign rs2 = inst_field[24:20];

// decide the source of the second operand is register or immediate
assign ALUSrc_B_Imm = Imm_out;
assign B = ALUSrc_B ? ALUSrc_B_Imm : ALUSrc_B_Reg;

// decide the data to be written to register file
assign Wt_data = MemtoReg[1] ? (PC_res + 4) : (MemtoReg[0] ? data_in : ALU_res);

// decide the address of the next instruction
assign PC_in = Jump ? (Imm_out + PC_res) : ((Branch & zero) ? (Imm_out + PC_res) : (PC_res + 4));

ImmGen U1(inst_field, ImmSel, Imm_out);

Regs U2(.clk(clk), .rst(rst), .Rs1_addr(rs1), .Rs2_addr(rs2), .Wt_addr(rd), .Wt_data(Wt_data), .RegWrite(RegWrite), .Rs1_data(A), .Rs2_data(ALUSrc_B_Reg), .Reg00(), .Reg01(), .Reg02(), .Reg03(), .Reg04(), .Reg05(), .Reg06(), .Reg07(), .Reg08(), .Reg09(), .Reg10(), .Reg11(), .Reg12(), .Reg13(), .Reg14(), .Reg15(), .Reg16(), .Reg17(), .Reg18(), .Reg19(), .Reg20(), .Reg21(), .Reg22(), .Reg23(), .Reg24(), .Reg25(), .Reg26(), .Reg27(), .Reg28(), .Reg29(), .Reg30(), .Reg31());

ALU U3(.A(A), .B(B), .ALU_operation(ALU_Control), .res(ALU_res), .zero(zero));

PC U4(.clk(clk), .rst(rst), .PC_in(PC_in), .CE(1'b1), .PC_out(PC_res));

always @ (*) begin
    Data_out = ALUSrc_B_Reg;
    ALU_out = ALU_res;
    PC_out = PC_res;
end
endmodule
