`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/14 15:34:07
// Design Name: 
// Module Name: datapath
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

module datapath(
    input clk,
    input rst,
    input [31:0] inst_field,
    input [31:0] data_in,
    input [3:0] ALU_Control, 
    input [2:0] ImmSel, // Immediate type
    input [2:0] MemtoReg, // Memory to register signal, 000 for ALU result, 001 for data_in, 010 for PC + 4, 011 for Imm_out(lui), 100 for PC + Imm_out(auipc), 101 for csr_src
    input [3:0] Branch, // Branch signal
    input [1:0] Jump, // Jump signal, 10 for jal, 11 for jalr, 0x for others
    input ALUSrc_A, // the source of the first operand of ALU, 0 for register file, 1 for PC
    input ALUSrc_B, // the source of the second operand of ALU, 0 for register file, 1 for immediate
    input csr_src, // the source of the data to be written to CSR, 0 fir rs1_data, 1 for Imm(zero-extended)
    input en, // Write enable signal
    input PC_csr, // the source of the address of the next instruction, 1 for PC_trap, 0 for others
    input [31:0] PC_trap, // the address of the next instruction when trap happens
    input [31:0] csr_rdata, // the data read from CSR
    input RegWrite, // Register write signal
    input signal, // ALU control signal for load/store instructions, 1 for unsigned, 0 for signed
    input [1:0] width, // the width of the data to be loaded/stored, 00 for 8-bit, 01 for 16-bit, 10 for 32-bit
    
    `RegFile_Regs_Outputs
    output     [31:0] csr_wdata,
    output reg [3:0]  RAM_mask,
    output reg [31:0] Data_out,
    output reg [31:0] ALU_out,
    output reg [31:0] PC_out
);

reg [31:0] Wt_data;
wire [31:0] A, B;
wire [31:0] ALUSrc_A_Reg;
wire [31:0] ALUSrc_B_Reg;
wire [31:0] ALUSrc_B_Imm;
wire [31:0] Imm_out;
wire [31:0] ALU_res;
wire [31:0] PC_in;
wire [31:0] PC_res;
wire [4:0] rd, rs1, rs2;
wire Branch_temp;
wire zero;

assign rd = inst_field[11:7];
assign rs1 = inst_field[19:15];
assign rs2 = inst_field[24:20];

