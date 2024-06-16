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
    output reg        MemWrite,
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
        // IF/ID pipeline register
        PC <= 32'b0;
        IF_ID_PC <= 32'b0;
        IF_ID_inst_field <= 32'b0;
        // ID/EX pipeline register
        ID_EX_PC <= 32'b0;
        ID_EX_rs1 <= 5'b0;
        ID_EX_rs2 <= 5'b0;
        ID_EX_rs1_data <= 32'b0;
        ID_EX_rs2_data <= 32'b0;
        ID_EX_imm_data <= 32'b0;
        ID_EX_rd <= 5'b0;
        ID_EX_ALU_Control <= 4'b0;
        ID_EX_Branch <= 3'b0;
        ID_EX_MemtoReg <= 3'b0;
        ID_EX_Jump <= 2'b0;
        ID_EX_width <= 2'b0;
        ID_EX_ALUSrc_A <= 1'b0;
        ID_EX_ALUSrc_B <= 1'b0;
        ID_EX_RegWrite <= 1'b0;
        ID_EX_MemWrite <= 1'b0;
        ID_EX_MemRead <= 1'b0;
        ID_EX_sign <= 1'b0;
        // EX/MEM pipeline register
        EX_MEM_PC <= 32'b0;
        EX_MEM_ALU_out <= 32'b0;
        EX_MEM_imm_data <= 32'b0;
        EX_MEM_rd <= 5'b0;
        EX_MEM_rs2_data <= 4'b0;
        EX_MEM_MemtoReg <= 3'b0;
        EX_MEM_Jump <= 2'b0;
        EX_MEM_width <= 2'b0;
        EX_MEM_RegWrite <= 1'b0;
        EX_MEM_MemWrite <= 1'b0;
        EX_MEM_sign <= 1'b0;
        EX_MEM_ALU_zero <= 1'b0;
        // MEM/WB pipeline register
        MEM_WB_PC <= 32'b0;
        MEM_WB_ALU_out <= 32'b0;
        MEM_WB_imm_data <= 32'b0;
        MEM_WB_Data_in <= 32'b0;
        MEM_WB_rd <= 5'b0;
        MEM_WB_MemtoReg <= 3'b0;
        MEM_WB_width <= 2'b0;
        MEM_WB_sign <= 1'b0;
        MEM_WB_RegWrite <= 1'b0;
    end else begin
        if (bubble) begin 
        // stop the pipeline, don't update PC and IF/ID pipeline register
        // ID/EX control signals should be set to 0
            ID_EX_ALU_Control <= 4'b0;
            ID_EX_Branch <= 3'b0;
            ID_EX_MemtoReg <= 3'b0;
            ID_EX_Jump <= 2'b0;
            ID_EX_width <= 2'b0;
            ID_EX_ALUSrc_A <= 1'b0;
            ID_EX_ALUSrc_B <= 1'b0;
            ID_EX_RegWrite <= 1'b0;
            ID_EX_MemWrite <= 1'b0;
            ID_EX_MemRead <= 1'b0;
            ID_EX_sign <= 1'b0;
        end else if (BJ) begin
            PC <= PC_next;
            IF_ID_PC <= PC;
            // nop after jump
            IF_ID_inst_field <= 32'h00000013;
            // ID/EX pipeline register
            ID_EX_PC <= IF_ID_PC;
            ID_EX_rs1 <= IF_ID_inst_field[19:15];
            ID_EX_rs2 <= IF_ID_inst_field[24:20];
            ID_EX_rs1_data <= rs1_data;
            ID_EX_rs2_data <= rs2_data;
            ID_EX_imm_data <= imm_data;
            ID_EX_rd <= IF_ID_inst_field[11:7];
            ID_EX_ALU_Control <= ALU_Control;
            ID_EX_Branch <= Branch;
            ID_EX_MemtoReg <= MemtoReg;
            ID_EX_Jump <= Jump;
            ID_EX_width <= width;
            ID_EX_ALUSrc_A <= ALUSrc_A;
            ID_EX_ALUSrc_B <= ALUSrc_B;
            ID_EX_RegWrite <= RegWrite;
            ID_EX_MemWrite <= MemWrite_temp;
            ID_EX_MemRead <= MemRead_temp;
            ID_EX_sign <= sign;
        end else begin 
            // IF/ID pipeline register
            PC <= PC_next;
            IF_ID_PC <= PC;
            IF_ID_inst_field <= inst_in;
            // ID/EX pipeline register
            ID_EX_PC <= IF_ID_PC;
            ID_EX_rs1 <= IF_ID_inst_field[19:15];
            ID_EX_rs2 <= IF_ID_inst_field[24:20];
            ID_EX_rs1_data <= rs1_data;
            ID_EX_rs2_data <= rs2_data;
            ID_EX_imm_data <= imm_data;
            ID_EX_rd <= IF_ID_inst_field[11:7];
            ID_EX_ALU_Control <= ALU_Control;
            ID_EX_Branch <= Branch;
            ID_EX_MemtoReg <= MemtoReg;
            ID_EX_Jump <= Jump;
            ID_EX_width <= width;
            ID_EX_ALUSrc_A <= ALUSrc_A;
            ID_EX_ALUSrc_B <= ALUSrc_B;
            ID_EX_RegWrite <= RegWrite;
            ID_EX_MemWrite <= MemWrite_temp;
            ID_EX_MemRead <= MemRead_temp;
            ID_EX_sign <= sign;
        end
        // EX/MEM pipeline register
        EX_MEM_PC <= ID_EX_PC;
        EX_MEM_ALU_out <= ALU_res;
        EX_MEM_rs2_data <= rs2_data_temp;
        EX_MEM_imm_data <= ID_EX_imm_data;
        EX_MEM_rd <= ID_EX_rd;
        EX_MEM_MemtoReg <= ID_EX_MemtoReg;
        EX_MEM_Jump <= ID_EX_Jump;
        EX_MEM_width <= ID_EX_width;
        EX_MEM_RegWrite <= ID_EX_RegWrite;
        EX_MEM_MemWrite <= ID_EX_MemWrite;
        EX_MEM_sign <= ID_EX_sign;
        EX_MEM_ALU_zero <= ALU_zero;
        // MEM/WB pipeline register
        MEM_WB_PC <= EX_MEM_PC;
        MEM_WB_ALU_out <= EX_MEM_ALU_out;
        MEM_WB_imm_data <= EX_MEM_imm_data;
        MEM_WB_Data_in <= Data_in_temp;
        MEM_WB_rd <= EX_MEM_rd;
        MEM_WB_MemtoReg <= EX_MEM_MemtoReg;
        MEM_WB_width <= EX_MEM_width;
        MEM_WB_sign <= EX_MEM_sign;
        MEM_WB_RegWrite <= EX_MEM_RegWrite;
    end
