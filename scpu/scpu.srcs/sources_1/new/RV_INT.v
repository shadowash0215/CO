`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/06 10:48:40
// Design Name: 
// Module Name: RV_INT
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

module RV_INT(
    input       clk,
    input       rst,
    input       INT,              // 外部中断信号
    input       ecall,            // ECALL 指令
    input       mret,             // MRET 指令
    input       illegal_inst,     // 非法指令信号
    input       csr_we,           // 写使能
    input [1:0] csr_wsc_mode,     // 写入 CSR 寄存器的模式
    input [31:0] inst_field,      // 指令字段
    input [31:0] pc_current,      // 当前指令 PC 值
    input [11:0] raddr, waddr,    // 读、写 CSR 寄存器的地址
    input [31:0] wdata,           // 写入 CSR 寄存器的数据
    `CSR_Regs_Outputs
    output [31:0] rdata,          // 读出 CSR 寄存器的数据
    output reg        en,              // 用于控制寄存器堆、内存等器件的写使能
    output reg        PC_en,             // 用于控制 PC 的写使能
    output reg [31:0] pc               // 将执行的指令 PC 值
);

wire [31:0] mstatus_temp, mtvec_temp, mcause_temp, mtval_temp, mepc_temp;

CSRRegs CSRs (
    .clk(clk),
    .rst(rst),
    .raddr(raddr),
    .waddr(waddr),
    .inst_field(inst_field),
    .wdata(wdata),
    .csr_we(csr_we),
    .csr_wsc_mode(csr_wsc_mode),
    .rd(inst_field[11:7]),
    .rs1(inst_field[19:15]),
    .PC(pc_current),
    .trap({illegal_inst, ecall, INT, mret}),
    .mstatus(mstatus_temp),
    .mtvec(mtvec_temp),
    .mepc(mepc_temp),
    .mcause(mcause_temp),
    .mtval(mtval_temp),
    .rdata(rdata)
);

always @(*) begin 
    if (mstatus[3] == 1'b1 && {illegal_inst, ecall, INT} != 3'b000) begin
        en = 1'b0;
        PC_en = 1'b1;
        pc = {mtvec[31:2], 2'b00};
    end else if (mstatus[3] == 0 && mret == 1)begin
        en = 1'b1;
        PC_en = 1'b1;
        pc = mepc;
    end else begin
        en = 1'b1;
        PC_en = 1'b0;
        pc = pc_current;
    end
    mstatus = mstatus_temp;
    mtvec = mtvec_temp;
    mcause = mcause_temp;
    mtval = mtval_temp;
    mepc = mepc_temp;
end

endmodule
