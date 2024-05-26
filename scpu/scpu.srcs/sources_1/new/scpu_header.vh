/* WHAT'S THIS HEADERFILE FOR? */
/*
 * Reffered to code written by PanZiyue, TA of 2020_CO 
 * Macro for opcode/func3 for RV32I
 * declaration, inputs/outputs, assignment for debug signals(RegFile)
*/

/* ALU Operation(Using in Lab1) */
`define ALU_OP_WIDTH  4

`define ALU_OP_ADD      `ALU_OP_WIDTH'd0
`define ALU_OP_SUB      `ALU_OP_WIDTH'd1
`define ALU_OP_SLL      `ALU_OP_WIDTH'd2
`define ALU_OP_SLT      `ALU_OP_WIDTH'd3
`define ALU_OP_SLTU     `ALU_OP_WIDTH'd4
`define ALU_OP_XOR      `ALU_OP_WIDTH'd5
`define ALU_OP_SRL      `ALU_OP_WIDTH'd6
`define ALU_OP_SRA      `ALU_OP_WIDTH'd7
`define ALU_OP_OR       `ALU_OP_WIDTH'd8
`define ALU_OP_AND      `ALU_OP_WIDTH'd9
`define ALU_OP_EMPTY    `ALU_OP_WIDTH'd10

/*-----------------------------------*/

/* Inst decoding(Using in Lab4/5) */
/* Opcode(5-bits) */
// R-Type
`define OPCODE_ALU      5'b01100
// I-Type
`define OPCODE_ALU_IMM  5'b00100
`define OPCODE_LOAD     5'b00000
`define OPCODE_JALR     5'b11001
`define OPCODE_ENV      5'b11100
// S-Type
`define OPCODE_STORE    5'b01000
// B-Type
`define OPCODE_BRANCH   5'b11000
// J-Type
`define OPCODE_JAL      5'b11011
// U-Type
`define OPCODE_LUI      5'b01101
`define OPCODE_AUIPC    5'b00101

/* Func3(3-bits) */
// R-Type & I-Type(ALU)
// For R-Type, SUB if inst[30] else ADD
`define FUNC_ADD        3'd0
// Shift Left (Logical)
`define FUNC_SL         3'd1
`define FUNC_SLT        3'd2
`define FUNC_SLTU       3'd3
`define FUNC_XOR        3'd4
// Shift Right Arith if inst[30] else Logical
`define FUNC_SR         3'd5
`define FUNC_OR         3'd6
`define FUNC_AND        3'd7

// I-Type(Load) & S-Type
`define FUNC_BYTE       3'd0
`define FUNC_HALF       3'd1
`define FUNC_WORD       3'd2
`define FUNC_BYTE_UNSIGNED 3'd4
`define FUNC_HALF_UNSIGNED 3'd5

// B-Type
`define FUNC_EQ         3'd0
`define FUNC_NE         3'd1
`define FUNC_LT         3'd4
`define FUNC_GE         3'd5
`define FUNC_LTU        3'd6
`define FUNC_GEU        3'd7
/*-----------------------------------*/

/* ImmSel signals */
// NOTE: You may add terms in Lab4-3 to implement more inst.
`define IMM_SEL_WIDTH 3

`define IMM_SEL_I   `IMM_SEL_WIDTH'd0
`define IMM_SEL_S   `IMM_SEL_WIDTH'd1
`define IMM_SEL_B   `IMM_SEL_WIDTH'd2
`define IMM_SEL_J   `IMM_SEL_WIDTH'd3
`define IMM_SEL_U   `IMM_SEL_WIDTH'd4
/*-----------------------------------*/

/* Mem2Reg signals */
// NOTE: You may add terms in Lab4-3 to implement more inst.
`define MEM2REG_WIDTH 3