end

// ID stage
wire [31:0] rs1_data, rs2_data, imm_data;
wire [31:0] reg1_data, reg2_data;
wire [31:0] PC_temp;
wire [31:0] jal_addr, jalr_addr, ALU_res_temp;
wire [3:0]  ALU_Control;
wire [2:0]  Branch;
wire [2:0]  MemtoReg, ImmSel;
wire [1:0]  Jump;
wire [1:0]  width;
wire        ALUSrc_A, ALUSrc_B, RegWrite, MemWrite_temp, MemRead_temp, CPU_MIO_temp, sign, BJ, Branch_temp;

assign BJ = (Jump[1] | Branch[2]);
assign reg1_data = (BJ && EX_MEM_RegWrite && EX_MEM_rd != 0 && (EX_MEM_rd == IF_ID_inst_field[19:15])) ? (EX_MEM_MemtoReg == `MEM2REG_MEM ? Data_in_temp : EX_MEM_ALU_out) : rs1_data;
assign reg2_data = (BJ && EX_MEM_RegWrite && EX_MEM_rd != 0 && (EX_MEM_rd == IF_ID_inst_field[24:20])) ? (EX_MEM_MemtoReg == `MEM2REG_MEM ? Data_in_temp : EX_MEM_ALU_out) : rs2_data;
assign jal_addr = IF_ID_PC + imm_data;
assign jalr_addr = reg1_data + imm_data;
assign ALU_res_temp = 
(ALU_Control == `ALU_OP_XOR) ? (reg1_data ^ reg2_data) :
(ALU_Control == `ALU_OP_SLTU) ? (reg1_data < reg2_data) :
($signed(reg1_data) < $signed(reg2_data));

assign Branch_temp = Branch[2] && ( ((ALU_res_temp == 32'b0) && (Branch[1:0] == 2'b00)) || ((ALU_res_temp != 32'b0) && (Branch[1:0] == 2'b01)) || ((ALU_res_temp[0] == 1) && (Branch[1:0] == 2'b10)) || ((ALU_res_temp[0] == 0) && (Branch[1:0] == 2'b11)));
assign PC_temp = BJ ? PC : PC + 4;
assign PC_next = Jump[1] ? (Jump[0] ? jalr_addr : jal_addr) : (Branch_temp ? (IF_ID_PC + imm_data) : PC_temp);

