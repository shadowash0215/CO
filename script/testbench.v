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
    reg[8*30:1] inst_string[0:197];
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
		inst[10]	 <= 32'hFE0090E3;
		inst[11]	 <= 32'h00000863;
		inst[12]	 <= 32'h00000F93;
		inst[13]	 <= 32'h00000F17;
		inst[14]	 <= 32'hFD1FF06F;
		inst[15]	 <= 32'h00100F93;
		inst[16]	 <= 32'hFC0014E3;
		inst[17]	 <= 32'hFC0062E3;
		inst[18]	 <= 32'hFFF00093;
		inst[19]	 <= 32'h0010C193;
		inst[20]	 <= 32'h003181B3;
		inst[21]	 <= 32'h003181B3;
		inst[22]	 <= 32'h003181B3;
		inst[23]	 <= 32'h003181B3;
		inst[24]	 <= 32'h003181B3;
		inst[25]	 <= 32'h003181B3;
		inst[26]	 <= 32'h003181B3;
		inst[27]	 <= 32'h003181B3;
		inst[28]	 <= 32'h003181B3;
		inst[29]	 <= 32'h003181B3;
		inst[30]	 <= 32'h003181B3;
		inst[31]	 <= 32'h003181B3;
		inst[32]	 <= 32'h003181B3;
		inst[33]	 <= 32'h003181B3;
		inst[34]	 <= 32'h003181B3;
		inst[35]	 <= 32'h003181B3;
		inst[36]	 <= 32'h003181B3;
		inst[37]	 <= 32'h003181B3;
		inst[38]	 <= 32'h003181B3;
		inst[39]	 <= 32'h003181B3;
		inst[40]	 <= 32'h003181B3;
		inst[41]	 <= 32'h003181B3;
		inst[42]	 <= 32'h003181B3;
		inst[43]	 <= 32'h003181B3;
		inst[44]	 <= 32'h003181B3;
		inst[45]	 <= 32'h003182B3;
		inst[46]	 <= 32'h005281B3;
		inst[47]	 <= 32'h00318233;
		inst[48]	 <= 32'h00420333;
		inst[49]	 <= 32'h006303B3;
		inst[50]	 <= 32'h00106413;
		inst[51]	 <= 32'h01F06E13;
		inst[52]	 <= 32'h01C3DEB3;
		inst[53]	 <= 32'h00000F17;
		inst[54]	 <= 32'hF3D418E3;
		inst[55]	 <= 32'h00000F17;
		inst[56]	 <= 32'hF27444E3;
		inst[57]	 <= 32'h41C3DEB3;
		inst[58]	 <= 32'h003EFEB3;
		inst[59]	 <= 32'h00000F17;
		inst[60]	 <= 32'hF1D19CE3;
		inst[61]	 <= 32'h00040E93;
		inst[62]	 <= 32'h007EE663;
		inst[63]	 <= 32'h00000F17;
		inst[64]	 <= 32'hF09FF06F;
		inst[65]	 <= 32'h00000013;
		inst[66]	 <= 32'h00200F93;
		inst[67]	 <= 32'h407301B3;
		inst[68]	 <= 32'h40338233;
		inst[69]	 <= 32'h00102493;
		inst[70]	 <= 32'h0041A533;
		inst[71]	 <= 32'h00322533;
		inst[72]	 <= 32'h00000F17;
		inst[73]	 <= 32'hEEA482E3;
		inst[74]	 <= 32'h01E1DE93;
		inst[75]	 <= 32'h009E8663;
		inst[76]	 <= 32'h00000F17;
		inst[77]	 <= 32'hED5FF06F;
		inst[78]	 <= 32'h00000013;
		inst[79]	 <= 32'h00300F93;
		inst[80]	 <= 32'h0030A513;
		inst[81]	 <= 32'h0012A5B3;
		inst[82]	 <= 32'h0030A633;
		inst[83]	 <= 32'h0FF57513;
		inst[84]	 <= 32'h00B57533;
		inst[85]	 <= 32'h00C57533;
		inst[86]	 <= 32'h00000F17;
		inst[87]	 <= 32'hEA0506E3;
		inst[88]	 <= 32'h0080B533;
		inst[89]	 <= 32'h00000F17;
		inst[90]	 <= 32'hEA0510E3;
		inst[91]	 <= 32'h00343533;
		inst[92]	 <= 32'h00000F17;
		inst[93]	 <= 32'hE8050AE3;
		inst[94]	 <= 32'h0030B513;
		inst[95]	 <= 32'h00000F17;
		inst[96]	 <= 32'hE80514E3;
		inst[97]	 <= 32'h00100593;
		inst[98]	 <= 32'h00B51663;
		inst[99]	 <= 32'h00000F17;
		inst[100]	 <= 32'hE79FF06F;
		inst[101]	 <= 32'h00000013;
		inst[102]	 <= 32'h00400F93;
		inst[103]	 <= 32'h0033E5B3;
		inst[104]	 <= 32'h00658663;
		inst[105]	 <= 32'h00000F17;
		inst[106]	 <= 32'hE61FF06F;
		inst[107]	 <= 32'h00000013;
		inst[108]	 <= 32'h00500F93;
		inst[109]	 <= 32'h02000913;
		inst[110]	 <= 32'h00592023;
		inst[111]	 <= 32'h00492223;
		inst[112]	 <= 32'h00092D83;
		inst[113]	 <= 32'h005DCDB3;
		inst[114]	 <= 32'h00692023;
		inst[115]	 <= 32'h00092E03;
		inst[116]	 <= 32'h01C34DB3;
		inst[117]	 <= 32'h00000F17;
		inst[118]	 <= 32'hE20D98E3;
		inst[119]	 <= 32'hA0000A37;
		inst[120]	 <= 32'h01492423;
		inst[121]	 <= 32'hFEDCBDB7;
		inst[122]	 <= 32'h40CDDD93;
		inst[123]	 <= 32'h00800E13;
		inst[124]	 <= 32'h01CD9DB3;
		inst[125]	 <= 32'h0FFDED93;
		inst[126]	 <= 32'h00B90E83;
		inst[127]	 <= 32'h01DDFDB3;
		inst[128]	 <= 32'h01B92423;
		inst[129]	 <= 32'h00895D83;
		inst[130]	 <= 32'hFFFF0A37;
		inst[131]	 <= 32'h01BA7A33;
		inst[132]	 <= 32'h00000F17;
		inst[133]	 <= 32'hDE0A1AE3;
		inst[134]	 <= 32'h00600F93;
		inst[135]	 <= 32'h00A94E03;
		inst[136]	 <= 32'h00B94E83;
		inst[137]	 <= 32'h008E9E93;
		inst[138]	 <= 32'h01CEEEB3;
		inst[139]	 <= 32'h010E9E93;
		inst[140]	 <= 32'h01DDEEB3;
		inst[141]	 <= 32'h00892E03;
		inst[142]	 <= 32'h00000F17;
		inst[143]	 <= 32'hDDDE16E3;
		inst[144]	 <= 32'h00092023;
		inst[145]	 <= 32'h01B91023;
		inst[146]	 <= 32'h0D000E13;
		inst[147]	 <= 32'h01C90123;
		inst[148]	 <= 32'h00092E03;
		inst[149]	 <= 32'h00D0DEB7;
		inst[150]	 <= 32'hBA0E8E93;
		inst[151]	 <= 32'h00000F17;
		inst[152]	 <= 32'hDBDE14E3;
		inst[153]	 <= 32'h00291D83;
		inst[154]	 <= 32'h0D000E13;
		inst[155]	 <= 32'h00000F17;
		inst[156]	 <= 32'hD9CD9CE3;
		inst[157]	 <= 32'h00700F93;
		inst[158]	 <= 32'h00000F17;
		inst[159]	 <= 32'hD800D6E3;
		inst[160]	 <= 32'h00145663;
		inst[161]	 <= 32'h00000F17;
		inst[162]	 <= 32'hD81FF06F;
		inst[163]	 <= 32'h00000F17;
		inst[164]	 <= 32'hD6107CE3;
		inst[165]	 <= 32'h00000F17;
		inst[166]	 <= 32'hD61478E3;
		inst[167]	 <= 32'h00000A17;
		inst[168]	 <= 32'h2AC00AE7;
		inst[169]	 <= 32'h00000F17;
		inst[170]	 <= 32'hD61FF06F;
		inst[171]	 <= 32'h008A0A13;
		inst[172]	 <= 32'h00000F17;
		inst[173]	 <= 32'hD55A1AE3;
		inst[174]	 <= 32'h66600F93;
		inst[175]	 <= 32'hD4DFF06F;
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
		inst_string[13]	 <= "bnez  x1, dummy";
		inst_string[14]	 <= "beq   x0, x0, pass_0";
		inst_string[15]	 <= "li    x31, 0";
		inst_string[16]	 <= "auipc x30, 0";
		inst_string[17]	 <= "j     dummy";
		inst_string[18]	 <= "pass_0:";
		inst_string[19]	 <= "li    x31, 1";
		inst_string[20]	 <= "bne   x0, x0, dummy";
		inst_string[21]	 <= "bltu  x0, x0, dummy";
		inst_string[22]	 <= "li    x1, -1           # x1=FFFFFFFF";
		inst_string[23]	 <= "xori  x3, x1, 1        # x3=FFFFFFFE";
		inst_string[24]	 <= "add   x3, x3, x3       # x3=FFFFFFFC";
		inst_string[25]	 <= "add   x3, x3, x3       # x3=FFFFFFF8";
		inst_string[26]	 <= "add   x3, x3, x3       # x3=FFFFFFF0";
		inst_string[27]	 <= "add   x3, x3, x3       # x3=FFFFFFE0";
		inst_string[28]	 <= "add   x3, x3, x3       # x3=FFFFFFC0";
		inst_string[29]	 <= "add   x3, x3, x3       # x3=FFFFFF80";
		inst_string[30]	 <= "add   x3, x3, x3       # x3=FFFFFF00";
		inst_string[31]	 <= "add   x3, x3, x3       # x3=FFFFFE00";
		inst_string[32]	 <= "add   x3, x3, x3       # x3=FFFFFC00";
		inst_string[33]	 <= "add   x3, x3, x3       # x3=FFFFF800";
		inst_string[34]	 <= "add   x3, x3, x3       # x3=FFFFF000";
		inst_string[35]	 <= "add   x3, x3, x3       # x3=FFFFE000";
		inst_string[36]	 <= "add   x3, x3, x3       # x3=FFFFC000";
		inst_string[37]	 <= "add   x3, x3, x3       # x3=FFFF8000";
		inst_string[38]	 <= "add   x3, x3, x3       # x3=FFFF0000";
		inst_string[39]	 <= "add   x3, x3, x3       # x3=FFFE0000";
		inst_string[40]	 <= "add   x3, x3, x3       # x3=FFFC0000";
		inst_string[41]	 <= "add   x3, x3, x3       # x3=FFF80000";
		inst_string[42]	 <= "add   x3, x3, x3       # x3=FFF00000";
		inst_string[43]	 <= "add   x3, x3, x3       # x3=FFE00000";
		inst_string[44]	 <= "add   x3, x3, x3       # x3=FFC00000";
		inst_string[45]	 <= "add   x3, x3, x3       # x3=FF800000";
		inst_string[46]	 <= "add   x3, x3, x3       # x3=FF000000";
		inst_string[47]	 <= "add   x3, x3, x3       # x3=FE000000";
		inst_string[48]	 <= "add   x3, x3, x3       # x3=FC000000";
		inst_string[49]	 <= "add   x5, x3, x3       # x5=F8000000";
		inst_string[50]	 <= "add   x3, x5, x5       # x3=F0000000";
		inst_string[51]	 <= "add   x4, x3, x3       # x4=E0000000";
		inst_string[52]	 <= "add   x6, x4, x4       # x6=C0000000";
		inst_string[53]	 <= "add   x7, x6, x6       # x7=80000000";
		inst_string[54]	 <= "ori   x8, zero, 1      # x8=00000001";
		inst_string[55]	 <= "ori   x28, zero, 31";
		inst_string[56]	 <= "srl   x29, x7, x28     # x29=00000001";
		inst_string[57]	 <= "auipc x30, 0";
		inst_string[58]	 <= "bne   x8, x29, dummy";
		inst_string[59]	 <= "auipc x30, 0";
		inst_string[60]	 <= "blt   x8, x7, dummy";
		inst_string[61]	 <= "sra   x29, x7, x28     # x29=FFFFFFFF";
		inst_string[62]	 <= "and   x29, x29, x3     # x29=x3=F0000000";
		inst_string[63]	 <= "auipc x30, 0";
		inst_string[64]	 <= "bne   x3, x29, dummy";
		inst_string[65]	 <= "mv    x29, x8          # x29=x8=00000001";
		inst_string[66]	 <= "bltu  x29, x7, pass_1  # unsigned 00000001 < 80000000";
		inst_string[67]	 <= "auipc x30, 0";
		inst_string[68]	 <= "j     dummy";
		inst_string[69]	 <= "";
		inst_string[70]	 <= "pass_1:";
		inst_string[71]	 <= "nop";
		inst_string[72]	 <= "li    x31, 2";
		inst_string[73]	 <= "sub   x3, x6, x7       # x3=40000000";
		inst_string[74]	 <= "sub   x4, x7, x3       # x4=40000000";
		inst_string[75]	 <= "slti  x9, x0, 1        # x9=00000001";
		inst_string[76]	 <= "slt   x10, x3, x4";
		inst_string[77]	 <= "slt   x10, x4, x3      # x10=00000000";
		inst_string[78]	 <= "auipc x30, 0";
		inst_string[79]	 <= "beq   x9, x10, dummy   # branch when x3 != x4";
		inst_string[80]	 <= "srli  x29, x3, 30      # x29=00000001";
		inst_string[81]	 <= "beq   x29, x9, pass_2";
		inst_string[82]	 <= "auipc x30, 0";
		inst_string[83]	 <= "j     dummy";
		inst_string[84]	 <= "";
		inst_string[85]	 <= "pass_2:";
		inst_string[86]	 <= "nop";
		inst_string[87]	 <= "# Test set-less-than";
		inst_string[88]	 <= "li    x31, 3";
		inst_string[89]	 <= "slti  x10, x1, 3       # x10=00000001";
		inst_string[90]	 <= "slt   x11, x5, x1      # signed(0xF8000000) < -1";
		inst_string[91]	 <= "# x11=00000001";
		inst_string[92]	 <= "slt   x12, x1, x3      # x12=00000001";
		inst_string[93]	 <= "andi  x10, x10, 0xff";
		inst_string[94]	 <= "and   x10, x10, x11";
		inst_string[95]	 <= "and   x10, x10, x12    # x10=00000001";
		inst_string[96]	 <= "auipc x30, 0";
		inst_string[97]	 <= "beqz  x10, dummy";
		inst_string[98]	 <= "sltu  x10, x1, x8      # unsigned FFFFFFFF < 00000001 ?";
		inst_string[99]	 <= "auipc x30, 0";
		inst_string[100]	 <= "bnez  x10, dummy";
		inst_string[101]	 <= "sltu  x10, x8, x3      # unsigned 00000001 < F0000000 ?";
		inst_string[102]	 <= "auipc x30, 0";
		inst_string[103]	 <= "beqz  x10, dummy";
		inst_string[104]	 <= "sltiu x10, x1, 3";
		inst_string[105]	 <= "auipc x30, 0";
		inst_string[106]	 <= "bnez  x10, dummy";
		inst_string[107]	 <= "li    x11, 1";
		inst_string[108]	 <= "bne   x10, x11, pass_3";
		inst_string[109]	 <= "auipc x30, 0";
		inst_string[110]	 <= "j     dummy";
		inst_string[111]	 <= "";
		inst_string[112]	 <= "pass_3:";
		inst_string[113]	 <= "nop";
		inst_string[114]	 <= "li    x31, 4";
		inst_string[115]	 <= "or    x11, x7, x3      # x11=C0000000";
		inst_string[116]	 <= "beq   x11, x6, pass_4";
		inst_string[117]	 <= "auipc x30, 0";
		inst_string[118]	 <= "j     dummy";
		inst_string[119]	 <= "";
		inst_string[120]	 <= "pass_4:";
		inst_string[121]	 <= "nop";
		inst_string[122]	 <= "li    x31, 5";
		inst_string[123]	 <= "li    x18, 0x20        # base addr=00000020";
		inst_string[124]	 <= "### uncomment instr. below when simulating on venus";
		inst_string[125]	 <= "# lui   x18, 0x10000     # base addr=10000000";
		inst_string[126]	 <= "sw    x5, 0(x18)       # mem[0x20]=F8000000";
		inst_string[127]	 <= "sw    x4, 4(x18)       # mem[0x24]=40000000";
		inst_string[128]	 <= "lw    x27, 0(x18)      # x27=mem[0x20]=F8000000";
		inst_string[129]	 <= "xor   x27, x27, x5     # x27=00000000";
		inst_string[130]	 <= "sw    x6, 0(x18)       # mem[0x20]=C0000000";
		inst_string[131]	 <= "lw    x28, 0(x18)      # x28=mem[0x20]=C0000000";
		inst_string[132]	 <= "xor   x27, x6, x28     # x27=00000000";
		inst_string[133]	 <= "auipc x30, 0";
		inst_string[134]	 <= "bnez  x27, dummy";
		inst_string[135]	 <= "lui   x20, 0xA0000     # x20=A0000000";
		inst_string[136]	 <= "sw    x20, 8(x18)      # mem[0x28]=A0000000";
		inst_string[137]	 <= "lui   x27, 0xFEDCB     # x27=FEDCB000";
		inst_string[138]	 <= "srai  x27, x27, 12     # x27=FFFFEDCB";
		inst_string[139]	 <= "li    x28, 8";
		inst_string[140]	 <= "sll   x27, x27, x28    # x27=FFEDCB00";
		inst_string[141]	 <= "ori   x27, x27, 0xff   # x27=FFEDCBFF";
		inst_string[142]	 <= "lb    x29, 11(x18)     # x29=FFFFFFA0, little-endian, signed-ext";
		inst_string[143]	 <= "and   x27, x27, x29    # x27=FFEDCBA0";
		inst_string[144]	 <= "sw    x27, 8(x18)      # mem[0x28]=FFEDCBA0";
		inst_string[145]	 <= "lhu   x27, 8(x18)      # x27=0000CBA0";
		inst_string[146]	 <= "lui   x20, 0xFFFF0     # x20=FFFF0000";
		inst_string[147]	 <= "and   x20, x20, x27    # x20=00000000";
		inst_string[148]	 <= "auipc x30, 0";
		inst_string[149]	 <= "bnez  x20, dummy       # check unsigned-ext";
		inst_string[150]	 <= "li    x31, 6";
		inst_string[151]	 <= "lbu   x28, 10(x18)     # x28=000000ED";
		inst_string[152]	 <= "lbu   x29, 11(x18)     # x29=000000FF";
		inst_string[153]	 <= "slli  x29, x29, 8      # x29=0000FF00";
		inst_string[154]	 <= "or    x29, x29, x28    # x29=0000FFED";
		inst_string[155]	 <= "slli  x29, x29, 16";
		inst_string[156]	 <= "or    x29, x27, x29    # x29=FFEDCBA0";
		inst_string[157]	 <= "lw    x28, 8(x18)      # x28=FFEDCBA0";
		inst_string[158]	 <= "auipc x30, 0";
		inst_string[159]	 <= "bne   x28, x29, dummy";
		inst_string[160]	 <= "sw    x0, 0(x18)       # mem[0x20]=00000000";
		inst_string[161]	 <= "sh    x27, 0(x18)      # mem[0x20]=0000CBA0";
		inst_string[162]	 <= "li    x28, 0xD0";
		inst_string[163]	 <= "sb    x28, 2(x18)      # mem[0x20]=00D0CBA0";
		inst_string[164]	 <= "lw    x28, 0(x18)      # x28=00D0CBA0";
		inst_string[165]	 <= "li    x29, 0x00D0CBA0";
		inst_string[166]	 <= "auipc x30, 0";
		inst_string[167]	 <= "bne   x28, x29, dummy";
		inst_string[168]	 <= "lh    x27, 2(x18)      # x27=000000D0";
		inst_string[169]	 <= "li    x28, 0xD0";
		inst_string[170]	 <= "auipc x30, 0";
		inst_string[171]	 <= "bne   x27, x28, dummy";
		inst_string[172]	 <= "";
		inst_string[173]	 <= "pass_5:";
		inst_string[174]	 <= "li    x31, 7";
		inst_string[175]	 <= "auipc x30, 0";
		inst_string[176]	 <= "bge   x1, x0, dummy    # -1 >= 0 ?";
		inst_string[177]	 <= "bge   x8, x1, pass_6   # 1 >= -1 ?";
		inst_string[178]	 <= "auipc x30, 0";
		inst_string[179]	 <= "j     dummy";
		inst_string[180]	 <= "";
		inst_string[181]	 <= "pass_6:";
		inst_string[182]	 <= "auipc x30, 0";
		inst_string[183]	 <= "bgeu  x0, x1, dummy    # 0 >= FFFFFFFF ?";
		inst_string[184]	 <= "auipc x30, 0";
		inst_string[185]	 <= "bgeu  x8, x1, dummy";
		inst_string[186]	 <= "auipc x20, 0";
		inst_string[187]	 <= "jalr  x21, x0, pass_7  # just for test : (";
		inst_string[188]	 <= "auipc x30, 0";
		inst_string[189]	 <= "j     dummy";
		inst_string[190]	 <= "";
		inst_string[191]	 <= "pass_7:";
		inst_string[192]	 <= "# jalr ->";
		inst_string[193]	 <= "addi  x20, x20, 8";
		inst_string[194]	 <= "auipc x30, 0";
		inst_string[195]	 <= "bne   x20, x21, dummy";
		inst_string[196]	 <= "li    x31, 0x666";
		inst_string[197]	 <= "j     dummy";
	end

endmodule // ROM_in_test