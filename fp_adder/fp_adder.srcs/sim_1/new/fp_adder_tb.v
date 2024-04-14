`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/22 17:14:30
// Design Name: 
// Module Name: fp_adder_tb
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


module fp_adder_tb();
    reg clk;
    reg start;
    reg [63:0] A;
    reg [63:0] B;
    wire [63:0] res;
    wire finish;

    fp_adder u_fp_adder(
        .clk(clk),
        .start(start),
        .A(A),
        .B(B),
        .res(res),
        .finish(finish)
    );
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        start = 0;
        #10
        start = 1;
        A = 64'hffffffffffffffff;
        B = 64'h3FC999999999999A;
        #10
        start = 0;
        #980
        start = 1;
        A = 64'h0;
        B = 64'h0;
        #10
        start = 0;
        #990
        start = 1;
        A = 64'h7ff0000000000000;
        B = 64'h7ff0000000000000;
        #10
        start = 0;
        #990
        start = 1;
        A = 64'h7ff0000000000000;
        B = 64'hfff0000000000000;
        #10
        start = 0;
        #990
        start = 1;
        A = 64'h3fe0000000000000;
        B = 64'hbfdc000000000000;
        #10
        start = 0;
        #990
        start = 1;
        A = 64'h3FB999999999999A;
        B = 64'h3FC999999999999A;
        #10
        start = 0;
        #990
        start = 1;
        A = 64'h7fefffffffffffff;
        B = 64'h7fefffffffffffff;
        #10
        start = 0;
        #990
        start = 1;
        A = 64'hffefffffffffffff;
        B = 64'hffefffffffffffff;
        #10
        start = 0;
        #990
        start = 1;
        A = 64'h000ffffffffffffe;
        B = 64'h0008000000000000;
        #10
        start = 0;
        #990
        start = 1;
        A = 64'h0010000000000010;
        B = 64'h8010000000000001;
        #10
        start = 0;
        #990
        start = 1;
        A = 64'h3FC999999999999A;
        B = 64'hBFC999999999999A;
        #10
        start = 0;
        #990
        start = 1;
        A = 64'h7fe0000000000000;
        B = 64'h0008000000000000;
        #10
        start = 0;
        #1990
        $stop();
    end

endmodule