`define MEM2REG_ALU         `MEM2REG_WIDTH'd0
`define MEM2REG_MEM         `MEM2REG_WIDTH'd1
`define MEM2REG_PC_PLUS     `MEM2REG_WIDTH'd2
`define MEM2REG_LUI         `MEM2REG_WIDTH'd3
`define MEM2REG_AUIPC       `MEM2REG_WIDTH'd4
/*-----------------------------------*/

/*AddressSel signals */
`define ADDR_SEL_WIDTH 2

`define MOD_ZERO   `ADDR_SEL_WIDTH'd0
`define MOD_ONE    `ADDR_SEL_WIDTH'd1
`define MOD_TWO    `ADDR_SEL_WIDTH'd2
`define MOD_THREE  `ADDR_SEL_WIDTH'd3
/*-----------------------------------*/

/*----------------------------*/
/******* generated code *******/
/*----------------------------*/

/* RegFiles Ports & debug signals */
/* NOTE:
 * AFTER you change "..." in macro YOUR_REGS to the name of your reg-array in module Regs, such as regs,
 * you need to *uncomment* the line "`define YOUR_REGS regs" below for using this set of macros
*/
`define YOUR_REGS temp
`ifdef YOUR_REGS

`define RegFile_Regs_Outputs \
    output [31:0] Reg00, \
    output [31:0] Reg01, \
    output [31:0] Reg02, \
    output [31:0] Reg03, \
    output [31:0] Reg04, \
    output [31:0] Reg05, \
    output [31:0] Reg06, \
    output [31:0] Reg07, \
    output [31:0] Reg08, \
    output [31:0] Reg09, \
    output [31:0] Reg10, \
    output [31:0] Reg11, \
    output [31:0] Reg12, \
    output [31:0] Reg13, \
    output [31:0] Reg14, \
    output [31:0] Reg15, \
    output [31:0] Reg16, \
    output [31:0] Reg17, \
    output [31:0] Reg18, \
    output [31:0] Reg19, \
    output [31:0] Reg20, \
    output [31:0] Reg21, \
    output [31:0] Reg22, \
    output [31:0] Reg23, \
    output [31:0] Reg24, \
    output [31:0] Reg25, \
    output [31:0] Reg26, \
    output [31:0] Reg27, \
    output [31:0] Reg28, \
    output [31:0] Reg29, \
    output [31:0] Reg30, \
    output [31:0] Reg31,
 
`define RegFile_Regs_Assignments \
    assign Reg00 = `YOUR_REGS[0]; \
    assign Reg01 = `YOUR_REGS[1]; \
    assign Reg02 = `YOUR_REGS[2]; \
    assign Reg03 = `YOUR_REGS[3]; \
    assign Reg04 = `YOUR_REGS[4]; \
    assign Reg05 = `YOUR_REGS[5]; \
    assign Reg06 = `YOUR_REGS[6]; \
    assign Reg07 = `YOUR_REGS[7]; \
    assign Reg08 = `YOUR_REGS[8]; \
    assign Reg09 = `YOUR_REGS[9]; \
    assign Reg10 = `YOUR_REGS[10]; \
    assign Reg11 = `YOUR_REGS[11]; \
    assign Reg12 = `YOUR_REGS[12]; \
    assign Reg13 = `YOUR_REGS[13]; \
    assign Reg14 = `YOUR_REGS[14]; \
    assign Reg15 = `YOUR_REGS[15]; \
    assign Reg16 = `YOUR_REGS[16]; \
    assign Reg17 = `YOUR_REGS[17]; \
    assign Reg18 = `YOUR_REGS[18]; \
    assign Reg19 = `YOUR_REGS[19]; \
    assign Reg20 = `YOUR_REGS[20]; \
    assign Reg21 = `YOUR_REGS[21]; \
    assign Reg22 = `YOUR_REGS[22]; \
    assign Reg23 = `YOUR_REGS[23]; \
    assign Reg24 = `YOUR_REGS[24]; \
    assign Reg25 = `YOUR_REGS[25]; \
    assign Reg26 = `YOUR_REGS[26]; \
    assign Reg27 = `YOUR_REGS[27]; \
    assign Reg28 = `YOUR_REGS[28]; \
    assign Reg29 = `YOUR_REGS[29]; \
    assign Reg30 = `YOUR_REGS[30]; \
    assign Reg31 = `YOUR_REGS[31];

