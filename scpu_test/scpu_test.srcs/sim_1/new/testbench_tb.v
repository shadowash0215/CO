`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/15 00:17:18
// Design Name: 
// Module Name: testbench_tb
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

module testbench_tb();

    reg clk;
    reg rst;
    reg ext_int;

    testbench m0(.clk(clk), .rst(rst), .ext_int(ext_int));

    initial begin
        ext_int = 1'b0;
        clk = 1'b0;
        rst = 1'b1;
        #5;
        rst = 1'b0;
        #4495;
        ext_int = 1'b1;
        #100;
        ext_int = 1'b0;
        #1400;
        $finish;
    end

    always #50 clk = ~clk;

endmodule