// ID/EX pipeline register
// reg  [31:0] ID_EX_PC;
// reg  [31:0] ID_EX_rs1_data, ID_EX_rs2_data, ID_EX_imm_data;
// reg  [4:0]  ID_EX_rd;
// reg  [3:0]  ID_EX_ALU_Control;
// reg  [2:0]  ID_EX_Branch;
// reg  [2:0]  ID_EX_MemtoReg;
// reg  [1:0]  ID_EX_Jump;
// reg  [1:0]  ID_EX_width;
// reg         ID_EX_ALUSrc_A, ID_EX_ALUSrc_B, ID_EX_RegWrite, ID_EX_MemWrite, ID_EX_sign;

Regs U1(
    .clk(clk),
    .rst(rst),
    .RegWrite(MEM_WB_RegWrite),
    .Rs1_addr(IF_ID_inst_field[19:15]),
    .Rs2_addr(IF_ID_inst_field[24:20]),
    .Wt_addr(MEM_WB_rd),
    .Wt_data(Wt_data),

    `RegFile_Regs_Arguments
    .Rs1_data(rs1_data),
    .Rs2_data(rs2_data)
);

SCPU_ctrl U2(
    .OPcode(IF_ID_inst_field[6:0]),
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
    .MemWrite(MemWrite_temp),
    .MemRead(MemRead_temp),
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

wire bubble;
stall U6(
    .IF_ID_rs1(IF_ID_inst_field[19:15]),
    .IF_ID_rs2(IF_ID_inst_field[24:20]),
    .ID_EX_rd(ID_EX_rd),
    .ID_EX_MemRead(ID_EX_MemRead),
    .BJ(BJ),
    .ID_EX_RegWrite(ID_EX_RegWrite),
    .bubble(bubble)
);

always @(*) begin 
    CPU_MIO = CPU_MIO_temp;
end

// EX stage
wire [31:0] ALU_A, ALU_B, ALU_res;
wire [31:0] rs2_data_temp;
wire        ALU_zero;
wire [2:0] forwardA, forwardB;
wire [1:0] forwardC;

forwarding U5(
    .EX_MEM_rd(EX_MEM_rd),
    .MEM_WB_rd(MEM_WB_rd),
    .ID_EX_rs1(ID_EX_rs1),
    .ID_EX_rs2(ID_EX_rs2),
    .EX_MEM_RegWrite(EX_MEM_RegWrite),
    .EX_MEM_MemtoReg(EX_MEM_MemtoReg),
    .MEM_WB_RegWrite(MEM_WB_RegWrite),
    .MEM_WB_MemtoReg(MEM_WB_MemtoReg),
    .ID_EX_ALUSrc_A(ID_EX_ALUSrc_A),
    .ID_EX_ALUSrc_B(ID_EX_ALUSrc_B),
    .forwardA(forwardA),
    .forwardB(forwardB),
    .forwardC(forwardC)
);

// EX/MEM pipeline register
// reg  [31:0] EX_MEM_PC;
// reg  [31:0] EX_MEM_ALU_out;
// reg  [31:0] EX_MEM_rs2_data;
// reg  [31:0] EX_MEM_imm_data;
// reg  [4:0]  EX_MEM_rd;
// reg  [2:0]  EX_MEM_MemtoReg;
// reg  [1:0]  EX_MEM_Jump;
// reg  [1:0]  EX_MEM_width;
// reg         EX_MEM_RegWrite, EX_MEM_MemWrite, EX_MEM_sign, EX_MEM_ALU_zero;

assign ALU_A = forwardA[2] ? (forwardA[1] ? (forwardA[0] ? MEM_WB_imm_data : EX_MEM_imm_data) : (forwardA[0] ? MEM_WB_PC + 4 : EX_MEM_PC + 4)) : (forwardA[1] ? (forwardA[0] ? ID_EX_PC : Wt_data) : (forwardA[0] ? EX_MEM_ALU_out : ID_EX_rs1_data));
assign ALU_B = forwardB[2] ? (forwardB[1] ? (forwardB[0] ? MEM_WB_imm_data : EX_MEM_imm_data) : (forwardB[0] ? MEM_WB_PC + 4 : EX_MEM_PC + 4)) : (forwardB[1] ? (forwardB[0] ? ID_EX_imm_data : Wt_data) : (forwardB[0] ? EX_MEM_ALU_out : ID_EX_rs2_data));
assign rs2_data_temp = forwardC[1] ? (forwardC[0] ? 32'b0 : Wt_data) : (forwardC[0] ? EX_MEM_ALU_out : ID_EX_rs2_data);

ALU U4(
    .A(ALU_A),
    .B(ALU_B),
    .ALU_operation(ID_EX_ALU_Control),
    .res(ALU_res),
    .zero(ALU_zero)
);

// MEM stage

// MEM/WB pipeline register
// reg  [31:0] MEM_WB_PC, MEM_WB_ALU_out, MEM_WB_imm_data;
// reg  [31:0] MEM_WB_Data_in;
// reg  [4:0]  MEM_WB_rd;
// reg  [3:0]  MEM_WB_MemtoReg;
// reg  [1:0]  MEM_WB_width;
// reg         MEM_WB_sign;
// reg         MEM_WB_RegWrite;

// assign Branch_temp = (EX_MEM_Branch[0] & EX_MEM_ALU_zero) | (EX_MEM_Branch[1] & ~EX_MEM_ALU_zero) | (EX_MEM_Branch[2] & EX_MEM_ALU_out[0]) | (EX_MEM_Branch[3] & ~EX_MEM_ALU_out[0]);


always @(*) begin
    Addr_out = EX_MEM_ALU_out;
    MemWrite = EX_MEM_MemWrite;
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

reg [31:0] Data_in_temp;
always @(*) begin 
    case({EX_MEM_sign, EX_MEM_width, EX_MEM_ALU_out[1:0]})
    // fun3 of lb is 000
        {`FUNC_BYTE, `MOD_ZERO}: Data_in_temp = {{24{Data_in[7]}}, Data_in[7:0]};
        {`FUNC_BYTE, `MOD_ONE}: Data_in_temp = {{24{Data_in[15]}}, Data_in[15:8]};
        {`FUNC_BYTE, `MOD_TWO}: Data_in_temp = {{24{Data_in[23]}}, Data_in[23:16]};
        {`FUNC_BYTE, `MOD_THREE}: Data_in_temp = {{24{Data_in[31]}}, Data_in[31:24]}; 
        // fun3 of lh is 001
        {`FUNC_HALF, `MOD_ZERO}: Data_in_temp = {{16{Data_in[15]}}, Data_in[15:0]};
        {`FUNC_HALF, `MOD_ONE}: Data_in_temp = {{16{Data_in[23]}}, Data_in[23:8]};
        {`FUNC_HALF, `MOD_TWO}: Data_in_temp = {{16{Data_in[31]}}, Data_in[31:16]};
        // fun3 of lw is 010
        {`FUNC_WORD, `MOD_ZERO}: Data_in_temp = Data_in;
        // fun3 of lbu is 100
        {`FUNC_BYTE_UNSIGNED, `MOD_ZERO}: Data_in_temp = {{24{1'b0}}, Data_in[7:0]};
        {`FUNC_BYTE_UNSIGNED, `MOD_ONE}: Data_in_temp = {{24{1'b0}}, Data_in[15:8]};
        {`FUNC_BYTE_UNSIGNED, `MOD_TWO}: Data_in_temp = {{24{1'b0}}, Data_in[23:16]};
        {`FUNC_BYTE_UNSIGNED, `MOD_THREE}: Data_in_temp = {{24{1'b0}}, Data_in[31:24]};
        // fun3 of lhu is 101
        {`FUNC_HALF_UNSIGNED, `MOD_ZERO}: Data_in_temp = {{16{1'b0}}, Data_in[15:0]};
        {`FUNC_HALF_UNSIGNED, `MOD_ONE}: Data_in_temp = {{16{1'b0}}, Data_in[23:8]};
        {`FUNC_HALF_UNSIGNED, `MOD_TWO}: Data_in_temp = {{16{1'b0}}, Data_in[31:16]};
        default: Data_in_temp = 32'b0;
    endcase
end

// WB stage
// reg [31:0] Wt_data;

always @(*) begin
    case(MEM_WB_MemtoReg) 
        `MEM2REG_ALU: Wt_data = MEM_WB_ALU_out;
        `MEM2REG_MEM: Wt_data = MEM_WB_Data_in;
        `MEM2REG_PC_PLUS: Wt_data = MEM_WB_PC + 4;
        // lui
        `MEM2REG_LUI: Wt_data = MEM_WB_imm_data;
        // auipc
        `MEM2REG_AUIPC: Wt_data = MEM_WB_ALU_out;
        default: Wt_data = 32'b0;
    endcase
end


endmodule
