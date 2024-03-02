`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/02 14:12:28
// Design Name: 
// Module Name: TruthEvaluator
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


module TruthEvaluator(
    input clk,
    input rst,
    input truth_detection,
    // output reg [1:0] curr_state, 
    output trust_decision
    );

    // State definition
localparam 
    Q1 = 2'b00,
    Q2 = 2'b01,
    Q3 = 2'b10,
    Q4 = 2'b11;

reg [1:0] curr_state, next_state;

// First segment: state transfer
always @(posedge clk or negedge rst) begin
    if (!rst) curr_state <= Q4;
    else curr_state <= next_state;
end

// Sencond segment: transfer condition
always @(*) begin // combination logic
    case(curr_state)
        Q1: begin
            if(1'b0 == truth_detection) next_state = Q1;
            else next_state = Q2;
        end
            Q2: begin
            if(1'b0 == truth_detection) next_state = Q1;
            else next_state = Q3;
        end
        Q3: begin
            if(1'b0 == truth_detection) next_state = Q2;
            else next_state = Q4;
        end
        Q4: begin
            if(1'b0 == truth_detection) next_state = Q3;
            else next_state = Q4;
        end
        default: next_state = Q4;
    endcase
end

// Third segment: output
assign trust_decision = (Q3 == curr_state) || (Q4 == curr_state);

endmodule