`define RegFile_Regs_Arguments \
    .Reg00(Reg00), \
    .Reg01(Reg01), \
    .Reg02(Reg02), \
    .Reg03(Reg03), \
    .Reg04(Reg04), \
    .Reg05(Reg05), \
    .Reg06(Reg06), \
    .Reg07(Reg07), \
    .Reg08(Reg08), \
    .Reg09(Reg09), \
    .Reg10(Reg10), \
    .Reg11(Reg11), \
    .Reg12(Reg12), \
    .Reg13(Reg13), \
    .Reg14(Reg14), \
    .Reg15(Reg15), \
    .Reg16(Reg16), \
    .Reg17(Reg17), \
    .Reg18(Reg18), \
    .Reg19(Reg19), \
    .Reg20(Reg20), \
    .Reg21(Reg21), \
    .Reg22(Reg22), \
    .Reg23(Reg23), \
    .Reg24(Reg24), \
    .Reg25(Reg25), \
    .Reg26(Reg26), \
    .Reg27(Reg27), \
    .Reg28(Reg28), \
    .Reg29(Reg29), \
    .Reg30(Reg30), \
    .Reg31(Reg31),

`define RegFile_Regs_Declaration \
    wire [31:0] Reg00; \
    wire [31:0] Reg01; \
    wire [31:0] Reg02; \
    wire [31:0] Reg03; \
    wire [31:0] Reg04; \
    wire [31:0] Reg05; \
    wire [31:0] Reg06; \
    wire [31:0] Reg07; \
    wire [31:0] Reg08; \
    wire [31:0] Reg09; \
    wire [31:0] Reg10; \
    wire [31:0] Reg11; \
    wire [31:0] Reg12; \
    wire [31:0] Reg13; \
    wire [31:0] Reg14; \
    wire [31:0] Reg15; \
    wire [31:0] Reg16; \
    wire [31:0] Reg17; \
    wire [31:0] Reg18; \
    wire [31:0] Reg19; \
    wire [31:0] Reg20; \
    wire [31:0] Reg21; \
    wire [31:0] Reg22; \
    wire [31:0] Reg23; \
    wire [31:0] Reg24; \
    wire [31:0] Reg25; \
    wire [31:0] Reg26; \
    wire [31:0] Reg27; \
    wire [31:0] Reg28; \
    wire [31:0] Reg29; \
    wire [31:0] Reg30; \
    wire [31:0] Reg31;

`define URAT_RegFile_Inputs \
    input [31:0] Reg00, \
    input [31:0] Reg01, \
    input [31:0] Reg02, \
    input [31:0] Reg03, \
    input [31:0] Reg04, \
    input [31:0] Reg05, \
    input [31:0] Reg06, \
    input [31:0] Reg07, \
    input [31:0] Reg08, \
    input [31:0] Reg09, \
    input [31:0] Reg10, \
    input [31:0] Reg11, \
    input [31:0] Reg12, \
    input [31:0] Reg13, \
    input [31:0] Reg14, \
    input [31:0] Reg15, \
    input [31:0] Reg16, \
    input [31:0] Reg17, \
    input [31:0] Reg18, \
    input [31:0] Reg19, \
    input [31:0] Reg20, \
    input [31:0] Reg21, \
    input [31:0] Reg22, \
    input [31:0] Reg23, \
    input [31:0] Reg24, \
    input [31:0] Reg25, \
    input [31:0] Reg26, \
    input [31:0] Reg27, \
    input [31:0] Reg28, \
    input [31:0] Reg29, \
    input [31:0] Reg30, \
    input [31:0] Reg31,

`define URAT_RegFile_Arguments \
    .x0 (Reg00), \
    .ra (Reg01), \
    .sp (Reg02), \
    .gp (Reg03), \
    .tp (Reg04), \
    .t0 (Reg05), \
    .t1 (Reg06), \
    .t2 (Reg07), \
    .s0 (Reg08), \
    .s1 (Reg09), \
    .a0 (Reg10), \
    .a1 (Reg11), \
    .a2 (Reg12), \
    .a3 (Reg13), \
    .a4 (Reg14), \
    .a5 (Reg15), \
    .a6 (Reg16), \
    .a7 (Reg17), \
    .s2 (Reg18), \
    .s3 (Reg19), \
    .s4 (Reg20), \
    .s5 (Reg21), \
    .s6 (Reg22), \
    .s7 (Reg23), \
    .s8 (Reg24), \
    .s9 (Reg25), \
    .s10(Reg26), \
    .s11(Reg27), \
    .t3 (Reg28), \
    .t4 (Reg29), \
    .t5 (Reg30), \
    .t6 (Reg31),

