// Generated code
module testbench(
    input clk,
    input rst
);

    /* SCPU 中接出 */
    wire [31:0] Addr_out;
    wire [31:0] Data_out;       
    wire        CPU_MIO;
    wire        MemRW;
    wire [31:0] PC_out;
    /* RAM 接出 */
    wire [31:0] douta;
    /* ROM_in_testbench 接出 */
    wire [31:0] spo;
    wire [8*30:1] inst_msg;

    SCPU u0(
        .clk(clk),
        .rst(rst),
        .Data_in(douta),
        .MIO_ready(CPU_MIO),
        .inst_in(spo),
        .Addr_out(Addr_out),
        .Data_out(Data_out),
        .CPU_MIO(CPU_MIO),
        .MemRW(MemRW),
        .PC_out(PC_out)
    );

    RAM_B u1(
        .clka(~clk),
        .wea(MemRW),
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
    reg[8*30:1] inst_string[0:78];
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
		inst[10]	 <= 32'h00100F93;
		inst[11]	 <= 32'hFFF00093;
		inst[12]	 <= 32'h0010C193;
		inst[13]	 <= 32'h003181B3;
		inst[14]	 <= 32'h003181B3;
		inst[15]	 <= 32'h003181B3;
		inst[16]	 <= 32'h0010C213;
		inst[17]	 <= 32'h003202B3;
		inst[18]	 <= 32'h00228293;
		inst[19]	 <= 32'h00328663;
		inst[20]	 <= 32'h00000F17;
		inst[21]	 <= 32'hFB5FF06F;
		inst[22]	 <= 32'h00200F93;
		inst[23]	 <= 32'h02000913;
		inst[24]	 <= 32'h00592023;
		inst[25]	 <= 32'h00091303;
		inst[26]	 <= 32'h00630333;
		inst[27]	 <= 32'h01030313;
		inst[28]	 <= 32'h00530663;
		inst[29]	 <= 32'h00000F17;
		inst[30]	 <= 32'hF91FF06F;
		inst[31]	 <= 32'h00300F93;
		inst[32]	 <= 32'h00630333;
		inst[33]	 <= 32'h00692023;
		inst[34]	 <= 32'h00092383;
		inst[35]	 <= 32'h00539663;
		inst[36]	 <= 32'h00000F17;
		inst[37]	 <= 32'hF75FF06F;
		inst[38]	 <= 32'h00400F93;
		inst[39]	 <= 32'h00400093;
		inst[40]	 <= 32'hFFF08093;
		inst[41]	 <= 32'hFE009EE3;
		inst[42]	 <= 32'h00008663;
		inst[43]	 <= 32'h00000F17;
		inst[44]	 <= 32'hF59FF06F;
		inst[45]	 <= 32'h800001B7;
		inst[46]	 <= 32'h001081B3;
		inst[47]	 <= 32'h00018663;
		inst[48]	 <= 32'h00000F17;
		inst[49]	 <= 32'hF45FF06F;
		inst[50]	 <= 32'h00500F93;
		inst[51]	 <= 32'h02030313;
		inst[52]	 <= 32'h00692023;
		inst[53]	 <= 32'h00090383;
		inst[54]	 <= 32'h00038663;
		inst[55]	 <= 32'h00000F17;
		inst[56]	 <= 32'hF29FF06F;
		inst[57]	 <= 32'h66600F93;
		inst[58]	 <= 32'hF21FF06F;
	end

	// Initial inst_string
	initial begin
		inst_string[0]	 <= "auipc x1, 0";
		inst_string[1]	 <= "j     pass_0            # 00";
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
		inst_string[12]	 <= "pass_0:";
		inst_string[13]	 <= "li    x31, 1";
		inst_string[14]	 <= "li    x1, -1           # x1=FFFFFFFF";
		inst_string[15]	 <= "xori  x3, x1, 1        # x3=FFFFFFFE";
		inst_string[16]	 <= "# use-use hazard";
		inst_string[17]	 <= "add   x3, x3, x3       # x3=FFFFFFFC";
		inst_string[18]	 <= "add   x3, x3, x3       # x3=FFFFFFF8";
		inst_string[19]	 <= "add   x3, x3, x3       # x3=FFFFFFF0";
		inst_string[20]	 <= "# Mem stage use-use hazard";
		inst_string[21]	 <= "xori  x4, x1, 1        # x4=FFFFFFFE";
		inst_string[22]	 <= "add   x5, x4, x3       # x5=FFFFFFEE";
		inst_string[23]	 <= "addi  x5, x5, 2        # x5=FFFFFFF0";
		inst_string[24]	 <= "beq   x5, x3, pass_1";
		inst_string[25]	 <= "auipc x30, 0";
		inst_string[26]	 <= "j     dummy";
		inst_string[27]	 <= "";
		inst_string[28]	 <= "pass_1:";
		inst_string[29]	 <= "li   x31, 2";
		inst_string[30]	 <= "# load-use hazard";
		inst_string[31]	 <= "li   x18, 0x20";
		inst_string[32]	 <= "sw   x5, 0(x18)";
		inst_string[33]	 <= "lh   x6, 0(x18)         # x6=FFFFFFF0";
		inst_string[34]	 <= "add  x6, x6, x6         # x6=FFFFFFE0";
		inst_string[35]	 <= "addi x6, x6, 0x10       # x6=FFFFFFF0";
		inst_string[36]	 <= "beq  x6, x5, pass_2";
		inst_string[37]	 <= "auipc x30, 0";
		inst_string[38]	 <= "j    dummy";
		inst_string[39]	 <= "";
		inst_string[40]	 <= "pass_2:";
		inst_string[41]	 <= "li   x31, 3";
		inst_string[42]	 <= "# use-store hazard";
		inst_string[43]	 <= "add  x6, x6, x6         # x6=FFFFFFE0";
		inst_string[44]	 <= "sw   x6, 0(x18)";
		inst_string[45]	 <= "lw   x7, 0(x18)         # x7=FFFFFFE0";
		inst_string[46]	 <= "bne  x7, x5, pass_3";
		inst_string[47]	 <= "auipc x30, 0";
		inst_string[48]	 <= "j    dummy";
		inst_string[49]	 <= "";
		inst_string[50]	 <= "pass_3:";
		inst_string[51]	 <= "li   x31, 4";
		inst_string[52]	 <= "li   x1,  4";
		inst_string[53]	 <= "loop:";
		inst_string[54]	 <= "addi x1, x1, -1";
		inst_string[55]	 <= "bne  x1, x0, loop";
		inst_string[56]	 <= "beq  x1, x0, pass_4";
		inst_string[57]	 <= "auipc x30, 0";
		inst_string[58]	 <= "j    dummy";
		inst_string[59]	 <= "";
		inst_string[60]	 <= "pass_4:";
		inst_string[61]	 <= "lui  x3, 0x80000    # x3=80000000";
		inst_string[62]	 <= "add  x3, x1, x1     # x3=00000000";
		inst_string[63]	 <= "beq  x3, x0, pass_5";
		inst_string[64]	 <= "auipc x30, 0";
		inst_string[65]	 <= "j    dummy";
		inst_string[66]	 <= "";
		inst_string[67]	 <= "pass_5:";
		inst_string[68]	 <= "li   x31, 5";
		inst_string[69]	 <= "addi x6, x6, 0x20   # x6=FFFFFF00";
		inst_string[70]	 <= "sw   x6, 0(x18)";
		inst_string[71]	 <= "lb   x7, 0(x18)     # x7=00000000";
		inst_string[72]	 <= "beq  x7, x0, pass_6";
		inst_string[73]	 <= "auipc x30, 0";
		inst_string[74]	 <= "j    dummy";
		inst_string[75]	 <= "";
		inst_string[76]	 <= "pass_6:";
		inst_string[77]	 <= "li    x31, 0x666";
		inst_string[78]	 <= "j     dummy";
	end

endmodule // ROM_in_test