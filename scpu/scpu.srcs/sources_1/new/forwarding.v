`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/26 23:03:50
// Design Name: 
// Module Name: forwarding
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


module forwarding(
    input [4:0] EX_MEM_rd,
    input [4:0] MEM_WB_rd,
    input [4:0] ID_EX_rs1,
    input [4:0] ID_EX_rs2,
    input [2:0] EX_MEM_MemtoReg,
    input [2:0] MEM_WB_MemtoReg,
    input       EX_MEM_RegWrite,
    input       MEM_WB_RegWrite,
    input       ID_EX_ALUSrc_A, 
    input       ID_EX_ALUSrc_B, 
    output reg [2:0] forwardA, // 000 for Regs, 001 for EX_MEM, 010 for MEM_WB, 011 for PC, 100 for EX_MEM_PC + 4, 101 for MEM_WB_PC + 4, 110 for EX_MEM_imm_data, 111 for MEM_WB_imm_data
    output reg [2:0] forwardB, // 000 for Regs, 001 for EX_MEM, 010 for MEM_WB, 011 for Imm, 100 for EX_MEM_PC + 4, 101 for MEM_WB_PC + 4, 110 for EX_MEM_imm_data, 111 for MEM_WB_imm_data
    output reg [1:0] forwardC // 00 for Regs, 01 for EX_MEM, 10 for MEM_WB
    );

    always @(*) begin
        if (ID_EX_ALUSrc_A) begin
            forwardA = 3'b011;
        end else begin
            if (EX_MEM_RegWrite == 1 && EX_MEM_rd != 0 && EX_MEM_rd == ID_EX_rs1) begin
                if (EX_MEM_MemtoReg == `MEM2REG_LUI) begin 
                    forwardA = 3'b110;
                end else if (EX_MEM_MemtoReg == `MEM2REG_PC_PLUS) begin 
                    forwardA = 3'b100;
                end else begin 
                    forwardA = 3'b001;
                end
            end else if (MEM_WB_RegWrite == 1 && MEM_WB_rd != 0 && MEM_WB_rd == ID_EX_rs1) begin
                if (MEM_WB_MemtoReg == `MEM2REG_LUI) begin 
                    forwardA = 3'b111;
                end else if (MEM_WB_MemtoReg == `MEM2REG_PC_PLUS) begin 
                    forwardA = 3'b101;
                end else begin 
                    forwardA = 3'b010;
                end
            end else begin
                forwardA = 3'b000;
            end
        end
        if (ID_EX_ALUSrc_B) begin
            forwardB = 3'b011;
        end else begin
            if (EX_MEM_RegWrite == 1 && EX_MEM_rd != 0 && EX_MEM_rd == ID_EX_rs2) begin
                if (EX_MEM_MemtoReg == `MEM2REG_LUI) begin 
                    forwardB = 3'b110;
                end else if (EX_MEM_MemtoReg == `MEM2REG_PC_PLUS) begin 
                    forwardB = 3'b100;
                end else begin 
                    forwardB = 3'b001;
                end
            end else if (MEM_WB_RegWrite == 1 && MEM_WB_rd != 0 && MEM_WB_rd == ID_EX_rs2) begin
                if (MEM_WB_MemtoReg == `MEM2REG_LUI) begin 
                    forwardB = 3'b111;
                end else if (MEM_WB_MemtoReg == `MEM2REG_PC_PLUS) begin 
                    forwardB = 3'b101;
                end else begin 
                    forwardB = 3'b010;
                end
            end else begin
                forwardB = 3'b000;
            end
        end
        if (EX_MEM_RegWrite ==1 && EX_MEM_rd != 0 && EX_MEM_rd == ID_EX_rs2) begin 
            forwardC = 2'b01;
        end else if (MEM_WB_RegWrite == 1 && MEM_WB_rd != 0 && MEM_WB_rd == ID_EX_rs2) begin
            forwardC = 2'b10;
        end else begin
            forwardC = 2'b00;
        end
    end

endmodule