`endif // YOUR_REGS

`define URAT_Debug_Signals_Inputs \
    input [31:0] pc, \
    input [31:0] inst, \
    input [4:0] rs1, \
    input [31:0] rs1_val, \
    input [4:0] rs2, \
    input [31:0] rs2_val, \
    input [4:0] rd, \
    input [31:0] reg_i_data, \
    input reg_wen, \
    input is_imm, \
    input is_auipc, \
    input is_lui, \
    input [31:0] imm, \
    input [31:0] a_val, \
    input [31:0] b_val, \
    input [3:0] alu_ctrl, \
    input [2:0] cmp_ctrl, \
    input [31:0] alu_res, \
    input cmp_res, \
    input is_branch, \
    input is_jal, \
    input is_jalr, \
    input do_branch, \
    input [31:0] pc_branch, \
    input mem_wen, \
    input mem_ren, \
    input [31:0] dmem_o_data, \
    input [31:0] dmem_i_data, \
    input [31:0] dmem_addr,

`define URAT_Debug_Signals_Arguments \
    .pc_if(PC_out), \
    .pc_id(IF_ID_PC), \
    .inst_id(IF_ID_inst_field), \
    .pc_ex(ID_EX_PC), \
    .rs1_val(ID_EX_rs1_data), \
    .rs2_val(ID_EX_rs2_data), \
    .imm(ID_EX_imm_data), \
    .mem_wen_ex(ID_EX_MemRW), \
    .mem_ren_ex(~ID_EX_MemRW), \
    .is_branch(ID_EX_Branch[3] | ID_EX_Branch[2] | ID_EX_Branch[1] | ID_EX_Branch[0]), \
    .is_jal_ex(ID_EX_Jump[1] & ~ID_EX_Jump[0]), \
    .is_jalr_ex(ID_EX_Jump[1] & ID_EX_Jump[0]), \
    .reg_wen_ex(ID_EX_RegWrite), \
    .pc_mem(EX_MEM_PC), \
    .rd_mem(EX_MEM_Wt_addr), \
    .reg_wen_mem(EX_MEM_RegWrite), \
    .mem_w_data(Data_out), \
    .mem_wen_mem(EX_MEM_MemRW), \
    .mem_ren_mem(~EX_MEM_MemRW), \
    .is_jal_mem(EX_MEM_Jump[1] & ~EX_MEM_Jump[0]), \
    .is_jalr_mem(EX_MEM_Jump[1] & EX_MEM_Jump[0]), \
    .pc_wb(MEM_WB_PC), \
    .rd_wb(MEM_WB_Wt_addr), \
    .reg_wen_wb(MEM_WB_RegWrite), \
    .reg_w_data(Wt_data), \

`define URAT_Debug_Signals_Outputs \
    output [31:0] pc, \
    output [31:0] inst, \
    output [4:0] rs1, \
    output [31:0] rs1_val, \
    output [4:0] rs2, \
    output [31:0] rs2_val, \
    output [4:0] rd, \
    output [31:0] reg_i_data, \
    output reg_wen, \
    output is_imm, \
    output is_auipc, \
    output is_lui, \
    output [31:0] imm, \
    output [31:0] a_val, \
    output [31:0] b_val, \
    output [3:0] alu_ctrl, \
    output [2:0] cmp_ctrl, \
    output [31:0] alu_res, \
    output cmp_res, \
    output is_branch, \
    output is_jal, \
    output is_jalr, \
    output do_branch, \
    output [31:0] pc_branch, \
    output mem_wen, \
    output mem_ren, \
    output [31:0] dmem_o_data, \
    output [31:0] dmem_i_data, \
    output [31:0] dmem_addr,

