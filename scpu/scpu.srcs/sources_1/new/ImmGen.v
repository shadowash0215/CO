`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/14 16:19:47
// Design Name: 
// Module Name: ImmGen
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

module ImmGen(
    input [31:0] inst_field,
    input [2:0] ImmSel,
    output reg [31:0] Imm_out
    );

    always @(*) begin
        case(ImmSel) 
            // I-type
            `IMM_SEL_I: Imm_out = {{20{inst_field[31]}}, inst_field[31:20]};
            // S-type
            `IMM_SEL_S: Imm_out = {{20{inst_field[31]}}, inst_field[31:25], inst_field[11:7]};
            // B-type
            `IMM_SEL_B: Imm_out = {{19{inst_field[31]}}, inst_field[31], inst_field[7], inst_field[30:25], inst_field[11:8], 1'b0};
            // J-type
            `IMM_SEL_J: Imm_out = {{11{inst_field[31]}}, inst_field[31], inst_field[19:12], inst_field[20], inst_field[30:21], 1'b0};
            // U-type
            `IMM_SEL_U: Imm_out = {inst_field[31:12], 12'b0};
            default: Imm_out = 32'b0;
        endcase
    end

endmodule
