`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/14 19:04:39
// Design Name: 
// Module Name: PC
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

module PC(
    input clk,
    input rst,
    input [31:0] PC_in,
    input CE,
    output reg [31:0] PC_out
    );

    always @(posedge clk or posedge rst) begin
        if(rst) begin
            PC_out <= 32'b0;
        end
        else if(CE) begin
            PC_out <= PC_in;
        end
    end

endmodule