// decide the source of the second operand is register or immediate
assign ALUSrc_B_Imm = Imm_out;
assign A = ALUSrc_A ? PC_res : ALUSrc_A_Reg;
assign B = ALUSrc_B ? ALUSrc_B_Imm : ALUSrc_B_Reg;
assign csr_wdata = csr_src ? {27'b0, rs1} : ALUSrc_A_Reg;

// decide the address of the next instruction
assign Branch_temp = (Branch[0] & zero) | (Branch[1] & ~zero) | (Branch[2] & ALU_res[0]) | (Branch[3] & ~ALU_res[0]);

assign PC_in = PC_csr ? PC_trap : (Jump[1] ? (Jump[0] ? ALU_res : Imm_out + PC_res) : (Branch_temp ? (Imm_out + PC_res) : (PC_res + 4)));

ImmGen U1(.inst_field(inst_field), .ImmSel(ImmSel), .Imm_out(Imm_out));

Regs U2(.clk(clk), .rst(rst), .Rs1_addr(rs1), .Rs2_addr(rs2), .Wt_addr(rd), .Wt_data(Wt_data), .RegWrite(RegWrite & en), 

`RegFile_Regs_Arguments
.Rs1_data(ALUSrc_A_Reg), .Rs2_data(ALUSrc_B_Reg)
);

ALU U3(.A(A), .B(B), .ALU_operation(ALU_Control), .res(ALU_res), .zero(zero));

PC U4(.clk(clk), .rst(rst), .PC_in(PC_in), .CE(1'b1), .PC_out(PC_res));

always @ (*) begin
    ALU_out = ALU_res;
    PC_out = PC_res;
    // store instruction
    if ({signal, width} == `FUNC_BYTE) begin
        case(ALU_res[1:0])
            `MOD_ZERO: begin
                Data_out = {24'b0, ALUSrc_B_Reg[7:0]};
                RAM_mask = 4'b0001;
            end
            `MOD_ONE: begin 
                Data_out = {16'b0, ALUSrc_B_Reg[7:0], 8'b0};
                RAM_mask = 4'b0010;
            end
            `MOD_TWO: begin 
                Data_out = {8'b0, ALUSrc_B_Reg[7:0], 16'b0};
                RAM_mask = 4'b0100;
            end
            `MOD_THREE: begin 
                Data_out = {ALUSrc_B_Reg[7:0], 24'b0};
                RAM_mask = 4'b1000;
            end
            default: begin 
                Data_out = 32'b0;
                RAM_mask = 4'b0000;
            end 
        endcase
    end else if ({signal, width} == `FUNC_HALF) begin
        case(ALU_res[1:0])
            `MOD_ZERO: begin 
                Data_out = {16'b0, ALUSrc_B_Reg[15:0]};
                RAM_mask = 4'b0011;
            end
            `MOD_ONE: begin
                Data_out = {8'b0, ALUSrc_B_Reg[15:0], 8'b0};
                RAM_mask = 4'b0110;
            end
            `MOD_TWO: begin 
                Data_out = {ALUSrc_B_Reg[15:0], 16'b0};
                RAM_mask = 4'b1100;
            end
            default: begin 
                Data_out = 32'b0;
                RAM_mask = 4'b0000;
            end
    endcase
    end else if ({signal, width} == `FUNC_WORD) begin
        Data_out = ALUSrc_B_Reg;
        RAM_mask = 4'b1111;
    end
    // decide the data to be written to register file
    // load instruction
    case (MemtoReg)
        `MEM2REG_ALU: Wt_data = ALU_res;
        `MEM2REG_MEM: begin 
            case({signal, width, ALU_res[1:0]})
                // fun3 of lb is 000
                {`FUNC_BYTE, `MOD_ZERO}: Wt_data = {{24{data_in[7]}}, data_in[7:0]};
                {`FUNC_BYTE, `MOD_ONE}: Wt_data = {{24{data_in[15]}}, data_in[15:8]};
                {`FUNC_BYTE, `MOD_TWO}: Wt_data = {{24{data_in[23]}}, data_in[23:16]};
                {`FUNC_BYTE, `MOD_THREE}: Wt_data = {{24{data_in[31]}}, data_in[31:24]}; 
                // fun3 of lh is 001
                {`FUNC_HALF, `MOD_ZERO}: Wt_data = {{16{data_in[15]}}, data_in[15:0]};
                {`FUNC_HALF, `MOD_ONE}: Wt_data = {{16{data_in[23]}}, data_in[23:8]};
                {`FUNC_HALF, `MOD_TWO}: Wt_data = {{16{data_in[31]}}, data_in[31:16]};
                // fun3 of lw is 010
                {`FUNC_WORD, `MOD_ZERO}: Wt_data = data_in;
                // fun3 of lbu is 100
                {`FUNC_BYTE_UNSIGNED, `MOD_ZERO}: Wt_data = {{24{1'b0}}, data_in[7:0]};
                {`FUNC_BYTE_UNSIGNED, `MOD_ONE}: Wt_data = {{24{1'b0}}, data_in[15:8]};
                {`FUNC_BYTE_UNSIGNED, `MOD_TWO}: Wt_data = {{24{1'b0}}, data_in[23:16]};
                {`FUNC_BYTE_UNSIGNED, `MOD_THREE}: Wt_data = {{24{1'b0}}, data_in[31:24]};
                // fun3 of lhu is 101
                {`FUNC_HALF_UNSIGNED, `MOD_ZERO}: Wt_data = {{16{1'b0}}, data_in[15:0]};
                {`FUNC_HALF_UNSIGNED, `MOD_ONE}: Wt_data = {{16{1'b0}}, data_in[23:8]};
                {`FUNC_HALF_UNSIGNED, `MOD_TWO}: Wt_data = {{16{1'b0}}, data_in[31:16]};
                default: Wt_data = 32'b0;
            endcase
        end
        `MEM2REG_PC_PLUS: Wt_data = PC_res + 4;
        // lui
        `MEM2REG_LUI: Wt_data = Imm_out;
        // auipc
        `MEM2REG_AUIPC: Wt_data = PC_res + Imm_out;
        // csr
        `MEM2REG_CSR: Wt_data = csr_rdata;
        default: Wt_data = 32'b0;
    endcase
end
endmodule
