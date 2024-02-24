`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/02/24 12:43:51
// Design Name: 
// Module Name: MUX4to1_tb
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


module MUX4to1_tb();
    
    //input
    reg [15:0] SW;
    //output
    wire [3:0] LED;
  
    initial begin
    SW = 0;
    #50;
    
    SW[3:0] = 4'b0011;
    SW[7:4] = 4'b0111;
    SW[11:8] = 4'b1011;
    
    SW[15:14] = 2'b00;
    #50;
    SW[15:14] = 2'b01;
    #50;
    SW[15:14] = 2'b10;
    #50;
    SW[15:14] = 2'b11;
    #50;
    SW = 0;
    end
    
    MUX4to1 my_MUX4to1(
        .SW(SW),
        .LED(LED)
    );
    
endmodule