`define STATE_Regs_Outputs \
    output reg [31:0] IF_ID_PC, \
    output reg [31:0] IF_ID_inst_field, \
    output reg [31:0] ID_EX_PC, \
    output reg [31:0] ID_EX_rs1_data, \
    output reg [31:0] ID_EX_rs2_data, \
    output reg [31:0] ID_EX_imm_data, \
    output reg  [4:0]  ID_EX_Wt_addr, \
    output reg  [3:0]  ID_EX_ALU_Control, \
    output reg  [3:0]  ID_EX_Branch, \
    output reg  [2:0]  ID_EX_MemtoReg, \
    output reg  [1:0]  ID_EX_Jump, \
    output reg  [1:0]  ID_EX_width, \
    output reg         ID_EX_ALUSrc_A, \
    output reg         ID_EX_ALUSrc_B, \
    output reg         ID_EX_RegWrite, \
    output reg         ID_EX_MemRW, \
    output reg         ID_EX_sign, \
    output reg  [31:0] EX_MEM_PC, \
    output reg  [31:0] EX_MEM_ALU_out, \
    output reg  [31:0] EX_MEM_rs2_data, \
    output reg  [31:0] EX_MEM_imm_data, \
    output reg  [4:0]  EX_MEM_Wt_addr, \
    output reg  [3:0]  EX_MEM_Branch, \
    output reg  [2:0]  EX_MEM_MemtoReg, \
    output reg  [1:0]  EX_MEM_Jump, \
    output reg  [1:0]  EX_MEM_width, \
    output reg         EX_MEM_RegWrite, \
    output reg         EX_MEM_MemRW, \
    output reg         EX_MEM_sign, \
    output reg         EX_MEM_ALU_zero, \
    output reg  [31:0] MEM_WB_PC, \
    output reg  [31:0] MEM_WB_ALU_out, \
    output reg  [31:0] MEM_WB_imm_data, \
    output reg  [31:0] MEM_WB_Data_in, \
    output reg  [4:0]  MEM_WB_Wt_addr, \
    output reg  [3:0]  MEM_WB_MemtoReg, \
    output reg  [1:0]  MEM_WB_width, \
    output reg         MEM_WB_sign, \
    output reg         MEM_WB_RegWrite, \

`define STATE_Regs_Declaration \
    wire [31:0] IF_ID_PC; \
    wire [31:0] IF_ID_inst_field; \
    wire [31:0] ID_EX_PC; \
    wire [31:0] ID_EX_rs1_data; \
    wire [31:0] ID_EX_rs2_data; \
    wire [31:0] ID_EX_imm_data; \
    wire  [4:0]  ID_EX_Wt_addr; \
    wire  [3:0]  ID_EX_ALU_Control; \
    wire  [3:0]  ID_EX_Branch; \
    wire  [2:0]  ID_EX_MemtoReg; \
    wire  [1:0]  ID_EX_Jump; \
    wire  [1:0]  ID_EX_width; \
    wire         ID_EX_ALUSrc_A; \
    wire         ID_EX_ALUSrc_B; \
    wire         ID_EX_RegWrite; \
    wire         ID_EX_MemRW; \
    wire         ID_EX_sign; \
    wire  [31:0] EX_MEM_PC; \
    wire  [31:0] EX_MEM_ALU_out; \
    wire  [31:0] EX_MEM_rs2_data; \
    wire  [31:0] EX_MEM_imm_data; \
    wire  [4:0]  EX_MEM_Wt_addr; \
    wire  [3:0]  EX_MEM_Branch; \
    wire  [2:0]  EX_MEM_MemtoReg; \
    wire  [1:0]  EX_MEM_Jump; \
    wire  [1:0]  EX_MEM_width; \
    wire         EX_MEM_RegWrite; \
    wire         EX_MEM_MemRW; \
    wire         EX_MEM_sign; \
    wire         EX_MEM_ALU_zero; \
    wire  [31:0] MEM_WB_PC; \
    wire  [31:0] MEM_WB_ALU_out; \
    wire  [31:0] MEM_WB_imm_data; \
    wire  [31:0] MEM_WB_Data_in; \
    wire  [4:0]  MEM_WB_Wt_addr; \
    wire  [3:0]  MEM_WB_MemtoReg; \
    wire  [1:0]  MEM_WB_width; \
    wire         MEM_WB_sign; \
    wire         MEM_WB_RegWrite; \

