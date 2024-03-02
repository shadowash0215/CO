`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/02 14:15:37
// Design Name: 
// Module Name: TruthEvaluator_tb
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


module TruthEvaluator_tb();
    reg clk;
    reg rst;
    reg truth_detection;
    // wire [1:0] curr_state;
    wire trust_decision;

    TruthEvaluator TruthEvaluator_u (
        .clk(clk),
        .rst(rst),
        .truth_detection(truth_detection),
        // .curr_state(curr_state),
        .trust_decision(trust_decision)
    );

    always #10 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1'b0;
        truth_detection = 1'b0;
        #30;
        rst = 1'b1;
        #80
        truth_detection = 1'b1;
        #80
        $stop();
    end

endmodule
