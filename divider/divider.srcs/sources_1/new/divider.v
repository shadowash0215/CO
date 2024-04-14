`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/20 19:18:26
// Design Name: 
// Module Name: divider
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


module divider(
    input   clk,
    input   rst,
    input   start,          
    input[31:0] dividend,   
    input[31:0] divisor,    
    output reg divide_zero,     
    output reg finish,         
    output reg [31:0] res,       
    output reg [31:0] rem        
);

reg state; 
reg [4:0] cnt; 
wire[5:0] cnt_next = cnt + 6'b1;

initial begin
    res <= 0;
    rem <= 0;
    state <= 0;
    finish <= 0;
    cnt <= 0;
    divide_zero <= 0;
end

always @(posedge clk or posedge rst) begin
    if(rst) begin
        res <= 0;
        rem <= 0;
        state <= 0;
        finish <= 0;
        cnt <= 0;
        divide_zero <= 0;
    end else
    if(~state && start) begin 
        if (divisor == 0) begin
            divide_zero <= 1;
            {rem, res} <= dividend << 1; 
            state <= 1;
            finish <= 1;
            cnt <= 0;
        end else begin
            divide_zero <= 0;
            {rem, res} <= dividend << 1; 
            state <= 1;
            finish <= 0;
            cnt <= 0;
        end
    end else if(state) begin
        cnt <= cnt_next;
        if ($signed(rem - divisor) < 0) begin
            {rem, res} = {rem, res} << 1;
            res[0] = 0;
        end else begin
            {rem, res} = {rem  - divisor, res} << 1;
            res[0] = 1;
        end
    end

    if(cnt == 31) begin
        rem <= rem >> 1;
        cnt <= 0;
        finish <= 1;
        state <= 0;
    end
end

endmodule
