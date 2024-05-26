`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/22 13:38:02
// Design Name: 
// Module Name: SCPU
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

module SCPU(
    input clk,
    input rst,
    input MIO_ready,
    input [31:0] inst_in,
    input [31:0] Data_in,

    `RegFile_Regs_Outputs
    `STATE_Regs_Outputs
    output reg [3:0] RAM_mask,
    output reg [31:0] Wt_data,
    output reg [31:0] Data_out,
    output reg [31:0] Addr_out,
    output reg        CPU_MIO,
    output reg        MemRW,
    output reg [31:0] PC_out
    );
    
// IF stage
wire [31:0] PC_next;
reg  [31:0] PC;

// IF/ID pipeline register
// reg  [31:0] IF_ID_PC;
// reg  [31:0] IF_ID_inst_field;

always @(*) begin
    PC_out = PC;
end


always @(posedge clk or posedge rst) begin
    if(rst) begin
        PC <= 32'b0;
        IF_ID_PC <= 32'b0;
        IF_ID_inst_field <= 32'b0;
    end else begin
        PC <= PC_next;
        IF_ID_PC <= PC;
        IF_ID_inst_field <= inst_in;
    end
end

// ID stage
wire [31:0] rs1_data, rs2_data, imm_data;
wire [3:0]  ALU_Control;
wire [3:0]  Branch;
wire [2:0]  MemtoReg, ImmSel;
wire [1:0]  Jump;
wire [1:0]  width;
wire        ALUSrc_A, ALUSrc_B, RegWrite, MemRW_temp, CPU_MIO_temp, sign;

// ID/EX pipeline register
// reg  [31:0] ID_EX_PC;
// reg  [31:0] ID_EX_rs1_data, ID_EX_rs2_data, ID_EX_imm_data;
// reg  [4:0]  ID_EX_Wt_addr;
// reg  [3:0]  ID_EX_ALU_Control;
// reg  [3:0]  ID_EX_Branch;
// reg  [2:0]  ID_EX_MemtoReg;
// reg  [1:0]  ID_EX_Jump;
// reg  [1:0]  ID_EX_width;
// reg         ID_EX_ALUSrc_A, ID_EX_ALUSrc_B, ID_EX_RegWrite, ID_EX_MemRW, ID_EX_sign;

Regs U1(
    .clk(clk),
    .rst(rst),
    .RegWrite(MEM_WB_RegWrite),
    .Rs1_addr(IF_ID_inst_field[19:15]),
    .Rs2_addr(IF_ID_inst_field[24:20]),
    .Wt_addr(MEM_WB_Wt_addr),
    .Wt_data(Wt_data),

    `RegFile_Regs_Arguments
    .Rs1_data(rs1_data),
    .Rs2_data(rs2_data)
);

SCPU_ctrl U2(
    .OPcode(IF_ID_inst_field[6:2]),
    .Fun3(IF_ID_inst_field[14:12]),
    .Fun7(IF_ID_inst_field[30]),
    .MIO_ready(MIO_ready),
    .ImmSel(ImmSel),
    .ALUSrc_A(ALUSrc_A),
    .ALUSrc_B(ALUSrc_B),
    .MemtoReg(MemtoReg),
    .Jump(Jump),
    .Branch(Branch),
    .RegWrite(RegWrite),
    .MemRW(MemRW_temp),
    .ALU_Control(ALU_Control),
    .CPU_MIO(CPU_MIO_temp),
    .sign(sign),
    .width(width)
);

ImmGen U3(
    .inst_field(IF_ID_inst_field),
    .ImmSel(ImmSel),
    .Imm_out(imm_data)
);

always @(*) begin 
    CPU_MIO = CPU_MIO_temp;
end

