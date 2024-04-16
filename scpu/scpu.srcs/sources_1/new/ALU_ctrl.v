`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/14 20:18:53
// Design Name: 
// Module Name: ALU_ctrl
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


module ALU_ctrl(
    input [2:0]       Fun3,
    input             Fun7,
    input [1:0]       ALU_op,
    output reg [3:0]  ALU_Control
    );

wire [3:0] Fun;

assign Fun = {Fun3,Fun7};

always @(*) begin
    case(ALU_op) 
    2'b00: ALU_Control = 4'd0; // add
    2'b01: ALU_Control = 4'd1; // sub
    2'b10: begin
        case(Fun)
        4'b0000: ALU_Control = 4'd0; // add
        4'b0001: ALU_Control = 4'd1; // sub
        4'b0010: ALU_Control = 4'd2; // sll
        4'b0100: ALU_Control = 4'd3; // slt
        4'b0110: ALU_Control = 4'd4; // sltu
        4'b1000: ALU_Control = 4'd5; // xor
        4'b1010: ALU_Control = 4'd6; // srl
        4'b1011: ALU_Control = 4'd7; // sra
        4'b1100: ALU_Control = 4'd8; // or
        4'b1110: ALU_Control = 4'd9; // and
        endcase
    end
    2'b11: begin
        case(Fun3)
        3'b000: ALU_Control = 4'd0; // add
        3'b001: ALU_Control = 4'd2; // sll
        3'b010: ALU_Control = 4'd3; // slt
        3'b011: ALU_Control = 4'd4; // sltu
        3'b100: ALU_Control = 4'd5; // xor
        3'b101: ALU_Control = Fun7 ? 4'd7 : 4'd6; // srl/sra
        3'b110: ALU_Control = 4'd8; // or
        3'b111: ALU_Control = 4'd9; // and
    endcase
    end
    default: ALU_Control = 4'd10;
    endcase
end

endmodule
