`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/22 00:09:22
// Design Name: 
// Module Name: fp_adder
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


/*
1. unpack A and B: sign, exponent, fraction(leading 1/0 restoration)
2. special case: NaN(11), infinity(10), denormalized number(00)
3. compare exponent & alignment: we need to consider that the number with smaller exponent may need to round to the nearest even when right shift
4. add: add the fraction part, consider the sign and special case 0;
5. normalize: leading zero need to be removed, and the exponent need to be adjusted
6. overflow: the result may be infinity or NaN, or need to be normalized
7. pack: pack the result to the 64-bit format
*/

module fp_adder(
    input clk,
    input start,
    input [63:0] A,
    input [63:0] B,
    output reg [63:0] res,
    output reg finish
    );

localparam
    unpack = 3'b001,
    special = 3'b010,
    exponent_alignment = 3'b011,
    add = 3'b100,
    normalize = 3'b101,
    overflow = 3'b110,
    pack = 3'b111;

reg running;
reg [3:0] state;
reg [3:0] next_state;
reg A_sign, B_sign, res_sign;
reg [10:0] mov_locate;
reg [10:0] A_exponent, B_exponent, res_exponent;
reg [52:0] A_fraction, B_fraction;
reg [53:0] res_fraction;
reg [52:0] A_out, B_out;
reg [52:0] A_mid, B_mid;
reg [1:0] comparison;

initial begin
    running <= 1'b0;
    res <= 64'b0;
    finish <= 1'b0;
    state <= 0;
end

always @(posedge clk) begin
    if(~running && start) begin
        res <= 64'b0;
        res_sign <= 1'b0;
        res_exponent <= 11'd0;
        res_fraction <= 52'd0;
        running <= 1'b1;
        state <= unpack;
        next_state <= special;
        finish <= 0;
        comparison <= 2'b00;
    end
    else if(running) begin
        state <= next_state;
        case(state)
            unpack: begin
                // sign first
                A_sign <= A[63];
                B_sign <= B[63];
                // exponent restoration
                A_exponent <= A[62:52] - 11'd1023;
                B_exponent <= B[62:52] - 11'd1023;
                // fraction && leading 1/0 restoration
                // denormalized number case
                if (A[62:52] == 11'd0 || A[62:52] == 11'd2047) begin
                    A_fraction <= {1'b0, A[51:0]};
                end else begin
                    A_fraction <= {1'b1, A[51:0]};
                end
                if (B[62:52] == 11'd0 || B[62:52] == 11'd2047) begin
                    B_fraction <= {1'b0, B[51:0]};
                end else begin
                    B_fraction <= {1'b1, B[51:0]};
                end
                A_out <= 53'b0;
                B_out <= 53'b0;
                A_mid <= 53'b0;
                B_mid <= 53'b0;
                next_state <= special;
            end
            special: begin
                // NaN case
                if ((A_exponent == 11'd1024 && A_fraction[51:0] != 52'd0) || (B_exponent == 11'd1024 && B_fraction[51:0] != 52'd0)) begin
                    res_sign <= 1'b1;
                    res_exponent <= 11'd2047;
                    res_fraction <= 53'b1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111;
                    next_state <= pack;
                end
                // infinity case
                else if (A_exponent == 11'b100_0000_0000) begin 
                    if (B_exponent == 11'b100_0000_0000 && A_sign != B_sign) begin
                        res_sign <= 1'b1;
                        res_exponent <= 11'd2047;
                        res_fraction <= 53'b1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111;
                        next_state <= pack;
                    end else begin
                        res_sign <= A_sign;
                        res_exponent <= 11'd2047;
                        res_fraction <= 53'b0;
                        next_state <= pack;
                    end
                end
                else if (B_exponent == 11'b100_0000_0000) begin
                    res_sign <= B_sign;
                    res_exponent <= 11'd2047;
                    res_fraction <= 53'b0;
                    next_state <= pack;
                end
                // 0 case
                else if ($signed(A_exponent) == -1023 && A_fraction == 53'd0) begin
                    res_sign <= B_sign;
                    res_exponent <= B_exponent;
                    res_fraction <= B_fraction;
                    next_state <= pack;
                end
                else if ($signed(B_exponent) == -1023 && B_fraction == 53'd0) begin
                    res_sign <= A_sign;
                    res_exponent <= A_exponent;
                    res_fraction <= A_fraction;
                    next_state <= pack;
                end
                // denormalized number case
                else if ($signed(A_exponent) == -1023 || $signed(B_exponent) == -1023) begin 
                    if ($signed(A_exponent) == -1023) begin
                        A_exponent <= -1022;
                        A_fraction[52] <= 1'b0;
                        next_state <= exponent_alignment;
                    end
                    if ($signed(B_exponent) == -1023) begin
                        B_exponent <= -1022;
                        B_fraction[52] <= 1'b0;
                        next_state <= exponent_alignment;
                    end
                end else begin
                    next_state <= exponent_alignment;
                end
            end
            exponent_alignment: begin
                if ($signed(A_exponent) == $signed(B_exponent)) begin
                    if (comparison == 2'b00) begin
                        next_state <= add;
                    end
                    else if (comparison == 2'b10) begin
                        if (B_out > B_mid) begin
                            B_fraction <= B_fraction + 1'b1;
                        end 
                        else if (B_out < B_mid) begin 
                            B_fraction <= B_fraction;
                        end
                        else if (B_out == B_mid) begin
                            if (B_fraction[0] == 1) begin
                                B_fraction <= B_fraction + 1'b1;
                            end else begin
                                B_fraction <= B_fraction;
                            end
                        end
                        next_state <= add;
                    end
                    else if (comparison == 2'b01) begin
                        if (A_out > A_mid) begin
                            A_fraction <= A_fraction + 1'b1;
                        end 
                        else if (A_out < A_mid) begin 
                            A_fraction <= A_fraction;
                        end
                        else if (A_out == A_mid) begin
                            if (A_fraction[0] == 1) begin
                                A_fraction <= A_fraction + 1'b1;
                            end else begin
                                A_fraction <= A_fraction;
                            end
                        end
                        next_state <= add;
                    end
                end
                else if ($signed(A_exponent) > $signed(B_exponent)) begin
                    comparison <= 2'b10;
                    B_exponent <= B_exponent + 1'b1;
                    B_fraction <= {1'b0, B_fraction[52:1]};
                    B_out[mov_locate] <= B_fraction[0];
                    B_mid <= {B_mid[51:0], B_mid};
                    mov_locate <= mov_locate + 1'b1;
                    if (B_fraction == 53'b0) begin
                        res_sign <= A_sign;
                        res_exponent <= A_exponent;
                        res_fraction <= A_fraction;
                        next_state <= pack;
                    end
                    else begin 
                        next_state <= exponent_alignment;
                    end
                end
                else if ($signed(A_exponent) < $signed(B_exponent)) begin
                    comparison <= 2'b01;
                    A_exponent <= A_exponent + 1'b1;
                    A_fraction <= {1'b0, A_fraction[52:1]};
                    A_out[mov_locate] <= A_fraction[0];
                    A_mid <= {A_mid[51:0], A_mid};
                    mov_locate <= mov_locate + 1'b1;
                    if (A_fraction == 53'b0) begin
                        res_sign <= B_sign;
                        res_exponent <= B_exponent;
                        res_fraction <= B_fraction;
                        next_state <= pack;
                    end
                    else begin 
                        next_state <= exponent_alignment;
                    end
                end
            end
            add: begin
                if (A_sign == B_sign) begin
                    res_sign <= A_sign;
                    res_exponent <= A_exponent;
                    res_fraction <= A_fraction + B_fraction;
                    next_state <= normalize;
                end else begin
                    if (A_fraction > B_fraction) begin
                        res_sign <= A_sign;
                        res_exponent <= A_exponent;
                        res_fraction = A_fraction - B_fraction;
                        next_state <= normalize;
                    end else if (A_fraction < B_fraction) begin
                        res_sign <= B_sign;
                        res_exponent <= B_exponent;
                        res_fraction = B_fraction - A_fraction;
                        next_state <= normalize;
                    end else begin
                        res_sign <= 1'b0;
                        res_exponent <= 11'd0;
                        res_fraction <= 52'd0;
                        next_state <= pack;
                    end
                end
            end
            normalize: begin
                if (res_fraction[53]) begin 
                    res_exponent <= res_exponent + 1;
                    if (res_fraction[1:0] == 2'b11) begin
                        res_fraction <= {1'b0, res_fraction[53:1] + 1};
                    end else begin
                        res_fraction <= {1'b0, res_fraction[53:1]};
                    end
                    next_state <= overflow;
                end else begin
                    if (res_fraction[52] == 1'b0 && $signed(res_exponent) > -1022) begin
                        res_exponent <= res_exponent - 1;
                        res_fraction <= {res_fraction[51:0], 1'b0};
                        next_state <= normalize;
                    end else begin
                        next_state <= overflow;
                    end
                end
            end
            overflow: begin
                // denormalized number case
                if ($signed(res_exponent) == -1022 && res_fraction[52] == 1'b0) begin
                    res_sign <= res_sign;
                    res_exponent <= -11'd1023;
                    res_fraction <= res_fraction;
                end else if (res_exponent == 11'b100_0000_0000) begin
                    res_sign <= res_sign;
                    res_exponent <= 11'h3ff;
                    res_fraction <= 52'b1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111;
                end
                next_state <= pack;
            end
            pack: begin
                if ($unsigned(res_exponent) == 2047) begin
                    res[63] <= res_sign;
                    res[62:52] <= res_exponent;
                    res[51:0] <= res_fraction[51:0];
                end else if ($unsigned(res_exponent) == 0 && res_fraction == 53'd0) begin
                    res[63] <= res_sign;
                    res[62:52] <= 11'd0;
                    res[51:0] <= 52'd0;
                end else begin
                    res[63] <= res_sign;
                    res[62:52] <= res_exponent + 11'd1023;
                    res[51:0] <= res_fraction[51:0];
                end
                finish <= 1'b1;
                running <= 1'b0;
            end
        endcase
    end
end

endmodule