always @(posedge clk or posedge rst) begin
    if(rst) begin
        ID_EX_PC <= 32'b0;
        ID_EX_rs1_data <= 32'b0;
        ID_EX_rs2_data <= 32'b0;
        ID_EX_imm_data <= 32'b0;
        ID_EX_Wt_addr <= 5'b0;
        ID_EX_ALU_Control <= 4'b0;
        ID_EX_Branch <= 4'b0;
        ID_EX_MemtoReg <= 3'b0;
        ID_EX_Jump <= 2'b0;
        ID_EX_width <= 2'b0;
        ID_EX_ALUSrc_A <= 1'b0;
        ID_EX_ALUSrc_B <= 1'b0;
        ID_EX_RegWrite <= 1'b0;
        ID_EX_MemRW <= 1'b0;
        ID_EX_sign <= 1'b0;
    end else begin
        ID_EX_PC <= IF_ID_PC;
        ID_EX_rs1_data <= rs1_data;
        ID_EX_rs2_data <= rs2_data;
        ID_EX_imm_data <= imm_data;
        ID_EX_Wt_addr <= IF_ID_inst_field[11:7];
        ID_EX_ALU_Control <= ALU_Control;
        ID_EX_Branch <= Branch;
        ID_EX_MemtoReg <= MemtoReg;
        ID_EX_Jump <= Jump;
        ID_EX_width <= width;
        ID_EX_ALUSrc_A <= ALUSrc_A;
        ID_EX_ALUSrc_B <= ALUSrc_B;
        ID_EX_RegWrite <= RegWrite;
        ID_EX_MemRW <= MemRW_temp;
        ID_EX_sign <= sign;
    end
end

// EX stage
wire [31:0] ALU_A, ALU_B, ALU_res;
wire        ALU_zero;

// EX/MEM pipeline register
// reg  [31:0] EX_MEM_PC;
// reg  [31:0] EX_MEM_ALU_out;
// reg  [31:0] EX_MEM_rs2_data;
// reg  [31:0] EX_MEM_imm_data;
// reg  [4:0]  EX_MEM_Wt_addr;
// reg  [3:0]  EX_MEM_Branch;
// reg  [2:0]  EX_MEM_MemtoReg;
// reg  [1:0]  EX_MEM_Jump;
// reg  [1:0]  EX_MEM_width;
// reg         EX_MEM_RegWrite, EX_MEM_MemRW, EX_MEM_sign, EX_MEM_ALU_zero;

assign ALU_A = ID_EX_ALUSrc_A ? ID_EX_PC : ID_EX_rs1_data;
assign ALU_B = ID_EX_ALUSrc_B ? ID_EX_imm_data : ID_EX_rs2_data;

ALU U4(
    .A(ALU_A),
    .B(ALU_B),
    .ALU_operation(ID_EX_ALU_Control),
    .res(ALU_res),
    .zero(ALU_zero)
);

always @(posedge clk or posedge rst) begin
    if(rst) begin
        EX_MEM_PC <= 32'b0;
        EX_MEM_ALU_out <= 32'b0;
        EX_MEM_imm_data <= 32'b0;
        EX_MEM_Wt_addr <= 5'b0;
        EX_MEM_rs2_data <= 4'b0;
        EX_MEM_Branch <= 4'b0;
        EX_MEM_MemtoReg <= 3'b0;
        EX_MEM_Jump <= 2'b0;
        EX_MEM_width <= 2'b0;
        EX_MEM_RegWrite <= 1'b0;
        EX_MEM_MemRW <= 1'b0;
        EX_MEM_sign <= 1'b0;
        EX_MEM_ALU_zero <= 1'b0;
    end else begin
        EX_MEM_PC <= ID_EX_PC;
        EX_MEM_ALU_out <= ALU_res;
        EX_MEM_rs2_data <= ID_EX_rs2_data;
        EX_MEM_imm_data <= ID_EX_imm_data;
        EX_MEM_Wt_addr <= ID_EX_Wt_addr;
        EX_MEM_Branch <= ID_EX_Branch;
        EX_MEM_MemtoReg <= ID_EX_MemtoReg;
        EX_MEM_Jump <= ID_EX_Jump;
        EX_MEM_width <= ID_EX_width;
        EX_MEM_RegWrite <= ID_EX_RegWrite;
        EX_MEM_MemRW <= ID_EX_MemRW;
        EX_MEM_sign <= ID_EX_sign;
        EX_MEM_ALU_zero <= ALU_zero;
    end