`define STATE_Regs_Arguments \
    .IF_ID_PC(IF_ID_PC), \
    .IF_ID_inst_field(IF_ID_inst_field), \
    .ID_EX_PC(ID_EX_PC), \
    .ID_EX_rs1_data(ID_EX_rs1_data), \
    .ID_EX_rs2_data(ID_EX_rs2_data), \
    .ID_EX_imm_data(ID_EX_imm_data), \
    .ID_EX_Wt_addr(ID_EX_Wt_addr), \
    .ID_EX_ALU_Control(ID_EX_ALU_Control), \
    .ID_EX_Branch(ID_EX_Branch), \
    .ID_EX_MemtoReg(ID_EX_MemtoReg), \
    .ID_EX_Jump(ID_EX_Jump), \
    .ID_EX_width(ID_EX_width), \
    .ID_EX_ALUSrc_A(ID_EX_ALUSrc_A), \
    .ID_EX_ALUSrc_B(ID_EX_ALUSrc_B), \
    .ID_EX_RegWrite(ID_EX_RegWrite), \
    .ID_EX_MemRW(ID_EX_MemRW), \
    .ID_EX_sign(ID_EX_sign), \
    .EX_MEM_PC(EX_MEM_PC), \
    .EX_MEM_ALU_out(EX_MEM_ALU_out), \
    .EX_MEM_rs2_data(EX_MEM_rs2_data), \
    .EX_MEM_imm_data(EX_MEM_imm_data), \
    .EX_MEM_Wt_addr(EX_MEM_Wt_addr), \
    .EX_MEM_Branch(EX_MEM_Branch), \
    .EX_MEM_MemtoReg(EX_MEM_MemtoReg), \
    .EX_MEM_Jump(EX_MEM_Jump), \
    .EX_MEM_width(EX_MEM_width), \
    .EX_MEM_RegWrite(EX_MEM_RegWrite), \
    .EX_MEM_MemRW(EX_MEM_MemRW), \
    .EX_MEM_sign(EX_MEM_sign), \
    .EX_MEM_ALU_zero(EX_MEM_ALU_zero), \
    .MEM_WB_PC(MEM_WB_PC), \
    .MEM_WB_ALU_out(MEM_WB_ALU_out), \
    .MEM_WB_imm_data(MEM_WB_imm_data), \
    .MEM_WB_Data_in(MEM_WB_Data_in), \
    .MEM_WB_Wt_addr(MEM_WB_Wt_addr), \
    .MEM_WB_MemtoReg(MEM_WB_MemtoReg), \
    .MEM_WB_width(MEM_WB_width), \
    .MEM_WB_sign(MEM_WB_sign), \
    .MEM_WB_RegWrite(MEM_WB_RegWrite),