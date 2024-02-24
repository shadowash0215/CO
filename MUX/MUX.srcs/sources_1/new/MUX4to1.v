`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/02/24 12:31:59
// Design Name: 
// Module Name: MUX4to1
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


module MUX4to1(
    input wire [15:0] SW,
    output wire [3:0] LED
    );
    
    assign LED = SW[14] ? (SW[15] ? 0 : SW[7:4]) : (SW[15] ? SW[11:8] : SW[3:0]);
    
endmodule