end

// MEM stage
wire Branch_temp;

// MEM/WB pipeline register
// reg  [31:0] MEM_WB_PC, MEM_WB_ALU_out, MEM_WB_imm_data;
// reg  [31:0] MEM_WB_Data_in;
// reg  [4:0]  MEM_WB_Wt_addr;
// reg  [3:0]  MEM_WB_MemtoReg;
// reg  [1:0]  MEM_WB_width;
// reg         MEM_WB_sign;
// reg         MEM_WB_RegWrite;

assign Branch_temp = (EX_MEM_Branch[0] & EX_MEM_ALU_zero) | (EX_MEM_Branch[1] & ~EX_MEM_ALU_zero) | (EX_MEM_Branch[2] & EX_MEM_ALU_out[0]) | (EX_MEM_Branch[3] & ~EX_MEM_ALU_out[0]);
assign PC_next = EX_MEM_Jump[1] ? (EX_MEM_Jump[0] ? EX_MEM_ALU_out : EX_MEM_PC + EX_MEM_imm_data) : (Branch_temp ? EX_MEM_PC + EX_MEM_imm_data : PC + 4);

always @(*) begin
    Addr_out = EX_MEM_ALU_out;
    MemRW = EX_MEM_MemRW;
    // store instruction
    if({EX_MEM_sign, EX_MEM_width} == `FUNC_BYTE) begin
        case(EX_MEM_ALU_out[1:0])
            `MOD_ZERO: begin
                Data_out = {24'b0, EX_MEM_rs2_data[7:0]};
                RAM_mask = 4'b0001;
            end
            `MOD_ONE: begin
                Data_out = {16'b0, EX_MEM_rs2_data[7:0], 8'b0};
                RAM_mask = 4'b0010;
            end
            `MOD_TWO: begin
                Data_out = {8'b0, EX_MEM_rs2_data[7:0], 16'b0};
                RAM_mask = 4'b0100;
            end
            `MOD_THREE: begin
                Data_out = {EX_MEM_rs2_data[7:0], 24'b0};
                RAM_mask = 4'b1000;
            end
            default: begin
                Data_out = 32'b0;
                RAM_mask = 4'b0000;
            end
        endcase
    end else if ({EX_MEM_sign, EX_MEM_width} == `FUNC_HALF) begin
        case(EX_MEM_ALU_out[1:0])
            `MOD_ZERO: begin
                Data_out = {16'b0, EX_MEM_rs2_data[15:0]};
                RAM_mask = 4'b0011;
            end
            `MOD_ONE: begin
                Data_out = {8'b0, EX_MEM_rs2_data[15:0], 8'b0};
                RAM_mask = 4'b0110;
            end
            `MOD_TWO: begin
                Data_out = {EX_MEM_rs2_data[15:0], 16'b0};
                RAM_mask = 4'b1100;
            end
            default: begin
                Data_out = 32'b0;
                RAM_mask = 4'b0000;
            end
        endcase
    end else if ({EX_MEM_sign, EX_MEM_width} == `FUNC_WORD) begin
        Data_out = EX_MEM_rs2_data;
        RAM_mask = 4'b1111;
    end
end

always @(posedge clk or posedge rst) begin
    if(rst) begin
        MEM_WB_PC <= 32'b0;
        MEM_WB_ALU_out <= 32'b0;
        MEM_WB_imm_data <= 32'b0;
        MEM_WB_Data_in <= 32'b0;
        MEM_WB_Wt_addr <= 5'b0;
        MEM_WB_MemtoReg <= 3'b0;
        MEM_WB_width <= 2'b0;
        MEM_WB_sign <= 1'b0;
        MEM_WB_RegWrite <= 1'b0;
    end else begin
        MEM_WB_PC <= EX_MEM_PC;
        MEM_WB_ALU_out <= EX_MEM_ALU_out;
        MEM_WB_imm_data <= EX_MEM_imm_data;
        MEM_WB_Data_in <= Data_in;
        MEM_WB_Wt_addr <= EX_MEM_Wt_addr;
        MEM_WB_MemtoReg <= EX_MEM_MemtoReg;
        MEM_WB_width <= EX_MEM_width;
        MEM_WB_sign <= EX_MEM_sign;
        MEM_WB_RegWrite <= EX_MEM_RegWrite;
    end
