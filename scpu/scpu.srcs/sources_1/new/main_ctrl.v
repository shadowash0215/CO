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


module main_ctrl(
    input [4:0]       OPcode,
    input [2:0]       Fun3,
    input             Fun7,
    output reg [1:0]  ImmSel,
    output reg        ALUSrc_B,
    output reg [1:0]  MemtoReg,
    output reg        Jump,
    output reg        Branch,
    output reg        RegWrite,
    output reg        MemRW,
    output reg [1:0]  ALU_op,
    output reg        CPU_MIO
    );


always @(*) begin
    case(OPcode)
    5'b01100: begin // R-type
        ImmSel = 2'b00;
        ALUSrc_B = 0;
        MemtoReg = 2'b00;
        Jump = 0;
        Branch = 0;
        RegWrite = 1;
        MemRW = 0;
        ALU_op = 2'b10;
        CPU_MIO = 0;
    end
    5'b00100: begin // like addi
        ImmSel = 2'b00;
        ALUSrc_B = 1;
        MemtoReg = 2'b00;
        Jump = 0;
        Branch = 0;
        RegWrite = 1;
        MemRW = 0;
        ALU_op = 2'b11;
        CPU_MIO = 0;
    end
    5'b00000: begin // lw
        ImmSel = 2'b00;
        ALUSrc_B = 1;
        MemtoReg = 2'b01;
        Jump = 0;
        Branch = 0;
        RegWrite = 1;
        MemRW = 0;
        ALU_op = 2'b00;
        CPU_MIO = 1;
    end
    5'b01000: begin // sw
        ImmSel = 2'b01;
        ALUSrc_B = 1;
        MemtoReg = 2'b00;
        Jump = 0;
        Branch = 0;
        RegWrite = 0;
        MemRW = 1;
        ALU_op = 2'b00;
        CPU_MIO = 1;
    end
    5'b11000: begin // beq
        ImmSel = 2'b10;
        ALUSrc_B = 0;
        MemtoReg = 2'b00;
        Jump = 0;
        Branch = 1;
        RegWrite = 0;
        MemRW = 0;
        ALU_op = 2'b01;
        CPU_MIO = 0;
    end
    5'b11011: begin // jal
        ImmSel = 2'b11;
        ALUSrc_B = 0;
        MemtoReg = 2'b00;
        Jump = 1;
        Branch = 0;
        RegWrite = 0;
        MemRW = 0;
        ALU_op = 2'b00;
        CPU_MIO = 0;
    end
    default: begin
        ImmSel = 2'b00;
        ALUSrc_B = 0;
        MemtoReg = 2'b00;
        Jump = 0;
        Branch = 0;
        RegWrite = 0;
        MemRW = 0;
        ALU_op = 2'b00;
        CPU_MIO = 0;
    end
    endcase
end

endmodule
