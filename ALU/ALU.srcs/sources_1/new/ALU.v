`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/01 10:12:09
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [31:0] A,
    input [31:0] B,
    input [3:0] ALU_operation,
    output reg [31:0] res,
    output zero
    );

    assign zero = (res == 0);

    always @(*) begin
        case(ALU_operation)
            4'b0000: res = $signed(A) + $signed(B);
            4'b0001: res = $signed(A) - $signed(B);
            4'b0010: res = A << B[4:0];
            4'b0011: res = ($signed(A) < $signed(B));
            4'b0100: res = ($unsigned(A) < $unsigned(B));
            4'b0101: res = A ^ B;
            4'b0110: res = A >> B[4:0];
            4'b0111: res = A >>> B[4:0];
            4'b1000: res = A | B;
            4'b1001: res = A & B;
            default: res = 32'b0;
        endcase
    end

endmodule
