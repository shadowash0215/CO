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
    input        ext_int,

    `RegFile_Regs_Outputs
    `CSR_Regs_Outputs
    output reg [3:0] RAM_mask,
    output reg [31:0] Data_out,
    output reg [31:0] PC_out,
    output reg [31:0] Addr_out,
    output reg MemRW,
    output reg en,
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
wire [11:0] csr_raddr, csr_waddr;
wire illegal_inst, ecall_inst, mret_inst;
wire PC_csr;
wire csr_we;
wire [1:0] csr_wsc_mode;
wire csr_src;
wire [31:0] csr_rdata;
wire [31:0] csr_wdata;
wire [3:0] mask_temp;
wire en_temp;
wire [31:0] PC_trap;
wire [3:0] ALU_Control;
wire [31:0] Data_out_temp;
wire [31:0] Addr_out_temp;
wire [31:0] PC_out_temp;
wire [31:0] mstatus_temp, mtvec_temp, mcause_temp, mtval_temp, mepc_temp;

SCPU_ctrl U1(.OPcode(inst_in[6:2]), .Fun3(inst_in[14:12]), .Fun7(inst_in[30]), .csr_raw(inst_in[31:20]), .MIO_ready(MIO_ready), .ImmSel(ImmSel), .ALUSrc_A(ALUSrc_A), .ALUSrc_B(ALUSrc_B), .MemtoReg(MemtoReg), .Jump(Jump), .Branch(Branch), .RegWrite(RegWrite), .MemRW(MemRW_temp), .ALU_Control(ALU_Control), .CPU_MIO(CPU_MIO_temp), .signal(signal), .width(width), .csr_raddr(csr_raddr), .csr_waddr(csr_waddr), .illegal_inst(illegal_inst), .ecall_inst(ecall_inst), .mret_inst(mret_inst), .csr_we(csr_we), .csr_wsc_mode(csr_wsc_mode), .csr_src(csr_src));

datapath U2(.clk(clk), .rst(rst), .inst_field(inst_in), .data_in(Data_in), .ALU_Control(ALU_Control), 

`RegFile_Regs_Arguments
.ImmSel(ImmSel), .MemtoReg(MemtoReg), .Branch(Branch), .Jump(Jump), .ALUSrc_A(ALUSrc_A), .ALUSrc_B(ALUSrc_B), .RegWrite(RegWrite), .signal(signal), .width(width), .RAM_mask(mask_temp), .Data_out(Data_out_temp), .ALU_out(Addr_out_temp), .PC_out(PC_out_temp), .csr_src(csr_src), .en(en_temp), .PC_csr(PC_csr), .PC_trap(PC_trap), .csr_rdata(csr_rdata), .csr_wdata(csr_wdata));

RV_INT U3 (.clk(clk), .rst(rst), .INT(ext_int), .ecall(ecall_inst), .mret(mret_inst), .illegal_inst(illegal_inst), .raddr(csr_raddr), .waddr(csr_waddr), .csr_we(csr_we), .csr_wsc_mode(csr_wsc_mode), .rdata(csr_rdata), .wdata(csr_wdata), .inst_field(inst_in), .pc_current(PC_out_temp), 
.mstatus(mstatus_temp), .mtvec(mtvec_temp), .mcause(mcause_temp), .mtval(mtval_temp), .mepc(mepc_temp), .en(en_temp), .PC_en(PC_csr), .pc(PC_trap));

always @(*) begin
    MemRW = MemRW_temp;
    RAM_mask = mask_temp;
    CPU_MIO = CPU_MIO_temp;
    Data_out = Data_out_temp;
    Addr_out = Addr_out_temp;
    PC_out = PC_out_temp;
    en = en_temp;   
    mstatus = mstatus_temp;
    mtvec = mtvec_temp;
    mcause = mcause_temp;
    mtval = mtval_temp;
    mepc = mepc_temp;
end

endmodule
