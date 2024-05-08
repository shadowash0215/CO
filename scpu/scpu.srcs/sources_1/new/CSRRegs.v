`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/03 19:44:56
// Design Name: 
// Module Name: CSRRegs
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

module CSRRegs(
    input clk, rst,
    input [11:0] raddr, waddr,       // 读、写 CSR 寄存器的地址
    input [31:0] wdata,              // 写入 CSR 寄存器的数据
    input [31:0] inst_field,         // 指令字段
    input csr_we,                    // 写使能
    input [1:0] csr_wsc_mode,        // 写入 CSR 寄存器的模式
    input [5:0]  rd,                // rd 寄存器
    input [5:0]  rs1,            // rs1 寄存器  
    input [31:0] PC,                // 将执行的指令 PC 值
    input [3:0]  trap,              // 陷入模式
    output       PC_en,             // 用于控制 PC 的写使能
    `CSR_Regs_Outputs
    output [31:0] rdata             // 读出 CSR 寄存器的数据
);

// 初始化 CSR 寄存器
initial begin
    mstatus = 32'h8;
    mtvec = 32'h0;
    mcause = 32'h0;
    mtval = 32'h0;
    mepc = 32'h0;
end

// 读 CSR 寄存器
assign rdata = (rd == 0) ? rdata :
               (raddr == 12'h300) ? mstatus :
               (raddr == 12'h305) ? mtvec :
               (raddr == 12'h342) ? mcause :
               (raddr == 12'h343) ? mtval :
               (raddr == 12'h341) ? mepc :
               32'h0;

// 写 CSR 寄存器
always @(posedge clk or posedge rst) begin
    if (rst) begin
        mstatus <= 32'h8;
        mtvec <= 32'h0;
        mcause <= 32'h0;
        mtval <= 32'h0;
        mepc <= 32'h0;
    end else if (mstatus[3] == 1 && trap[3:1] != 3'b000) begin 
            case (trap) 
                4'b0010: begin  
                    mstatus[3] <= 1'b0;
                    mepc <= PC;
                    mcause <= 32'h8000000b;
                end
                4'b0100: begin
                    mstatus[3] <= 1'b0;
                    mepc <= PC;
                    mcause <= 32'hb;
                end
                4'b1000: begin
                    mstatus[3] <= 1'b0;
                    mepc <= PC;
                    mcause <= 32'h2;
                    mtval <= inst_field;
                end
                default: ;
            endcase
        end else if (mstatus[3] == 0 & trap[0] == 1) begin
                mstatus[3] <= 1'b1;
                mcause <= 0;
    end else begin
        if (csr_we & rs1 != 5'b00000) begin
            case(csr_wsc_mode)
                2'b01: begin 
                    case(waddr)
                        12'h300: mstatus <= wdata;
                        12'h305: mtvec <= wdata;
                        12'h342: mcause <= wdata;
                        12'h343: mtval <= wdata;
                        12'h341: mepc <= wdata;
                        default: ;
                    endcase
                end
                2'b10: begin 
                    case(waddr)
                        12'h300: mstatus <= mstatus | wdata;
                        12'h305: mtvec <= mtvec | wdata;
                        12'h342: mcause <= mcause | wdata;
                        12'h343: mtval <= mtval | wdata;
                        12'h341: mepc <= mepc | wdata;
                        default: ;
                    endcase
                end
                2'b11: begin 
                    case(waddr)
                        12'h300: mstatus <= mstatus & (~wdata);
                        12'h305: mtvec <= mtvec & (~wdata);
                        12'h342: mcause <= mcause & (~wdata);
                        12'h343: mtval <= mtval & (~wdata);
                        12'h341: mepc <= mepc & (~wdata);
                        default: ;
                    endcase
                end
                default: ;
            endcase
        end
    end
end

endmodule
