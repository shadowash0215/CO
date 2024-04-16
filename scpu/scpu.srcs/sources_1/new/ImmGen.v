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


module ImmGen(
    input [31:0] inst_field,
    input [1:0] ImmSel,
    output reg [31:0] Imm_out
    );

    always @(*) begin
        case(ImmSel) 
            // I-type
            2'b00: Imm_out = {{20{inst_field[31]}}, inst_field[31:20]};
            // S-type
            2'b01: Imm_out = {{20{inst_field[31]}}, inst_field[31:25], inst_field[11:7]};
            // B-type
            2'b10: Imm_out = {{19{inst_field[31]}}, inst_field[31], inst_field[7], inst_field[30:25], inst_field[11:8], 1'b0};
            // J-type
            2'b11: Imm_out = {{11{inst_field[31]}}, inst_field[31], inst_field[19:12], inst_field[20], inst_field[30:21], 1'b0};
            default: Imm_out = 32'b0;
        endcase
    end

endmodule
