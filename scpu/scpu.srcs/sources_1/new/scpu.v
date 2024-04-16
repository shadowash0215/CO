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


module scpu(
    input clk,
    input rst,
    input MIO_ready,
    input [31:0] inst_in,
    input [31:0] Data_in,
    output reg [31:0] Data_out,
    output reg [31:0] PC_out,
    output reg [31:0] Addr_out,
    output reg MemRW,
    output reg CPU_MIO
    );

wire [1:0] ImmSel;
wire ALUSrc_B;
wire [1:0] MemtoReg;
wire Jump;
wire Branch;
wire RegWrite;
wire MemRW_temp;
wire CPU_MIO_temp;
wire [3:0] ALU_Control;
wire [31:0] Data_out_temp;
wire [31:0] Addr_out_temp;
wire [31:0] PC_out_temp;

SCPU_ctrl U1(inst_in[6:2], inst_in[14:12], inst_in[30], MIO_ready, ImmSel, ALUSrc_B, MemtoReg, Jump, Branch, RegWrite, MemRW_temp, ALU_Control, CPU_MIO_temp);

datapath U2(clk, rst, inst_in, Data_in, ALU_Control, ImmSel, MemtoReg, Branch, Jump, ALUSrc_B, RegWrite, Data_out_temp, Addr_out_temp, PC_out_temp);

always @(*) begin
    MemRW = MemRW_temp;
    CPU_MIO = CPU_MIO_temp;
    Data_out = Data_out_temp;
    Addr_out = Addr_out_temp;
    PC_out = PC_out_temp;
end

endmodule
