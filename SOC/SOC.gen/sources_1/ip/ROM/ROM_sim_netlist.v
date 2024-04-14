// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Mar 13 14:48:03 2024
// Host        : Minxuan-MeiLenovo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim e:/CO/SOC/SOC.gen/sources_1/ip/ROM/ROM_sim_netlist.v
// Design      : ROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ROM,dist_mem_gen_v8_0_14,{}" *) (* ORIG_REF_NAME = "xil_defaultlib_ROM" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "dist_mem_gen_v8_0_14,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module ROM
   (a,
    spo);
  input [9:0]a;
  output [31:0]spo;

  wire \<const0> ;
  wire [9:0]a;
  wire [31:0]\^spo ;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;
  wire [26:2]NLW_U0_spo_UNCONNECTED;

  assign spo[31:27] = \^spo [31:27];
  assign spo[26] = \<const0> ;
  assign spo[25] = \<const0> ;
  assign spo[24:15] = \^spo [24:15];
  assign spo[14] = \<const0> ;
  assign spo[13] = \^spo [13];
  assign spo[12] = \<const0> ;
  assign spo[11:4] = \^spo [11:4];
  assign spo[3] = \<const0> ;
  assign spo[2] = \<const0> ;
  assign spo[1:0] = \^spo [1:0];
  GND GND
       (.G(\<const0> ));
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "10" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1024" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "ROM.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  (* is_du_within_envelope = "true" *) 
  ROM_dist_mem_gen_v8_0_14 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(\^spo ),
        .we(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
uwBH4JaTzmENPjp1VK18+NmHqz3idKCCPayqakkK6bYDVk0JtRfycJYNxbcnLmlw5yuLTcDXBBKk
FqBPE2n7wWKg9tfz2Y8PrWAvnbsIFMfxBK8sfWUf8PPnz8vUwwMHjbXUWcgCgvtygj/TbB+jcZ8Z
CjYnBZ8tNdKOO1iDLpQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ff7o4KDFniNgPFT3cDZtw4HhiKzFbOFtLXtuci0MZhgQ8oZ15BcuowAfxUJXngU8JkWI9cbWKkG8
h/PODwnWEt4eK4VDKRk6Hw3QkZiKAa1N3QupC8D5bR7vJ/+RhJwSayz9t2JpdZaEhKgCgqTcX6oZ
4fCEOmSTUWVob+DXV4UfaMyfVm5VI0wxZ7q0mjFx+pdkt56PuNREX9kH4a9Ma1P0sYo8XaTpANLa
JC6eXOuUQlp40M9F/NL1Xajpys0YfGx8AveMAFEyfRmHZs+NbXmny/79vednrm+FhwtS9LveegmF
NZW9jiiR+9Igeraaz+QXPc6JO/nCDTr4Fuwusg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
enb/INzHPP7GNdz8dyyqgVCJiMs9JXcjMywZXhzPersGm0A258UOUwtOqcF1rO7lnrKwTeWbNFVN
dO3BxXBpzGnYWUqDda208CYV9hTWFhfySQdX58qn1Z8QY5G7KniMCVjaGuPPCfToPOOdbAxR9XUp
XbMr0vrZKWxz8nBhGYc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RKZNANfa63/n14iwmSxsB/UeV76BNqjEiYgjlZ2LdFWOArCv6D+jhC4sjGMiaz8GJ8J5kQeiWB0Y
e1+zdHflgzODs6eVC82MlEcfgP0vdDIBn0PP8rVDg5O31eQuJ7n5zn4XJu+vzjpkvJIHKrktAsP4
jg+LRxcTOu0dILImk7Vwgyuwhi8OxNN+jBVbLVxdNj0l5aQMgRZlU/8FVh3u958SH7z/fHnwGaOw
P8QgNv0ZZblWvpxa8TJIwlgVb9354a0eyD9XsKy5VfuUG03nmputxNzUuIUmGtBGCqx+4D4pyCch
j/ixD5iiKRmeKD1/RtGzxmrJap7SAHMuzic1Hw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OQMD0qoDy+4W8+jfTV63GDTwmjWvJILCTofeYJTZqWc2KhrzQXwVMW48dTyIriC6bA4bmXD5BwcB
W2gGbVUvY1Y1+wEFEwYIC0LiPrJO0DhpM1JhP2vkxnTEwaODiEp5x3XqHgsiys0I2/9mE4z4Hlbl
jzftQ/8sVSYokhMp9eaIHk3HNCSBllv90qeBfH3fOdVI2gA1r/22PktttbkyKji24r7jM5o4aMIc
Sp6u0DCnD2cSPCuCuMW3A9sFRuTKbXiLAeeymFIAXHKYQgWXXOqmbKHrk4GviHQyz31C9d+hm6dh
RMtaCyWnhqo3QE/QxP0TsYk3CgkjDCU+KK/ozA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
uV1eryjGs1SHbpKIAk5r3BY2SLKX9RlfGw6gbw/UtzBYt4U7vTBIy+x767ojEcmbGLos8kr8vilV
cnNOnsbu7vOAUIe+1PgpaPaCkv2OTPXaE0tfps6+Q6D3zB6j2a2FE1gRIPOniwAdlIn69jL2tuWD
M2BN1efQhi0lZHuKtTgzBOVXIg+zbTiH2k2kHWThOi6WayoBEny+g88wRi6pUBeB6aW3ezFYNmsl
zeOY9xmt+UhRMcr87DCcZdmjsIk6VrsIKF60y93pM0IoQ56iWpQ2OKZK+Ng9qC+pNHBEYEhiMQFb
kUesHtcFOIS7Ok6S9O9SMgf7lMQFOh9w0L31UA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GM2VxmvaiVBg1DsqOLewt6rcWtfH/Gj1QS7fUSMudF5qJ2fn+TXd8kcCwwrxdcXNXjoVi2As5jmL
yw1/NZreemrkS1YCJJDxmnE8CW2q9/4N4a79kApF1VfD5XdpaULhVn+Eb+jXCQFG+GEEOvnPb0Me
bbfRkfc0DAIWgtG2D81EQ28mg7KAWtsDpdUCi+BKdIAj8RXoTiQbFbiBeT7EiRIrz2PQF9nhQBfF
FjlrCNwDP4hRQJQeZcf/1Pl8SFyKGQb6iVF+VhhCVCunL7VBmzaCOW/gowPM7hRM2dvzmxcgeKfs
dZx/fy2rk1iokUi+3B+Jc6CycMWbHu8EfCh7iQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
NSZoNMCco4gpYPcg8pb9mtee1JxEWDcDzt6wnS0LeSPMi2upLvQXnSQKMvJGGOKStJOcu1eu7x33
4Xa3ApbjbfZ+lgs1PYlyY4V+B2Lio1EEo1uzZVWFrVFvmknOZwj6Gcmj5N/osaiqKaeIw7NTTbyX
HNHOabVsQJ540qnP4u/nzS/h/AQcm0PFLadGZtHJZEzyQDSSdghD/y/OLprdBcInfQDwAxQuJpCy
ExX4lD2WMrCkymNBS9NMH0vYh4kvpYKRO/oHuGcOZVg0p8vfMmz/BJDHuxTcS3FpLT0WxGVcmUIk
cuqKQFiVwwgnW9AfYkbsMrwfl9po2pofaAY2JC5ZTMyO1qEfSu4fxTRJNnDRvW65KkMdJhZFa36p
82hcDlaYvBowndZfMc42Sxt+ZULFDTFN0HT50iteAG1yEvJ9jKBiJla+kDQJB0VD0kj4+k8aBug3
uPKVykvf1/Uaw8NoW591pML42qlh8v1RzAm6aDnPRdsDaCc5Dq9QDPuE

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oRNld8VrAuP/xHUguZzkh8+wROOItnvw1FQUP5KHjxeh8nudEYH2PGefTPsV73QyEruJanGifjCR
m8XHiIxqAY9fk4CAm+2n67YLFUEHjC1Qri9htrL4W5fnj7OIdzcwttvmGEuGOuYOFA98RcnR0jSL
Nyqq5u/eILCh2MiKiELfsBjRv/WckpboJ+gzO1btduECvdBGjsIcjjHiIzPwNSGxnX3G6zG9OiWq
hXP2Jh0Ril7rGbajit90p+gJpDpuLee/aOh0BUXbYYLU0YIXK8bskgMir7D6cfu5oWDKwYH6/YRR
tFjIhRzFsqwjtmaxUnGTZzxsWGazk+uFfHXl7w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9712)
`pragma protect data_block
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
q4VV+qNM+Mxbps1rTmQzeG2Rmb3OWg==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
