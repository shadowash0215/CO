`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/15 00:16:32
// Design Name: 
// Module Name: testbench
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

module testbench(
    input clk,
    input rst,
	input ext_int
);

    /* SCPU 中接出 */
    wire [3:0] RAM_mask;
    wire [31:0] Addr_out;
    wire [31:0] Data_out;       
    wire        CPU_MIO;
    wire        MemRW;
	wire        en;
    wire [31:0] PC_out;
    /* RAM 接出 */
    wire [31:0] douta;
    /* ROM 接出 */
    wire [31:0] spo;

    scpu u0(
        .clk(clk),
        .rst(rst),
        .Data_in(douta),
        .MIO_ready(CPU_MIO),
        .inst_in(spo),
		.ext_int(ext_int),
        .RAM_mask(RAM_mask),
        .Addr_out(Addr_out),
        .Data_out(Data_out),
        .CPU_MIO(CPU_MIO),
        .MemRW(MemRW),
		.en(en),
        .PC_out(PC_out)
    );

    RAM_B u1(
        .clka(~clk),
        .wea({4{MemRW & en}} & RAM_mask),
        .addra(Addr_out[11:2]), 
        .dina(Data_out),
        .douta(douta)
    );

    ROM_in_testbench u2(
        .a(PC_out[11:2]),
        .spo(spo),
        .inst_msg(inst_msg)
    );

endmodule // tesebench

module ROM_in_testbench(
    input [9:0] a,
    output [31:0] spo,
    output [8*30:1] inst_msg
);
    reg[8*30:1] inst_string[0:44];
    reg[31:0] inst [0:1023];

    assign spo = inst[a];
    assign inst_msg = inst_string[a];

    // Initial inst
	initial begin
		inst[0]	 <= 32'h00000097;
		inst[1]	 <= 32'h0240006F;
		inst[2]	 <= 32'h00000013;
		inst[3]	 <= 32'h00000013;
		inst[4]	 <= 32'h00000013;
		inst[5]	 <= 32'h00000013;
		inst[6]	 <= 32'h00000013;
		inst[7]	 <= 32'h00000013;
		inst[8]	 <= 32'h00000013;
		inst[9]	 <= 32'hFE5FF06F;
		inst[10]	 <= 32'h06400513;
		inst[11]	 <= 32'h30551073;
		inst[12]	 <= 32'h343459F3;
		inst[13]	 <= 32'h343BE9F3;
		inst[14]	 <= 32'h343FF9F3;
		inst[15]	 <= 32'h3439B9F3;
		inst[16]	 <= 32'h00000F17;
		inst[17]	 <= 32'hFC0992E3;
		inst[18]	 <= 32'h00100F93;
		inst[19]	 <= 32'h00000073;
		inst[20]	 <= 32'h00000F17;
		inst[21]	 <= 32'h00200F93;
		inst[22]	 <= 32'h30402B73;
		inst[23]	 <= 32'h66600F93;
		inst[24]	 <= 32'hFA9FF06F;
		inst[25]	 <= 32'h342026F3;
		inst[26]	 <= 32'h34102773;
		inst[27]	 <= 32'h343027F3;
		inst[28]	 <= 32'h30002873;
		inst[29]	 <= 32'h305028F3;
		inst[30]	 <= 32'h01F06B93;
		inst[31]	 <= 32'h0176D6B3;
		inst[32]	 <= 32'h0016C693;
		inst[33]	 <= 32'h00068463;
		inst[34]	 <= 32'h00470713;
		inst[35]	 <= 32'h34171073;
		inst[36]	 <= 32'h30200073;
	end

	// Initial inst_string
	initial begin
		inst_string[0]	 <= "auipc x1, 0";
		inst_string[1]	 <= "j     start            # 00";
		inst_string[2]	 <= "dummy:";
		inst_string[3]	 <= "nop                    # 04";
		inst_string[4]	 <= "nop                    # 08";
		inst_string[5]	 <= "nop                    # 0C";
		inst_string[6]	 <= "nop                    # 10";
		inst_string[7]	 <= "nop                    # 14";
		inst_string[8]	 <= "nop                    # 18";
		inst_string[9]	 <= "nop                    # 1C";
		inst_string[10]	 <= "j     dummy";
		inst_string[11]	 <= "";
		inst_string[12]	 <= "start:";
		inst_string[13]	 <= "li     x10, 0x64";
		inst_string[14]	 <= "csrrw  x0, 0x305, x10         # Set mtvec to 4";
		inst_string[15]	 <= "csrrwi x19, 0x343, 8        # mtval=8, x19=0";
		inst_string[16]	 <= "csrrsi x19, 0x343, 23       # mtval=31, x19=8";
		inst_string[17]	 <= "csrrci x19, 0x343, 31       # mtval=0, x19=31";
		inst_string[18]	 <= "csrrc  x19, 0x343, x19      # mtval=31, x19=0";
		inst_string[19]	 <= "auipc  x30, 0";
		inst_string[20]	 <= "bnez   x19, dummy";
		inst_string[21]	 <= "li     x31, 1";
		inst_string[22]	 <= "";
		inst_string[23]	 <= "Exception:";
		inst_string[24]	 <= "ecall";
		inst_string[25]	 <= "auipc  x30, 0";
		inst_string[26]	 <= "li     x31, 2";
		inst_string[27]	 <= "csrrs  x22, 0x304, x0      # illegal instruction";
		inst_string[28]	 <= "li     x31, 0x666";
		inst_string[29]	 <= "j      dummy";
		inst_string[30]	 <= "";
		inst_string[31]	 <= "trap:";
		inst_string[32]	 <= "csrrs  x13, 0x342, x0       # mcause";
		inst_string[33]	 <= "csrrs  x14, 0x341, x0       # mepc";
		inst_string[34]	 <= "csrrs  x15, 0x343, x0       # mtval";
		inst_string[35]	 <= "csrrs  x16, 0x300, x0       # mstatus";
		inst_string[36]	 <= "csrrs  x17, 0x305, x0       # mtvec";
		inst_string[37]	 <= "ori   x23, zero, 31";
		inst_string[38]	 <= "srl   x13, x13, x23         # Exception or interrupt";
		inst_string[39]	 <= "xori  x13, x13, 1";
		inst_string[40]	 <= "beqz  x13, ret";
		inst_string[41]	 <= "addi  x14, x14, 4";
		inst_string[42]	 <= "ret:";
		inst_string[43]	 <= "csrrw  x0, 0x341, x14";
		inst_string[44]	 <= "mret";
	end

endmodule // ROM_in_test