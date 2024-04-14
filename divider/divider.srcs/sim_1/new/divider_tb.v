`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/20 20:04:08
// Design Name: 
// Module Name: divider_tb
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


module divider_tb();
      reg clk;
      reg rst;
      reg [31:0] dividend;
      reg [31:0] divisor;
      reg start;
      
      wire divide_zero;
      wire [31:0] res;
      wire [31:0] rem;
      wire finish;
      divider   u_div(
         .clk(clk),
         .rst(rst),
         .dividend(dividend),
         .divisor(divisor),
         .start(start),
         .divide_zero(divide_zero),
         .res(res),
         .rem(rem),
         .finish(finish)
      );
      always #5 clk = ~clk;
      
      initial begin
      clk =0;
      rst = 1;
      start = 0;
      #10
      rst = 0;
      start = 1;
      dividend = 32'd8;
      divisor  = 32'd4;
      #10
      start = 0;
      #340
      start = 1;
      dividend = 32'd100;  
      divisor  = 32'd10;   
      #10
      start = 0;
      #340     
      start = 1;
      dividend = 32'd9;
      divisor  = 32'd4; 
      #10
      start = 0;
      #340  
      start = 1;          
      dividend = 32'd100; 
      divisor  = 32'd99;  
      #10
      start = 0;
      #340 
      start = 1;
      dividend = 32'hffffffff;
      divisor  = 32'd0;
      #10
      start = 0;
      #340
      start = 1;
      dividend = 32'd1;
      divisor  = 32'hffffffff;
      #10
      start = 0;
      #340
      start = 1;
      dividend = 32'hffffffff;
      divisor  = 32'd1;
      #10
      start = 0;
      #640
      $stop();   
      
      end
endmodule
