`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/01 10:32:06
// Design Name: 
// Module Name: ALU_tb
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


module ALU_tb;
    reg [31:0] A, B;
    reg [3:0] ALU_operation;
    wire [31:0] res;
    wire zero;

    ALU ALU_u(
        .A(A),
        .B(B),
        .ALU_operation(ALU_operation),
        .res(res),
        .zero(zero)
    );

    initial begin
        // trivial test
        A = 32'hdeadbeef;
        B = 32'h0000babe;
        ALU_operation = 4'b0000;
        #100;
        ALU_operation = 4'b0001;
        #100;
        ALU_operation = 4'b0010;
        #100;
        ALU_operation = 4'b0011;
        #100;
        ALU_operation = 4'b0100;
        #100;
        ALU_operation = 4'b0101;
        #100;
        ALU_operation = 4'b0110;
        #100;
        ALU_operation = 4'b0111;
        #100;
        ALU_operation = 4'b1000;
        #100;
        ALU_operation = 4'b1001;
        #100;
        // corner case
        // 1. add overflow
        ALU_operation = 4'b0000;
        // a. negative + negative
        A = 32'h80000000;
        B = 32'h80000000;
        #100;
        // b. positive + positive
        A = 32'h7fffffff;
        B = 32'h7fffffff;
        #100;
        // 2. sub overflow
        ALU_operation = 4'b0001;
        // a. positive - negative
        A = 32'h7fffffff;
        B = 32'hffffffff;
        #100;
        // b. negative - positive
        A = 32'h80000000;
        B = 32'h00000001;
        #100;
        // c. positive - positive
        A = 32'h00000001;
        B = 32'h00000002;
        #100;
        // d. negative - negative
        A = 32'hffffffff;
        B = 32'hfffffffe;
        #100;
        // 3. left shift overflow
        ALU_operation = 4'b0010;
        A = 32'h00000001;
        B = 32'hffffffff;
        #100; 
        // 4. difference between SRL and SRA
        A = 32'h80000000;
        B = 32'hffffffff;
        ALU_operation = 4'b0110;
        #100;
        ALU_operation = 4'b0111;
        #100;
        // 5. difference between signed and unsigned
        A = 32'hfffffffe;
        B = 32'h00000001;
        ALU_operation = 4'b0011;
        #100;
        ALU_operation = 4'b0100;
        #100;
        $stop();
    end

endmodule
