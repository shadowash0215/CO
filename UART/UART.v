`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2024/03/20 13:26:59
// Design Name:
// Module Name: UART
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


module UART (
  input  wire        clk        ,
  input  wire        rst        ,
  input  wire [31:0] pc_if      ,
  input  wire [31:0] inst_if    ,
  input  wire [31:0] pc_id      ,
  input  wire [31:0] inst_id    ,
  input  wire        valid_id   ,
  input  wire [31:0] x0         ,
  input  wire [31:0] ra         ,
  input  wire [31:0] sp         ,
  input  wire [31:0] gp         ,
  input  wire [31:0] tp         ,
  input  wire [31:0] t0         ,
  input  wire [31:0] t1         ,
  input  wire [31:0] t2         ,
  input  wire [31:0] s0         ,
  input  wire [31:0] s1         ,
  input  wire [31:0] a0         ,
  input  wire [31:0] a1         ,
  input  wire [31:0] a2         ,
  input  wire [31:0] a3         ,
  input  wire [31:0] a4         ,
  input  wire [31:0] a5         ,
  input  wire [31:0] a6         ,
  input  wire [31:0] a7         ,
  input  wire [31:0] s2         ,
  input  wire [31:0] s3         ,
  input  wire [31:0] s4         ,
  input  wire [31:0] s5         ,
  input  wire [31:0] s6         ,
  input  wire [31:0] s7         ,
  input  wire [31:0] s8         ,
  input  wire [31:0] s9         ,
  input  wire [31:0] s10        ,
  input  wire [31:0] s11        ,
  input  wire [31:0] t3         ,
  input  wire [31:0] t4         ,
  input  wire [31:0] t5         ,
  input  wire [31:0] t6         ,
  input  wire [31:0] pc_ex      ,
  input  wire [31:0] inst_ex    ,
  input  wire        valid_ex   ,
  input  wire [ 4:0] rd_ex      ,
  input  wire [ 4:0] rs1        ,
  input  wire [ 4:0] rs2        ,
  input  wire [31:0] rs1_val    ,
  input  wire [31:0] rs2_val    ,
  input  wire        reg_wen_ex ,
  input  wire        is_imm     ,
  input  wire [31:0] imm        ,
  input  wire        mem_wen_ex ,
  input  wire        mem_ren_ex ,
  input  wire        is_branch  ,
  input  wire        is_jal_ex  ,
  input  wire        is_jalr_ex ,
  input  wire        is_auipc   ,
  input  wire        is_lui     ,
  input  wire [ 3:0] alu_ctrl   ,
  input  wire [ 2:0] cmp_ctrl   ,
  input  wire [31:0] pc_mem     ,
  input  wire [31:0] inst_mem   ,
  input  wire        valid_mem  ,
  input  wire [ 4:0] rd_mem     ,
  input  wire        reg_wen_mem,
  input  wire [31:0] mem_w_data ,
  input  wire [31:0] alu_res    ,
  input  wire        mem_wen_mem,
  input  wire        mem_ren_mem,
  input  wire        is_jal_mem ,
  input  wire        is_jalr_mem,
  input  wire [31:0] pc_wb      ,
  input  wire [31:0] inst_wb    ,
  input  wire        valid_wb   ,
  input  wire [ 4:0] rd_wb      ,
  input  wire        reg_wen_wb ,
  input  wire [31:0] reg_w_data ,
  output wire        tx
);

  reg[31:0] clock_cnt = 0;
  reg start;

  always @(posedge clk)
    begin
      if(clock_cnt == 32'd10000000)
        begin
          clock_cnt <= 0;
          start     <= 1'b1;
        end
      else
        begin
          clock_cnt <= clock_cnt + 32'b1;
          start     <= 1'b0;
        end
    end

  uart_display uart_display (
    .clk        (clk        ),
    .rst        (rst        ),
    .start      (start      ),
    .tx         (tx         ),
    .pc_if      (pc_if      ),
    .inst_if    (inst_if    ),
    .pc_id      (pc_id      ),
    .inst_id    (inst_id    ),
    .valid_id   (valid_id   ),
    .x0         (x0         ),
    .ra         (ra         ),
    .sp         (sp         ),
    .gp         (gp         ),
    .tp         (tp         ),
    .t0         (t0         ),
    .t1         (t1         ),
    .t2         (t2         ),
    .s0         (s0         ),
    .s1         (s1         ),
    .a0         (a0         ),
    .a1         (a1         ),
    .a2         (a2         ),
    .a3         (a3         ),
    .a4         (a4         ),
    .a5         (a5         ),
    .a6         (a6         ),
    .a7         (a7         ),
    .s2         (s2         ),
    .s3         (s3         ),
    .s4         (s4         ),
    .s5         (s5         ),
    .s6         (s6         ),
    .s7         (s7         ),
    .s8         (s8         ),
    .s9         (s9         ),
    .s10        (s10        ),
    .s11        (s11        ),
    .t3         (t3         ),
    .t4         (t4         ),
    .t5         (t5         ),
    .t6         (t6         ),
    .pc_ex      (pc_ex      ),
    .inst_ex    (inst_ex    ),
    .valid_ex   (valid_ex   ),
    .rd_ex      (rd_ex      ),
    .rs1        (rs1        ),
    .rs2        (rs2        ),
    .rs1_val    (rs1_val    ),
    .rs2_val    (rs2_val    ),
    .reg_wen_ex (reg_wen_ex ),
    .is_imm     (is_imm     ),
    .imm        (imm        ),
    .mem_wen_ex (mem_wen_ex ),
    .mem_ren_ex (mem_ren_ex ),
    .is_branch  (is_branch  ),
    .is_jal_ex  (is_jal_ex  ),
    .is_jalr_ex (is_jalr_ex ),
    .is_auipc   (is_auipc   ),
    .is_lui     (is_lui     ),
    .alu_ctrl   (alu_ctrl   ),
    .cmp_ctrl   (cmp_ctrl   ),
    .pc_mem     (pc_mem     ),
    .inst_mem   (inst_mem   ),
    .valid_mem  (valid_mem  ),
    .rd_mem     (rd_mem     ),
    .reg_wen_mem(reg_wen_mem),
    .mem_w_data (mem_w_data ),
    .alu_res    (alu_res    ),
    .mem_wen_mem(mem_wen_mem),
    .mem_ren_mem(mem_ren_mem),
    .is_jal_mem (is_jal_mem ),
    .is_jalr_mem(is_jalr_mem),
    .pc_wb      (pc_wb      ),
    .inst_wb    (inst_wb    ),
    .valid_wb   (valid_wb   ),
    .rd_wb      (rd_wb      ),
    .reg_wen_wb (reg_wen_wb ),
    .reg_w_data (reg_w_data )
  );

endmodule