end

// WB stage
// reg [31:0] Wt_data;

always @(*) begin
    case(MEM_WB_MemtoReg) 
        `MEM2REG_ALU: Wt_data = MEM_WB_ALU_out;
        `MEM2REG_MEM: begin
            // load instruction
            case({MEM_WB_sign, MEM_WB_width, MEM_WB_ALU_out[1:0]})
                // fun3 of lb is 000
                {`FUNC_BYTE, `MOD_ZERO}: Wt_data = {{24{MEM_WB_Data_in[7]}}, MEM_WB_Data_in[7:0]};
                {`FUNC_BYTE, `MOD_ONE}: Wt_data = {{24{MEM_WB_Data_in[15]}}, MEM_WB_Data_in[15:8]};
                {`FUNC_BYTE, `MOD_TWO}: Wt_data = {{24{MEM_WB_Data_in[23]}}, MEM_WB_Data_in[23:16]};
                {`FUNC_BYTE, `MOD_THREE}: Wt_data = {{24{MEM_WB_Data_in[31]}}, MEM_WB_Data_in[31:24]}; 
                // fun3 of lh is 001
                {`FUNC_HALF, `MOD_ZERO}: Wt_data = {{16{MEM_WB_Data_in[15]}}, MEM_WB_Data_in[15:0]};
                {`FUNC_HALF, `MOD_ONE}: Wt_data = {{16{MEM_WB_Data_in[23]}}, MEM_WB_Data_in[23:8]};
                {`FUNC_HALF, `MOD_TWO}: Wt_data = {{16{MEM_WB_Data_in[31]}}, MEM_WB_Data_in[31:16]};
                // fun3 of lw is 010
                {`FUNC_WORD, `MOD_ZERO}: Wt_data = MEM_WB_Data_in;
                // fun3 of lbu is 100
                {`FUNC_BYTE_UNSIGNED, `MOD_ZERO}: Wt_data = {{24{1'b0}}, MEM_WB_Data_in[7:0]};
                {`FUNC_BYTE_UNSIGNED, `MOD_ONE}: Wt_data = {{24{1'b0}}, MEM_WB_Data_in[15:8]};
                {`FUNC_BYTE_UNSIGNED, `MOD_TWO}: Wt_data = {{24{1'b0}}, MEM_WB_Data_in[23:16]};
                {`FUNC_BYTE_UNSIGNED, `MOD_THREE}: Wt_data = {{24{1'b0}}, MEM_WB_Data_in[31:24]};
                // fun3 of lhu is 101
                {`FUNC_HALF_UNSIGNED, `MOD_ZERO}: Wt_data = {{16{1'b0}}, MEM_WB_Data_in[15:0]};
                {`FUNC_HALF_UNSIGNED, `MOD_ONE}: Wt_data = {{16{1'b0}}, MEM_WB_Data_in[23:8]};
                {`FUNC_HALF_UNSIGNED, `MOD_TWO}: Wt_data = {{16{1'b0}}, MEM_WB_Data_in[31:16]};
                default: Wt_data = 32'b0;
            endcase
        end
        `MEM2REG_PC_PLUS: Wt_data = MEM_WB_PC + 4;
        // lui
        `MEM2REG_LUI: Wt_data = MEM_WB_imm_data;
        // auipc
        `MEM2REG_AUIPC: Wt_data = MEM_WB_ALU_out;
        default: Wt_data = 32'b0;
    endcase
end


endmodule
