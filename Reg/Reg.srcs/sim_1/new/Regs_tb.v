`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/01 20:34:28
// Design Name: 
// Module Name: Regs_tb
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

module Regs_tb;
    reg clk;
    reg rst;
    reg [4:0] Rs1_addr; 
    reg [4:0] Rs2_addr; 
    reg [4:0] Wt_addr; 
    reg [31:0] Wt_data; 
    reg RegWrite; 
    wire [31:0] Rs1_data; 
    wire [31:0] Rs2_data;
    // wire [31:0] Reg01;
    Regs Regs_U(
        .clk(clk),
        .rst(rst),
        .Rs1_addr(Rs1_addr),
        .Rs2_addr(Rs2_addr),
        .Wt_addr(Wt_addr),
        .Wt_data(Wt_data),
        .RegWrite(RegWrite),
        .Rs1_data(Rs1_data),
        .Rs2_data(Rs2_data),
        .Reg01(Reg01)
    );

    always #10 clk = ~clk;

    initial begin
        // trivial test
        clk = 0;
        rst = 1;
        RegWrite = 0;
        Wt_data = 0;
        Wt_addr = 0;
        Rs1_addr = 0;
        Rs2_addr = 0;
        #100
        rst = 0;
        RegWrite = 1;
        Wt_addr = 5'b00101;
        Wt_data = 32'ha5a5a5a5;
        #50
        Wt_addr = 5'b01010;
        Wt_data = 32'h5a5a5a5a;
        #50
        RegWrite = 0;
        Rs1_addr = 5'b00101;
        Rs2_addr = 5'b01010;
        #100 
        // corner case
        // 1. Asynchronous Reset
        #20
        rst = 1;
        RegWrite = 1;
        Wt_addr = 5'b00001;
        Wt_data = 32'hbabecafe;
        #40
        rst = 0;
        #30
        RegWrite = 0;
        Rs1_addr = 5'b00001;
        #10
        rst = 1;
        #20
        rst = 0;
        Wt_addr = 0;
        Wt_data = 0;
        RegWrite = 1;
        #10
        // 2. Write while r/w signal is low
        RegWrite = 0;
        Wt_addr = 5'b00001;
        Wt_data = 32'hdeadbeef;
        #30
        RegWrite = 1;
        #20
        rst = 1;
        Wt_addr = 0;
        Wt_data = 0;
        #10
        rst = 0;
        RegWrite = 0;
        #10
        // 3. Read while r/w signal is high
        RegWrite = 1;
        Wt_addr = 5'b00001;
        Wt_data = 32'hdeadbeef;
        #30
        Wt_addr = 0;
        Wt_data = 0;
        Rs1_addr = 5'b00001;
        #30
        RegWrite = 0;
        #20
        rst = 1;
        Rs1_addr = 0;
        #10
        rst = 0;
        RegWrite = 1;
        #10
        $stop();
    end

endmodule
