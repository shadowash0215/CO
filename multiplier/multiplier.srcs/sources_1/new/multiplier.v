`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/20 13:35:56
// Design Name: 
// Module Name: multiplier
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


module multiplier(
  input           clk,      
  input           start,     
  input [31:0]    A,        
  input [31:0]    B,
  output reg      finish,   
  output reg [63:0] res
);

reg state; 
reg [31:0] multiplicand; 

reg [4:0] cnt; 
wire[5:0] cnt_next = cnt + 6'b1;

reg lsb;

initial begin
    res <= 0;
    state <= 0;
    finish <= 0;
    cnt <= 0;
    multiplicand <= 0;
    lsb <= 0;
end

always @(posedge clk) begin
    if(~state && start) begin
        multiplicand <= A; 
        res <= B;
        state <= 1;
        finish <= 0;
        cnt <= 0;
        lsb <= 0;
    end else if(state) begin
        cnt <= cnt_next;
        lsb <= res[0];
        if ({res[0], lsb} == 2'b01) begin
            res <= $signed(res + {multiplicand, 32'b0}) >>> 1;
        end else if ({res[0], lsb} == 2'b10) begin
            res <= $signed(res - {multiplicand, 32'b0}) >>> 1;
        end else begin
            res <= $signed(res) >>> 1;
        end
    end

    if(cnt == 31) begin
        cnt <= 0;
        finish <= 1;
        state <= 0;
    end
end

endmodule
