`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/14 19:49:16
// Design Name: 
// Module Name: main_ctrl
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

module main_ctrl(
    input [4:0]       OPcode,
    input [2:0]       Fun3,
    input             Fun7,
    output reg [2:0]  ImmSel,
    output reg        ALUSrc_A,   
    output reg        ALUSrc_B,
    output reg [2:0]  MemtoReg,
    output reg [1:0]  Jump, // 10 for jal, 11 for jalr, 0x for others
    output reg [4:0]  Branch, // 0000 for no branch, 0001 for beq, 0010 for bne, 0100 for blt, bltu, 1000 for bge, bgeu
    output reg        sign, // 1 for unsigned, 0 for signed
    output reg [1:0]  width,
    output reg        RegWrite,
    output reg        MemRW, // 0 for read, 1 for write
    output reg [1:0]  ALU_op,
    output reg        CPU_MIO
    );


always @(*) begin
    case(OPcode)
    // R-type
    `OPCODE_ALU: begin // add, sub, and, or, xor, sll, srl, sra, slt, sltu
        ImmSel = 3'b000;
        ALUSrc_A = 0;
        ALUSrc_B = 0;
        MemtoReg = 3'b000;
        Jump = 2'b00;
        Branch = 4'b0000;
        RegWrite = 1;
        MemRW = 0;
        ALU_op = 2'b10;
        CPU_MIO = 0;
        if (Fun3 == 3'b011) begin
            sign = 1;
        end else begin 
            sign = 0;
        end
        width = 2'b00;
    end
    // I-type
    `OPCODE_ALU_IMM: begin // addi, andi, ori, xori, slti, sltiu, slli, srli, srai
        ImmSel = 3'b000;
        ALUSrc_A = 0;
        ALUSrc_B = 1;
        MemtoReg = 3'b000;
        Jump = 2'b00;
        Branch = 4'b0000;
        RegWrite = 1;
        MemRW = 0;
        ALU_op = 2'b11;
        CPU_MIO = 0;
        if (Fun3 == 3'b011) begin
            sign = 1;
        end else begin 
            sign = 0;
        end
        width = 2'b00;
    end
    `OPCODE_LOAD: begin // lb, lh, lw, lbu, lhu
        ImmSel = 3'b000;
        ALUSrc_A = 0;
        ALUSrc_B = 1;
        MemtoReg = 3'b001;
        Jump = 2'b00;
        Branch = 4'b0000;
        RegWrite = 1;
        MemRW = 0;
        ALU_op = 2'b00;
        CPU_MIO = 1;
        sign = Fun3[2];
        width = Fun3[1:0];
    end
    `OPCODE_JALR: begin // jalr
        ImmSel = 3'b000;
        ALUSrc_A = 0;
        ALUSrc_B = 1;
        MemtoReg = 3'b010;
        Jump = 2'b11;
        Branch = 4'b0000;
        RegWrite = 1;
        MemRW = 0;
        ALU_op = 2'b00;
        CPU_MIO = 0;
        sign = 0;
        width = 2'b00;
    end
    // S-type
    `OPCODE_STORE: begin // sb, sh, sw
        ImmSel = 3'b001;
        ALUSrc_A = 0;
        ALUSrc_B = 1;
        MemtoReg = 3'b000;
        Jump = 2'b00;
        Branch = 4'b0000;
        RegWrite = 0;
        MemRW = 1;
        ALU_op = 2'b00;
        CPU_MIO = 1;
        sign = 0;
        width = Fun3[1:0];
    end
    // SB-type
    `OPCODE_BRANCH: begin // beq, bne, blt, bge, bltu, bgeu
        ImmSel = 3'b010;
        ALUSrc_A = 0;
        ALUSrc_B = 0;
        MemtoReg = 3'b000;
        Jump = 2'b00;
        case (Fun3)
        3'b000: begin
            Branch = 4'b0001; // beq
            sign = 0;
        end
        3'b001: begin 
            Branch = 4'b0010; // bne
            sign = 0;
        end
        3'b100: begin 
            Branch = 4'b0100; // blt
            sign = 0;
        end
        3'b101: begin 
            Branch = 4'b1000; // bge
            sign = 0;
        end
        3'b110: begin 
            Branch = 4'b0100; // bltu
            sign = 1;
        end
        3'b111: begin 
            Branch = 4'b1000; // bgeu
            sign = 1;
        end
        default: begin 
            Branch = 4'b0000;
            sign = 0;
        end
        endcase
        RegWrite = 0;
        MemRW = 0;
        ALU_op = 2'b01;
        CPU_MIO = 0;
        width = 2'b00;
    end
    // UJ-type
    `OPCODE_JAL: begin // jal
        ImmSel = 3'b011;
        ALUSrc_A = 0;
        ALUSrc_B = 0;
        MemtoReg = 3'b000;
        Jump = 2'b10;
        Branch = 4'b0000;
        RegWrite = 0;
        MemRW = 0;
        ALU_op = 2'b00;
        CPU_MIO = 0;
        sign = 0;
        width = 2'b00;
    end
    // U-type
    `OPCODE_LUI: begin // lui
        ImmSel = 3'b100;
        ALUSrc_A = 0;
        ALUSrc_B = 1;
        MemtoReg = 3'b011;
        Jump = 2'b00;
        Branch = 4'b0000;
        RegWrite = 1;
        MemRW = 0;
        ALU_op = 2'b00;
        CPU_MIO = 0;
        sign = 0;
        width = 2'b00;
    end
    `OPCODE_AUIPC: begin // auipc
        ImmSel = 3'b100;
        ALUSrc_A = 1;
        ALUSrc_B = 1;
        MemtoReg = 3'b100;
        Jump = 2'b00;
        Branch = 4'b0000;
        RegWrite = 1;
        MemRW = 0;
        ALU_op = 2'b00;
        CPU_MIO = 0;
        sign = 0;
        width = 2'b00;
    end
    default: begin
        ImmSel = 3'b000;
        ALUSrc_A = 0;
        ALUSrc_B = 0;
        MemtoReg = 3'b000;
        Jump = 2'b00;
        Branch = 4'b0000;
        RegWrite = 0;
        MemRW = 0;
        ALU_op = 2'b00;
        CPU_MIO = 0;
        sign = 0;
        width = 2'b00;
    end
    endcase
end

endmodule
