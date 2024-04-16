// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Apr 16 14:11:41 2024
// Host        : Minxuan-MeiLenovo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim e:/CO/scpu_test/scpu_test.gen/sources_1/ip/RAM_B/RAM_B_sim_netlist.v
// Design      : RAM_B
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RAM_B,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module RAM_B
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.95215 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "RAM_B.mem" *) 
  (* C_INIT_FILE_NAME = "RAM_B.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  RAM_B_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jLV29U0rrfMIZhYJzdoUrPoqB9eHQ5NXmWyCdqnN3Wgm+GU4C3zthrN1m4QGiaj0thPCIynZbX+0
7yjtkv+T5ByJ6NhiofAwWseGLvPXlYu6ERAPvi4SAYpF2VUqQHtPAbPmnPubGdDRgIEpeobF7hsz
rEcpEru1pyiScUriyuo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vsoizVrOONWw/DhjRLEYrtRmtji+Ok63CbpSg/l9VnoKAi8tAzqRbQ57atGB2N6IGGbKHkbK2Uzh
EHgWvYZeyt4hE+bpQX91vc9PNxfjQMGzPoFD3jCWk30EmEk+AND39eWx+DhJ8xhFuucoOQ2GwyAk
B+Mjs15naPE7DvlHel8hnD4dfSdYhGKp96oozu8JeBto8aHG6poOuYkxSwaut7NCI+mabCkMxtMp
RrydgmRuTvhRTbJMyx5CxFSZTRDrS5aU1vaRlnMiqKCI7g2KY9pemYaJsFeVodBuo6IyKGynyEhs
wr+VtUhQDtaVhMkwB95WwmMoDk9F2L5Au1I+TQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
W081dPMCWhKs5YlQD7n3zvf7+PTcnb8eFWxoVs8+zHLkxDMA1klITbsfztGYvJFce8Yao5XQLLqZ
oUE5Pq2arq+zwICFUcLjdMsmP1WmL82znHOPHm83zNwrxWMloHkySAqzFbgJeHa973uZqj0M8ydc
sYmzCYVlGVjt0QX0xqA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Zpc3MmdLWaVOv+S4z2POuoyslYoAbWc+Npxq2UyQRtDwf566IId3uwAetolMAgfLo/G3ezuSOXMn
8NznS37h9XvmVrxA50SAux68P87WgkLtiUYqM3CMBKkxNlZ/TR8WzTuQyFdvzkOE9lp8HC7LXnk5
RDsnOM+su46FW7ysY01COslo9Xc7rhs6WFqx29+Xcqk8+ZMLSzaJfuwZdNmJFS3Q1vhlq3ZeYqMl
wMieB731KsPxjxp7VKNHpTbgFryC2isqc4ohBDOt52M/Bz4B/rIpFeHfZ7X3jWSiKtSuBsDN2NXf
EMjfAT248dlK7NxJ+NBNPhS5sLxTiGyQhta57A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rPMYqnkKhJKV1wltOfDrKos9ZbucaoX3WGTuqsdLkGpcKObzslHBwlGrKtWV7bZYmS2SM+QuEMfa
CE+tCUdsSiprp+n5BuSQlJa6BJ8mlqccjoo/JLw2QEmUhyMXQ3TLGomGGoZdeTmMPXhUBAOyLPea
Ddc8mgtTN8Kpy117GOTXDKP+IKJqW01fLrPJpgEhFiJCbyElLgtCRWmI94gX+y4XNVS0Cd1YwNw6
4nHgnEdC7fXARDKcYO3VsWC/pdzPQgursXloNLrVYa6i2xr+8E1V0+nSWwNYQZP7XUIVqXKMU8Ea
bT4acXrRCF/5tJJ5B9JparYI0zxXSbaakn1dIw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mfroTgL8g2pyIXQ/mGO9YHm19cd5mOlJ++qpusOYeVxGmkIhvF4aKx+AyIUz2yGGAeCtOzIasHty
pyqKgZhibSqxcpHgR0m6GOxXXOXJiHaK8NzxUzXeRJovcBI/WjtDhXeb1LRMI1J97jVBtJPJQH0Y
fGOD7jWvkvQwxnrZdyLp6kPWgSIcavHHDbO7iJv4gnyGp6W3/FCDo2RKWNLoW+SNjSdLZ6YRP8a+
ldaGU8TYvJ03KWlmik7repuN6AwxCjg2KeQ+x1sBAEXzROXomuSbvX3ZAo8UiIKAQY1SJumHLG3L
QI/S4Wbl1Hz6LDTsttMwP480gq6+tb6s1E4oWw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QJIabgm8dx/gVHbOQFwt8maOKVHFgkpZTPR6dzD8fqoGo9M9oGPTqBqchtPZWgv2UYFF2KEUSlV4
L3SDXBKrLs+NsAVTcICaEMiEi6j82zj/C1LsPkQfS8RLrg0ab8lbDMb5YqJ7lkHs3iM65x2iN1Mf
66cTgCbkAdl3rDpab75btpTQt5ZKiq5CSY3RZfyIW0uWbTGTELm6liuRKM9+K8BQwTU7A+FFFQBA
/9eJwQYzNNA/iwoYJ2WTPd6pBlzXriNLu9M+/2bYicNBSuH1PBR9v2ESrTB6k7EiV1zvBXV9NuG/
sFt4MumWMuSNwP2W38bQATxxW/l0IrmaXGOC/w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
lhKf/Vgj6pHpme1ji4HVe36BU8pMkam/2I9lFeyOiBnIbzgdEGfLJBcEvkL33A7s0hxa6LFbHnkT
upgMpPjmIghBz3xUQ13vpiY152thFec6qvlcdg1r+GTmnBOSFl6g/OfZ3eFUhfsve6ZjQHpXnKFo
a55hN2+eP1EG9+VxGeM7XkHaeFhEIry52qtnmg072KEFIwRiGs2d/TJ4AqupuIdIiP1kTN9k+oqa
2ta1vdtqPY0dDHqrf+5YSd0CejkhQeCqg/bauLP3755SwdOPRgooG5ANT8hUpTiFMFXtU+GC9NSp
evJtMHUy1NbgMmhFHO+w3URLEdjSaBxZPD7YLdWkF65jY526tJzoek+BzEKoBaGfCaY7O1nHKXm+
89k3rPUy0Xo4/0nHpno+N/Db09heJPbnGsCwN/l+KnR6Lz8kvWziBjZe0ijOkKI+T12y3T1VeOtY
H/aqtNlQt1mhFwrbw6ezaAiDPVbCQXnly6b4tbb8+nFsxWOGIGAfLozB

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PNsQ8uEcQYrl+GaDuBaq1tQ5br5aAdaqHnyrc0NVu/JnQUk53jaiLx8Oz5fNACvWelUUk2/C+P5I
b2rbU1bb/dC6TqC5J1N0yoMYRYw58u4Lrl8Kgqgt9Rlph5Qgzzfxp+oblXF/pO4mRyAXpZhpNkFT
0Ar9BUtPOTOtJ9/g53SRnZ6GjxzfeD+25J4fcXBNo2gCTgUkwiLSsJRwTB/cJmn+dZPwPdIOHEP9
TkfDK+OrbLYO3T+DFBTCMRNH2NB1J9sc5s+nPU8iYnjgPTo6HoGW+LIlCz6yNJMZzJzoeW708utc
0fJXkT7vLDVh7olvy3V9AAY8Do0YR1kiZlhVhQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zAz8RnGHFebkJFAS+gjC+mXHW7m7We+JgSmIz15mS01u/4+9Ng0sJfkeXOClmVPTQ2Mp2Yuv6/6f
ehzUTcANilWsqLM6Q1FToCPNX/NTqodlcHirGM7b5R9yevouNT/aqH12nmbunBQmBHmehNutdCjG
r6Z7kZgeZ2ZE7MMOF0rTy1XHEPkqgMNTRoS8R/pPWPTW4/j+bn3aJj0Q/fTz4Gi3mbSUKWs2fREQ
UKiuolNJkN6DiDvhlVYHUyytXNJG44ikmBXehoQQRLapkYaxnQmMRT1ok9uY6pKoy71CtvJ3Mt2x
EQv1GU2i4qQyAOwa0mkEohWXduicU6tDz3zQwQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TK3eE9V+v1z2P1KjG4GrjhA1n3qDOpNzLGXdtjnjhF0QBFPSuhC+nmNqTPOb3p2a9r5KD0miY3Cd
+KpjH6Ao09E2/LD2Go4aLQh6vP+9BldlSKEwCGfx2NjBQrXWVH21lQR7IRjOvyTOclpd7SgtUJLw
dvebETyLiKr9C6RfnIBeptuCA3iJlXfwkh6I0JfzD5WBizQkotioZmmrXv5105pCXQ4Ta1WThFsA
2ll9dZeSjEDHUxxhfyfjryv9m4VL89ZDU/rGITsdptwB1BC1jLqmPDymY05lyECnjA6NIR5GGfI4
K2y2f4GfikKoN5r9IOvFzw963Wm82ZZPtXOKGg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27568)
`pragma protect data_block
mwHRHZwrhxuqb3w/GC6EaRkrSOf0w1IIyuHHX59hbh6MgoXukcah2l15QcDMQSyjgffPB9HX7vGe
fIOWcw9AhU0KSD0cQKMiQCh7cIkuDFdiTq4+HpcMsb3C65U5YAGbuRaoPfs/ShzpKykWU0rXUOC8
joHplfsS4MrJ84npjpwXMuGWbcBUZrts+nu5AroflNYYubtmtKIuxu4/dsX5EDabCJrENRkhspUR
i6KijTI9XsTde/opZ0sb3YRDFBmj2/7S9Rkg8Y0GNdGofJdVmGjNwUgU/tKkRHJwgMew9eT3AllL
TQba9kdfwsMoPcvgeWQhwiBIA7r3YTvgStIbvima1gpQR2BB/s7R6ofaF3vVDJchH+nzSP5PVRgA
IqqbyfWCqR3updJ44sX1ViI30ZAmzQB23Sl2l4DKWgTVq7BtIisnvivsEcwEv+Ik01fWXxHf6UUd
dfSqU+RR7Hu8Zly9Ia0MrAW0aGze1zcHo5toL01DlCe2rY801JbmqFjffjrRDGgkkTea3Ti4iUjc
tIkU2nyUn/a7V/3IM02zLaFH+NRPo2HBWvunmnPj7kEUNy7G5n6CxJix9ZWN5hPmtLDGdTZsD3oC
e2PppsEduTR0OopqYgJkqk4u0vWBojrp9243Uz9rYtuU8w5h7oWKaYq9egkKrSOdd0QyOSoxZTrW
zyyK3GSydeF3r7EsIgWGNwvblcw2P/Fz4I4oKSogM9OPsvaE6BIK+Ca2O1EFuHjK76r1ujsNJax0
VjmO+U89J2a41w7eNu9nXmMqV9hsEEudYqRQ2IdvbLEa1IgdXy0BHGU0Uc4l4Z52KGTQVcxdgO7v
QD98IB+ZjijbHamjEfz2+Kl7cge//XweoNonq1vGEg6LiklvdBKWxIMhM3seuGBGRifsSTAz5OfK
9tN9mAiH7gUZndvEjGqslIOwAzjRH7VCV+5R9rWE02GPrVMJFmegrI3WqZPYfOvgKPjg3+9ljfDo
Rk53l0HdHEZ9pax1yLfH2DTnGRix9oz7XMrgEnD6iGeV55IB5U39L0mY7rwQ2jwc5k5y+8PWJaTv
DQIqwiBfJrVL/aMSptjeaWIpkC4XovkvhRWvKr63nijpTvVxrp9UVJTmrRhJkgbUJf6/PBkxZi08
ndRy89EyCqNXcIKJSMUueuOz/dghDadYXhGTOP1YXbNWcVCfwK+WY9hFQ9tmz2bAG1sATtXGIHOM
MMmGRpElv3nQtBGZn9kz0qRCHEIJgVS4gTAqlwiINxLridCnyqXwR+eZYctzp4gwTLAfhsEvvd8N
m7VB0du40nqL5d54ro0VbfpgMSFtgJeY1j//wAfAso84fueB/m1c2SyA0XLwPDrIs/VX7iUf38cQ
8Qh5E09/ylKNyqn1k/zehRkB1nduUE+MDqGn9DmtVVlf0ZbAbnGSWUKgouVuuoHGkIKxFWD71Siu
NMjH97ajGW6cAjDP7TLeHoEwj+Eo5ysUV/jNQymxmhzyhW4FGCZXpvQNw2lM8lG3g1/vsgHult43
aCneKoMniZ5hg02iKcnzgExHAhlI08GmP5zflM/igLdkIwWgwame+KKuDEYmZgdFhGwjsIvjFXkY
CbTOnebDI5o417Na0s2sjdValmQGNj4eT5JKDJfceunaAXpDuXsNa7EozgVwK1L2+YnmvTrQgqcH
/KMU9YT0Ti+SeL8jSFQGnmMvM3gErVOxg4zGD2vKFwfPm7BXT+okhEkJwh8pDyzldYxJwZtxv889
wfKhYNqHE/WjCf3lZVzrrzOFlsYXfc6RxzJDAWEj+bZe55021gZzorFwUqgayvRR8GwqEhDmWlS9
lOWhaJhboQHCV/gelE8i28Atr8W2TUzEYFOZLvXWJTIU8qIj+mvHGBS+dXkwpbvfmv/AngQFH0Nw
J2jjukC8Qi6TDPP5XRxQJDKcv/XRLoAIeJ++nz7S1nxDqHCGlBtEFbizY29/R1ivh/AfG3U0A8UW
zcMThoiKOBQt0UM1mi8BdlmHbiLwK9mAXbaWqUvMm5UAQ01QRSjbDe9JThUeNm3jP8puX14ftC2Y
jK0U7mKrC6GqXjoEDS5LRAY3Jt6Nz4leaC/u9/ORZO6SintXCDdo5rMtKk6HI2ceLoLwflkLTo/E
GhrY8CQeCGOgXrg69gGTrhC2x3NBOM2FqjlwQ2kH5/7thYat6dya9k7KI4l4uT2n36334TYrpZ5l
cKxHFiYEOdlmXKozCU2iAFiynYSUa3KEEAKZ6Ag5NxCslHh0N9c/3MlT8eCAPFVj/SV7Fz46fbyY
s+WgZOeiBQB5oyUgWfoz8RoPo0wB7yMoCWxNLN+6tl1D8xFQxrFUy4RYVXuxip2rgnV1NsOUl0rv
VERNHRIheKJwU9A+Etb5vs99LTuStrPFDUyNaFKc8tdLTMuG1PShfgZ4/ao7HTSuS0GVToYN7zWz
8svNwEmJEwnDfFwvsEdsQONgLNEwSnBdIK2mNdsqDIqBwvHymgBMmGGFMgRJStfMwv/V60MO8PsE
jk25y1qmnZp2gdJ9RwlbXXXbhPutffNQxF85FfdiysCu6io2OGLmadnD3VSNU9kSt35LtaQ3vIuf
7A3W++mq7Qhi6/HmCRzy+AVlV7UvKxm9MxZzT/C3F6S2W+hNrX73XUokXY7fJURK7iZpM3vWaUIZ
5XOOifEOwYpG3P+rlcIVTdRBCF3/iZqvckN/ngzC9W2HydtJFG2mhqV9SZil9GtCpI6HnezJUx5M
q9cBDCJ+UIPbD/t8oTo4pU1s2CuypXA+YvHn6JMb2lVTdQZ9UXMKMXrsk1d3x6mjrlChjRqEF7ia
rfboQrTkYIA+z0dWBnPAvq5oGyZ1f2cwOWZrSPX2DMxlO9YlMjtiDOsLglRWuYrHMymr+JLbXDsO
zM1OztlTYmnL/ZDLa6PvcEAXgdCPwemF8aHyuQFx1xuHmep+mzbdQU49bNo+Xldo8P5lKPBLuLlS
FA2xJmhg8aLX5ycbJ8vW08XSxjUy6AJJp+C2f08iwZJvPsV56H6v8FqEeRqXMN3n9RIlpU7Zwfvb
L7LjX8fxfNYOHZCUteq1TX6iXWbAHvoGv5qqGxJcTALvOd47+0jR9W6boU2Y/tQ3ng5UB/bWpYWc
b4X4VKYCIJ5+Y1MjUY1tf12nLSjUanoZ+Xhbu48k1vg39Hfn/RIXKwVRB5uCXHhrn/S8BAaoEeNl
mJymWsxj639TFiUyVUt7oRN4OCN13IdeyHE6Jg1VRVe1ocC4+JtYvpP7MJE6bGQ1TEYnFHQHxO0B
JipfKleNoe6f/q+xfkAGhD1Dniggnitx/v8zxkXu8rTlY9Qn873W9q4ARZCi02v0gEMC/eemyrIh
FEZoAaeJVQiksqIKjkbs0Q+u0hbhl1jz54rYsx3hVER6+dGz/TYE+yx3Qe4EfNdBK9t1zrqANHGL
6CwH/rZVsL8TLwxbpI5SLgtstQI/j7/TJXqA2o94qOXeEOul9dMJiAhryqahtBOl0r/kessK64MN
kKw7lQq6nvpqtJfhGPspjttQHBn2T9Hu2bjVnJdU1k73o/yjgafqEUVWT9TKsiRQxUUFCn53fPHD
FhJ/5q/s6/BIlz4p4fDFCIdy4A52ssp69/aXgM0o//wzoVx1Z2LLF481B9qlohv8PaSuv4/SDclY
0d4QTb6a8iu3WEV/h8/03tmRgrQJBaqRwpchIo5DcdO2moYAsszE1llrgnxc6b4Q1jiG9gGdsItk
G6Df+z28eQ4JxtzXlHKUfHY1rU7Ce3naMHikrU4+XkChMXxCiW8/s/y/xUTEAbfJN3cgbjztsMmY
vRhhBFkg2DN+YiX2cBcqyOWs9SZfIoUVLX/TW7rER0qBgiyK63ghnDNoSK57lO1RoYRV/jbB2O60
JGAyF3YhA7D14Usvl3bDFF85bARtBJSsr53hmN/A6n1yBCoff3bxfk0sN/6BcG3iBXiO9bz+zaCc
WLSRc/Xqpyvmgu/RGDShuMzb9oz9s98SxUC8LHVNBSzTv3k355M5Vs53KOB468gAdEGy/Vpq2f9q
PaAP9cSBzVd8OdrjOEJV8rJTPgoVxt73xI1GOjckcur99U93Hjy3uJeA6TVYYFIRD4Mvvz6AINPj
lPxznZE6MMx29opWSPyYabzl85ZS1w/jDqcF828Qk6a7S6tURfEdS+g1FwGPdfY0Bue7dFzbXdOC
ME7SxlyckcvVz/OoaKmCTt3s5C2OmoXlu7u4d8Udri79c4TJvRA72H5C4YFa4T3B3JED+u+cifwI
0/afiqGDlQtwvUeas4PcQ2GxOJiB97Y0+4mfRKLW52yhdZrGJAJQdro5Z0tsabwkyBAXuBjFbH41
USvSnoyenZDK6F5/kdQJ+5bh+GNHjO+b9N1Vk/xzRwUC6B1lzH3dde1QRRY6Ty3sdbgZVPvL+P3R
KQ1ohprqZCt6WxGelf5negMajcIMWxzlvEFvWqe1UODbaNVbGc5HDAYLUR9m5WBj1SC+T7m+z5yI
fyyTk5yXAK6Y2fxeZmGN1Navj0EC0xSsIhND0m0+Nb1CuNa2JmVftJL579aSqIhgTZFt9DKKqkao
NtjQghGZfieWHq676YCuh7a4OewAufZmC4GDlnG2uzrd+5n93iGqOAmCL7gTxfZ2+W4nEfA703zu
VdGRoI5LBKAd9+ML5ngSefF8H7nOiTrd4juMw45LdjGd73aiXbb1XVL3M8srbwkDE9TYjtU2FLFM
TCE+kWZ7Jn36KcyEAZNkmmNXvqbteiaZGNDAJsq6oR9B8nIEZfZlXWjn3jNMW/lbRWEKoIrSAIAf
FpxONyonvzs4kBLDm+UImyFMsHmTpLhtFOwHamUEYWWsztHPQEyWnACoL++Ue0avtm4xSJy8OOlY
mqLmMaTfQrYhsIOMgeY8xNgDSvqcyA7mgPoQ887RDfjnglaq1/1NQoAAGoM+Jm17tQkXMsLktIyw
vm24as+oQEDlELrjgaFYuferI6mXUZlyp6Au8raHNo7QjYm9p8/LkDBg6JDjKN6L3h62P7fKY7xw
YbiaMA3ZncQVEaaJKSKVamSmQu41/p53nLURS6m3Hdt+vulY8wIaLiy3iQkXPqRP1nTpuSsfTY2L
1hpQMu6oJN8cKxx3HvCJt5SUxqKS0WFf+hHhfmR3heJ9BViFX4RHWYRJHiKLx7BwyvQSsfxB3BO2
ncG6Acv91EepT5wqxJY3gBr9Zx2vjlgrB6A5KjnztAWwgkl69h547/vkIb408scoOkz5veGTLCky
6eExfqg0DwPeucVxl6E/yNFftLqIKJ71P8BsA+Yzv9+kSqPGkBk9YTwsCqOUfRLa7Ru+fnjT8Hdx
DP5hzR1czuufCeKU1fPs+YccrSdJucnrL17+RDR8sNBAXcs2Zwp54YlBxmaUCQkWvpOiDlVsnuEq
zkYD80PLcf6My8ZXERmFl1i+YFRTOk8GnZOPF4CEfR9bT2CmGwIWdbEh30Yv4dQyqg80KgC09lkO
BK4fgDyAyMPF2T/AV0PNSRvH4XwDvzBWbyzmfwec8TYfDEnUBT9V5eKUQ+yfihy4oVRgKucRN3Ly
y6ksvP17A4xVwoFXmbkmugh628RpA7XAyhL4zkiY7e4bEnohRBtvb44OTYVh1SF3RLIGLWGluhmR
hiz8wIRV4DgoDXNvd8/idzaduRFqaoqkca8LdnSwF1ybse2enojymgV8i0MoyW7958QClzG/GHwb
n2frAlOvRTMdt7LyXh7FgXFWaAmbcj2ojLu/mkA4Ii2elzSnEfwgrkR3VcMPnf1WCPmjqfRJ53Dv
GkKF02CXk8qyjYAdV/1wV3ub6lAtQWT8WWNKouGCs7w36F0pzZtNY/nOWJqdZbDA0TOwSzXRfNwT
nFJi8logKyTPFUZ1krSk+u0MOpq/g5i9jriM+zSfsNjlKKFyvJqQZiYP39NWKydMRMb3Lt5vev0K
fP8c1epXKWbfN5zvPx/NevM0Nb7m5EuvjNMZnW8DxveBsxMKUilSKm6/5qDpLm2ou4mXAtXC6JzN
vuNgnX+hQpQz+LW8h3Yzl/Qd5k3BmXvikPVpaG7rfrPxjDSQC9QaBQEJ449Dpc5JfsXySXzCq8Bk
hH6WNh9JprfiZNLTT39HuiCL2m2UYz3ey5nFNnT6weFMJyQ8ZDB4o3H/SicXFeQqNRrtWyCFIPNG
y9owISjN/oYLFr4DP9rsIJiYXnj6/7c4RF7JKXL4dyNm09K+kWFAsozvOVQeuvod77JYYrIRFbWB
pNxnHgqEOr32XRB2ApDVzt+KjRjHIonfxVZ0JTy7h2ax1cCa5O0SzT/WfG8KH2lJeXwuKZtp9hvq
GpO73AQweo0+ErPQnQIIn7Uo/GD7c5M+jJ0QcP/EVG9tw5wYCA2sn5hUUsnDFt9OLSDrRqIyXD1T
8WmmPEQZc8ES4t3D7VG6Gt1mE5v029lNjgiq5lxKYhQ/VWow8z+igZHrd4Nh3WhPPFHiVdrQ6T7g
C9gjW+WZE6rOCN33RWfLNDlNEOtnAnR/VP0VfmlsUctKgFhUgljTwhuClhTcq+7p3jopGrgb5xtq
IbC/F6qwVO63OF+w5T20DneY+f+ERfzI1NogJE/pmyCfnpGF6l5DmuUCNj3wX+J8K+agwf1Gdrw6
oDG5RKyIc439Is8oxLGkjlDewLuYgi6CFim7h0m+xL5Pvwdq9JIqr+0W/PievqwcCl6EPdby7DLi
zJGTu2p1PdoDkfZ3e3rT4SWvM7KxklxkuIRSBjT6SYY3FQLbVazf0VS21fKkyEVM550EUBsPGCt7
UpAvAt847KVljFIFz+Apu8U8pyeJGmeuwxe3mYJmaQlzYapEOII2QDlyy2fdpMfKblbhyP96ovFu
+vvIwSd3OKZA9/zZCjTdALuzRftyEyndyg7EQ1aGyxTpSlNGedjDj6lD5pVPgyTWbWKqQTRC27Ir
Xcj8j4M6ho9vckDHXQVtHHjmSjHlmbQBfJSM6Zl22i492DZyblCoInRt1bTk1Q25Bhv6TsUJLGz2
1W+vFavNO9byn+wx3kQLtky/rAYR79YG0kGV6MsbuYAhLFQai8n2jTqSqaWOsASE4OfnHatQnC8o
I4MXK6jiHK5u1WEk6QCnlMPyGVZTMJKmNe3oxZ8vdqFtIYP6E9L1nsdJXuj/ELnPDDWr+6pPI2Fq
w02mF0f1WhZZ4NIUKxivq6LTb/sfMtSikmrdmFx94L9cIIIRH+bFnDu8U5QJplXRim2ru2PMHU5V
kgxhWtwWbRhJglaC1VWrBpVp/cxYGSvPmrF4IAPTerRFWkVfITjfjCgtra+LUPHgVXbtc2oEaqsO
awJ+gAgJf0jUAO2YQbsPGhPHNJlxAlNrDu5lqN3XQ2Ws6icqLq8q3aCSLrfsJXrhZf36QetQLDy1
Yd0yKAI4OggROACa0W9H/d085fQIADCQYZUHikh1iC+6UXjzj7s8cd9vfYQ2Dtiqr0x3c0MBXv9c
6PNkeyYoh3Rq2fJ5UyOZ0cSd0gnqnMBKaHBNNm+htim3wG/3XXoFSmWPZSoMholvlm14ijapqzkQ
MZu2CDGjSHcW0RX0cnHOoxBacvW/WkE/fTs+rGYn2LT9f2RixR/NA6GVUHpyPxRT8R+HGBHqnpCK
Q1K4t6c44g9y75pA8XceTgrChCwNV0ZfMksSHGkCDqvQLZKTAcBjKBGXI1R1WUfNromLIq/OtCta
R3po6XnJaF21MwPnxom8QtNWxH/7n9YPzc9Tgv48uJ08/8fX7MttHDEOAdK7ILfskRYkMZhW+v3N
Jln4Q7Ao8YE/g/pJ4BLvK6UaXU2ZABREZyRliqIZmJV1n6O1UrL3q0bZAvgnul4WgCcf/6/AoYgf
H4W9FQ/A85M6zNcIXmZMaPA0RKFdT1o4Q2zU528TyZKacmfhpc+zgLy7mffgbJwlUYmuUAi8HmTp
mtn7v4yfD3W4p5a2NBP0EqVw33yP2UF0igGZvHQ1lFSaOn11Z68zptyZVXtswwEqwJ7xE29uQQqr
QnxLa3zJ5dtbzQiV/2ubCV2sdlXIDEC9utzS4Su87MffjBRBErhW0d0FUbdLtygDyqwkjTHZRzjq
rMV44WRSCMlx+OnkwEDkr4kUfl40rONObfE3sxlEba/GZ9kx5PFvCggE4rTqo7XvuCWYc2bxITZw
sfas6nUWPYn7sx06drwhRn0mpRfQlRV4Rc6bJ0zFubrP9aytXstnIV4AqljtpEtpfvWzSS8rADc8
TWo77mZ4TXKdzVYBBi+bbEFr89hp+KEzgpFe5i99qkcnxDszGLh/77TGIc+cLWS8k7Q6/m0c/q9i
Ltf/8iWhWQr9JjWu9jdDSJEfafZIFr1G58AA0gXif6G+YB6aqjqNFHDqzt8sb+ESMMW7osSwtOoy
hguInu04iTPwjr1vuTApJekJFuhkzmwd9ZG9X0eA2FbdDwvT91kuSbIYSLLe43RKf3F3nVo3JE+I
uk6xCmGWkFt/QgjdhCd880Rj6i2tSuJSVVrnCCUlT9U+uAPftjAS3ld9x+jPIQb9hEzvuQCm1vUE
leBcLDE7+wB54Dicbhq5Ne4+a/reVIIRZ52X/fZGWYMtD91PdBRRspTcY67QLWrz3p4J59k/eXI9
02ZCLvIBfFNHThAWEivDWBxUMjJp0cW9TXy4yNaIVK5SFyUM6To7Pm2phKkyCWauOmXozWQWGuAb
TCdKlsz8DEnwH+ZiRnMaI56v0YbED10jl7IfmqATyroFTrS95t9wJ6QKT/KUPbpUjPExa08WdTPu
LTJp/Y8Ai6/Ca5zDeaxPfw3RqlJoO9cxWDVxUVf6H1iqYTY5HDV5t+cUB3gt8AMENWZthBcUA465
HJhERaNNija+fuz721TN+htPKm1dNOxV8MvK8yXadbkuKhiRC3wiwitLXPG760hNo40ebZGyTNIa
4TOflmJkjlufzle3loDUQFxa/jSgoXuF2cu9N/wWJ8oNm8nHKhRCd0Qiohzm7pqRUdKOdPuCR8Gm
q0vzWDX9LJGp2vNrlFz/vk7fBMde/xNVwJdeH8YF6nkSAeK3Obw5USyW6DfnCS821yFjO1eN50oX
AEQru5DUH5S4ROOaCjwkheyktDuyuAkGVeVDfXr14hCZpMusT8rgE2MSVdQ6Gb4f2PTian557ReS
G6NKtVCpf31FsHa3WSERAStEI+dtEFgFAG22vPyaEL7jfIvdHcgjkedVH58N/gEo6e1KGnS4Z9th
X1F7SHWBiogJj5q2q2uRmsxKj5piVcOVExht1gim96qm1ypCGzDVyzH2ZyF6iFsrtNxjvO8vDjC0
p3ug959qjryUKyr5/Adk6gdgeyWxrImpg/UrsKZeMP9f3nt2teLVCc0zJJaRbhf7SWbYM2fGY8b4
8TvNMNQH7BEdd+CvHKiahI/fS4nW1r1HwhUEE8VJyAmvLuFTxPY91DMaVG3ERjOduI0uTnuusOga
W7Kj5FhW+r+AI2v8LJ3RijrgzH7bJ2uBwVFPy+SdAJmEpGNlSY/gjtJfpNfnGSicYY3iG7EPpHow
n8fYO0uvgPWbRl9fi3W6LU+NJKYqrJldo7hOxOR1JjXMUwdafyeBU/IyZoM+vgRmCbDEjjajtR04
hMSYbrKm0dGAKmYu6H8lrYr5Bjiv4Y900Pei3K1EfHTqzUbNulvcRf7AFH1A32rmuYBakFEKyy/V
QFaSIxQzW6fg18GtCnEgpJ6saPDErUdivyVB4igsyZtG3QQdFl+8dFqSMFedvrqKg+8TeShXk4NJ
IpjtO8NMpbrFc8mUaXpEYY07BHE8FADWDhZkHB2EzgkSugbEfldbvDzUOWWYrg6sPXygQmYrlw+R
nlYNG7VVhjcaI1sW5eq5nD1+9uwiYJKWtqYkktIYd74omlFlYy1ddr2MH6YZh3uHhlNzv3ebe42H
CouHZd5lkQxBPag8sICqZhya+1lhrSVSZUPohckyKMY/wWuupJJSR9om7GLPIrvojGNu0fzN/Qve
pGCEBe7D0n2JZ5JfbsJTin0QNIHEpwF+bjWwHV8L3OW7oSnK5HL2T94SOQu7zcpnNQ6j8XDZeByG
5iKWEamma6ga+PllJROwO/UtrPYzabGZY7l2zs+2Dt0axWzqOcktrv/ZztMkGwZJSfhD+Y+T53vz
nNOH+JX6bArfHQjWV6uip/PVMJj9mrjn0GG4O7EF3THS3GuvYnVP9NyWvfpofLjzXJRnTWG0NRwN
CvThTJWU4XRmHVy9tRjuYrnoqGja2O+azZ66EEYFb4Ges1oVwAvWJSsDWVvn+v8gXG6lDGryZeu3
Dkni1d/s+QWZIi1ukHsKMrNOCQRBNB0NIULCo6HlvVH27qacA5tFzHBZj2n5xlEd9XLZ08kj2OSn
BpbC/QaE49vuqodCfiW+wP+fIMmLuGSxO7xHGFYuvMZPrjnPHve7GOGDtrgxIEPOZoMarHTaJmpJ
gtuSEObWK+UXM8mTfa507pEO2GyyEMuIPOIMyxPKafxNWdz7CTxBxY6znMJV91ityXz9Rvx++1iJ
KBSf3eDtVZqgRt/uD8uHHw9kWnIlts9Ou0aVDmdGDkbNj2oKyUSRTUqiIb1AVc//o2n60rjg2Mu3
VFk23mrTeyAZKhPEKHvWc3gfCI65Ny5VLElrGlKidMaY0/wJpKt7SUXAiYyTYLfPedzKUTzeAj26
Bq/QSLP/3kj3w72BslZPU+mCQg36OECok9guWxWCwFQFbRJ+lBoL+UBkHm7F7eWfJE5kVCxLy029
qV9iVOIUtMovxV1mcS6si+ZW/HH2Emyp4kPr3ZUExu/jndMhASUPP64+Bb3kdP5z2OeF6sSpxyCg
7zCxjJaI1jdw5kshHSmjDMjgJ/sZkY90qPr1xmMDEnFJNpL6cvjyZ8r5/tHTPA1CPpOtqKWPHQ8L
+A9WD6ZBu/ydw0OqrYFd95WUG5ngx0gsMzAHalgZ5H0B8KhPkJ4OyFYi56Xv+gze0SQRj+f6+EeC
2F1uKcXZkUXhgKPxC5TMyX4K7DRkBDx2Bv7JWbKuvFXIs5B6emc5pqGD3Rvr418IzcfmfDtQjUpl
S4Mrk/KzESZ7AFhvqBa3Rv0gRi06Y2Ww3D6CoBd69Q/tP2oESk3DBrjNDI806sQNRD9ZcaNgViz9
1Rmdc7dwwktuoao/AweF5NuaOPXuFQBsUQJbms663T/LsnN1VRPmnHVzopuYkMMVgFDWAZhcBmY3
wo4UPm/t2DnRf7ObsDpVOyp1kyws8JnNMqVymKCmjRVq076GcVxFZLpxpFso9Zd2JGySX2v3LA8k
M9KEqeb0bSU2IpGaBER+ioUU0O8nw2kZmRxPNZuaAMV0mdw17Mar+bj5VZCzHrIqQLpSagpLUIHV
hqb+pyECzJKqu82S8T2i5Bg9+e0aZcteUrHMSG7Qh40rCXq6mpZAcLWAdXKLnkOjnrGanaQ4+/3L
J5iotGDa2DKjJUzMYvhkIy/7/w98EhXeOnWy57eB3weOsU3/xSDp9+lhL54dd3e8SEhe4v3E3ot1
kWn1XlrkYaparvtR7JfK3tOIOZx++4X8IsQQwsW1tdDMOX8Kt7ZxHJRe7xyXDZg/VuxGulGgBuHm
gDDMNwBuzmuH2VpqhtulcGgb4TfoYavt6BPvw206atmLUiLezr1yJVAotwRnNk4SwE6g9VaRpJPb
HaqFOgFeOsLKDAFdp5KCayo+8sOKa4WP/vadmjHiHE+2iXyBJS65yzmPHkcIOilnd3TKiY4vDBcV
GhgCP+1LafuL48zyDTxYnK0cumglB0l4K/UM+tpylOEpbKJC2D0j9113YS3TrQ/s7YZfJNy3cPKe
GXFERtk9XqdUhnGp3QTvV02bIRG42v5anBUzsTyvG2CmxzXOaVEGnH1HzvKuYbh92kqwbJGz74KK
Ca1kxFcMknpq9pUifBwAFOQ5f++IVi1DHqC2zpoc2vKLZ7gO9Hxw4FU/V3NMgCynGp5eqQSqKGad
LbgbMd0C/LdwHJ0+Tap8YaMlHQbUnN+safQhB4VEhxGAykeEc8jiKt0q8JrIOtVM8aAbKB2sTjrG
CLbUbfinCCzaIhqis0xzjHWYznWT3JVJ7XZvHY+e/6YZylCGywa2zqqNEOSbwPhwfKdcVlB1/7+0
7v4Lv+gqHjFzXiOwV/OF9Qu1UtO1cd7Ej02BKGr3IAYeKX/nfg7hye3kyk9l7dMp6AgWFC+Kuif5
gnHzP5aSy/eIbqbwoz/HuFbJoheHdGceMKaXYUTtBlUVsaoY9gTzRWWvCatqAI+PWcC4RXw+PDcT
5CmyPLAVmaTWaRHAzNL2El5MqbxY0xp7EHakrbWNRVG9TC/yllx7fjqxjBmRXEHrJ+UR76zOMuwS
1LnmGEeV+GRzlxd/F3M/TDmW4YprYkIRSMUoQPp/B9gAZ1jgG/DgISCjr1iX2fSqrVH8+xyt1FKj
vmT9b21X5ziKPHEIBN6rHoXocynNIwBEIckgXkx3SBKNBabqgu0WMTGkPWbWU7cuO+ByulfxPKna
estusqvyhn2xvduGQ/12dKAPzKx6u6YUMHU1k+zlOJdZFwv1EFi0b3cfiRS69pJ5FahmGYHx+blX
raiXoGmUEqFUw+MYfkD4C4+fo8daVkVRMPL6pNra9bGMQUwuzoPTj466cUJiSuOht296oRtBz87p
5r6gDHOf/5GVWKVgpHnSWkJVlSOvQHF+nZzlsbE8kxGwcTfxNo53gVcpx9ixhlefOIaaB1Em2dMD
YS6huseet5JHrzFvNJAkOH/IafrSzzgHGat/9dKUp/SrrSebwcKrx6kCEatcA3bnwxeyE8XoBq4I
dxy1RDXG5kETjjC1dtontVtfFDbwCFjrS9g93m5tbnUlsUcdyaUOye6Hs1W2sx7E3ckc7hbxsg7E
wAQc1iB5d9cThiu8jfmkD6I9a47gQWdHKpIw1qXwsedrQo2u8nUE3yTbbWmWJi/g+6ggj4/p1l7O
dEckHH5YsV3DLyPDRfz0G7KwW053Nk3XEeY2UkgfR5+uKLYP/tQrDb6AH4U8GJAbSir1oamEkUsk
PIpPOPvIVVrP/XRcY3bd26PwyDWPFzA1j/PDB7RxcfrZl9Az1B3URnD4XC4LjpqM1PTAjHty8LEM
eGrtD8nRDnf9v38CKPUGwhnpc/vaL5+RCJ6jZVOqS6wPs4IKjAXyPpGVEY2CWIIqTpn5fZtkvape
lfddWcJxtBIZCOVcS65FUGFGUR8xvVV26a7WNnAdFivtpcW/VNLPen9S0vUaitt7IL2FdcW+INhl
7DOSQKA+uATBjm9nxyknUYqTbUYhfNMAgcSSl3GfYZftD4+yrkCNdATaW4fVS9IeoM0AsaVcdj1r
csg7bsmsmGSuBShmLfXCc8Cusnz3UjwAkQFIDn1ovNe5x7v7avxPZXS1k5ERBP8zgxjX87l1bdJN
11/OaHCoWmRSvmTWAJw7u0Vtewe5dwIys7QWRikaxZrusV3optrFg2lkI6BxAkYFoVPc0aguYO2+
aVACvK3IE1+c3JIM3TBMevUDuk9fYxtrifJmgGxvpZAhvsymZKMIr4SaiG7L9hRGZjsc+wSGT0Ti
ey9bQ+oQdISVfOQzNDcXUzeHBuvgwpqCd1RKlkW7NxFv1TnXvWvRCOz1F8M4qqpaDUZS1WbGJ6gU
niZznTcWJ9j9/rjqMSxiTMjarT/jVouD6xHTlAZfg+gJpev4wTnim1GVwBdd0+99YR5lHkHEu8xr
nohrAYk7hRWmeAqpR55QiJmfItooZ92SLxWhyycGyzygtssG8Nb58vTezmyB963TB/gyVGYNBgVn
RiYDPeByAFXabRUSxxmDYPmfq1fQ2IYObBwZxpzstSTXpXLj/6qH0uvoAN/FbeVDgC7wwaIJCYge
GPFJt242te11mXtJewFijQnMF2B7x/Q9O5fgBAFCgNZhX5DMNg5hiT8X86298T0QJkU1dDyXU5WW
TGwjS+msHpm105G302w0qE52QhD4F0mSlZoPclHbgu9GjwCBnoPDgnuZIEhhMNB0rJF3AXn5IRiw
0RzWLqZXfARZiFMjUj+oGPFJs9lLFO20Hsy+R5S7B8GSwoGrF7aNlAuLxxvUTkbZMwWCcFTj2+Uh
eG7oAjfEXwOlpvOtNZqFWpNh7OnoKPvkMyzhqO4XqfgJlBylaL9e2pCj7SlC0XnDJsvyezgcgS4o
eFPhnBy0fDiTqHG33QJhm995fUfW4d/9DIJ7S3qeCp2bov/O/6jIRoMyXm6w08jgqth5YvPQmUxg
oz1AkGBmXn2BVMNFMoc9Mpe8KYeYdi6LeySal+SDY3ZbfHypQXjpqaVROsuKTBrQ9qH/5DS1xZZw
7+hYyREySIjUzGpbLJm6P8RXpUunYih1kNtmk3k/rK+ICTiyDRp8tfJW0lwL1CEmSy9PLkiI45Si
taFxC7uCl2NjQIJxpCcHKJp5VdFD5La3/y2XozzlCbKmm/MH/95RplOjQWFGtDY5W1erNvgxoj0l
Rkxs0AKqGQ/hjusqG0Ot3OxhrcGNwnSV0oZc69wK8sb9EkadX9FPxRAh8SitGe15E7WZDQWcyhle
hBAVkFX09ipUb0DNQHyOXEWFYLEh9BM2w8b6TGg4KElPxdsk9/6TO4SPu/j1iczpeVSXLbFmBE25
G8e48/2Nw6zUSijIJae4/+ZnhIAJgzp/KjetA6YTcSB544O31pF8Dy3Y6wNKEhymaHyUM+3kmi1t
kUHSgNxT1NcUU5+2PY2DNiHxIFl59tPubOhvKbS2Twq1nTQaqZ8B33Oxxy/eIh2B+2EjRr1tKWbB
VdNYoFoE+Vk/ggoqZ//ysCldZMT9O2JMU9e+VxJGnoEsAPxHiJg6iRt4qD6k4SI2pmwt4+OFIGWh
GYcGncF9h6IwGAuQfs3ocVjEd+SlKpw78koCGpLVrT1hfvsxe2WfJaVsJKi1HvDL/FwSoIuy+d/u
O7wSZN1Lk5RimMD2JP9mCEvsFXC6od1ov1iqBi9Fyuti3fGIs4BAiut8yIYrv7ybSwBuw4lP2XRz
0eOgCqvGjk2QaR0a7lDXyvrB374MxvAvH0EEk7LPnarMrTS9Xzg/MddafBz/c1ZorqvWGsRDmwDz
FOUCEF5Y9F3OFpgpyYgDWb9IDeG51MCJY4LDERkrysYgR8AQhGE5tz5hn1reAtw4L+7dkviY5+hb
iODtJL0cba3YXGil2MiV68TA3YHRYlBkV6uR4OeRc7IX1oQoBpJUyJrdxDRjVwqRImv2KbNR+xzs
HD4iiN+2fXbPtwhfpqDDkeICjzxeYzngi7+K/m17krslWdqpAdieDtH00T1vrPM+VHY14pLDdox9
yvXs1iQdBQlDKlC2zeBVWBqu1RiuvFBD71ib+d3b6xUpSnTVMs45kkHHOg6ziNXXG7HVFzE3AIsW
uovWfOdNqUCQtDxi/pY3TDBa3oaOG5E5vliNBJ18Qviva/E/e2CxJDrSnBE99LEb7qwdmt+MBXW7
Gu2ofl5SUV7j95e2OGQq8lfsxOHTVbbHlOb+0W1iCX+vgJo6AbWn2870HE5gNyO65/wJlPra4oBl
kEj2IwdLs2BvkIcXwxtbMNVrXHYoUD9dOhAyPnD58oEojn3GLfd9tbSdN2Ek3B2tZKggVUOtE5hX
+gqd9K71zxxCNwc1fxJI8dqAiS4d7nilruQDyZm54D5BE8V3MT27t1S90bE5Qk5+K95NDvvXc+LP
dqTlXN2UyNTOl/BzSjGh/002KGPFevkdhIbASb8J82QbWirsXrpKSE8hj7shSA+TBZ26x6rqGKP1
1sMWNN9rWZvjeO08Ez1bO8C4bQ1oP0euaBEYzZqkLQggmh1034EvOBQjKgNkDKusSsi/P2zNQyOe
rmpTPO9mgvUxgrvt8h5YeCzeTVW+0ikZCdCvPyrgIMpzvciuPLKq3OD21MpI7+MGkk/ON6PV41er
cLrm6NOr8Kjdmy+h4jA4jQor3kqShwlAgopDOwbnP7mUVEqeh+keED9udg+5/G0ewvmID0gASPNb
gnN+A1H7674MOFpGstxn3Bwwa1W0FVyBa3XDCyd0qxrB50lvC+9ozSy2JZ9H73v/FQu2bAOXqtoI
irnCB6wN4/ZwAyycfWJXVlE+3pd+nfrokxGvHoZwDD4881+7zYZB7Hoq2oobQ2XoEtHaIbuj+9pf
k5LUXBWyNGZx7UkBUFkSVLhSayXiuix9qyfnq9q0/brUBry5kAz7NF8bWbTrMr7gk41r2C2c9AOm
o0s6suoNoDE7P3OlGHiT3/ea4Onf9am1yEeMozgUbepGknA2yB3ninHiyY4gFd2ZHnwv/oA0uUU1
t83JZrm+lDUjeb1AQJO6ZbFR8/WrPA+s69g9QvfDJSbLNqW0RpMlLcDcMfo53JzxowTHeWaa8J7o
2WSPqAH7t4iCMjdsNn/ZsRHRLoUmnBv456DxUudbC4V425V7yCLSsJMGfi86xhTFiqpUTu0YfvGs
QdnG+9+pXrFOz2doZMvlg6aROkIrVtkY77/ZhtUJiSDW7ZOX+9dsd+R5TCqWIsFs/LkxLqKlM5CU
QjuAHMNUc+5CPSoIVjHltDxHgVpH+kdU52lUh+bNqIsb7uLu5CPG1XZ2c/N/Pct5ZqNesH5MEZT3
wktczOmXpcn3vjRbqPUE6NfQEzUGQ6p+JwKWC/K8qmVDwVZAAcgw9BRdKQW1TNjxaTEykX4ngBFm
qx6TTCSfzavRc/+7cMri8cgxvRuoaZ5kx4Ue/P2IYfezZd6nKhDiQ3MC3/ILqvpCZc4o7+md1/CS
2tARdGYeav56uQtKFGMXuOPv8y9lxeOaCvOyIMwuMK3iUPL5Q/6NG3EcjS3ytwzIzC/XlL/8fMKW
++5Y74EFX3zmIpO1CV2ptxZUyJvyXh5b9NUVWYQ/VNK/EEi6WWqWf9PAT14RrBwtZnC1Oti3Hv3I
1e9EhiF+tvrsjXwtFbzYFl+AFfdNBOAz1xblH3yofy8J8/NXuIb7LokdD4ZBk4OKCXEXBWVdIyrb
n6GH9k32u/EpZSIgaMYorgpZCN4kmngHhQJkofnZyEJIZlKRutcXe6/+8aIB3Wjd6PYy4SAmumel
8SwhcGLghkH6GhUjDNhXAuwRzr8aWcooC+UyTQI++SlgyoJtqiOSnCCl3yRn5J9ixbTrCdMD1yGO
0KqrxsObJuiuWjnfZ9MfscX5zfgSX2swGdWicb+DA2SgaXdLrvICwYFZtm+ImS1827T0QM0QImY4
QkG+YJml3f5y7RqKQUcnoX/JIYqpfV5tcFQZ7S3v91S5ZYZI9GHEUR8JYafWVWGXlgqDerGxfP2j
Zrpnx8VvSPNxw4RTV5EgwKnkdcUunsFFEriVsVPQxlRhH6TAgnBN26slkiYfcOqGJ4VbW42NDjfw
sfKw6t0gaTggMDOFZJTCLUminKdOW0njOuwf3N/U0NpZZoudwfllTiN0boFL4mvd0dH5Rt5he8Xr
qwuq7hwEV5tYB47tjcrrWuuhKocr+MU9FTA6GhdZ1TdwDYWLQtL/cDhbauyBVb6/LkbIrffSZmvL
HIGQ0WKPRqcDRgHEW3beMy0ZPg/VG1RsQq1n3Vca0Y5HbU5gjgE1MNk3550bF7XFq4esVDmZaK5L
n0ZUA6qEhABIBm7Up8Vqbr5rTJaWv5+3bm9SISbdEjJt3jfkqGn8o+TtvLpb+IVGtvI6AxgaFjk5
UnOlwOg4hprY/qsu4aM4fwJKyhIap7nNDC0vpkTuz0YfZpQO0uSYk2PILepQXHwrV4D00ARHEF9N
ywgfANON4ueNPHpsiZ6iOxBAV2r6U85debYrWYX02BkX+Ze7qqG8WEVdyW1aZTjYi1iYlUza0Z+l
SSwcvsXp6bpHc0ASDo4vpHi7f1nGgnkZ8Aoo5gj6PXL3bmE1znzBCWQrpaMVbDiQy1C1bt6gViIB
4EMFagio/SbkLcwb5VRd3EqDZl4XdDaFQtnsQABh6UnAyQfl+O1teXq6E9he6FC1nFUT7Py3vXBv
b0rW1KfHIhcepgDLAtF4hmZiQ3XF9x6e8YwD5lAIX+JEo/ZBnvHDGLzCK4v1/+nIeN44un4LTgoi
nkM4RLk+oAgZNBqQIJuBBNIuhG1pv05V71ClnE8RWekp8VTTOeOickpZKCPmgw9dWyT8M77Y+svI
eNryq8OKpsLFKGUMOGXO02enwyQe6m+loti84FwOK99bBrBbylATgxU6l6SMo2e75shk0mC72OGO
SLWU6T60374123UBwyzAQFBZGrUYGNsJ/b1PzIHp6rgrTyLNKhv7JPc1++zhoA+eriHLMRWgmB5b
7ynWCE07umEA/rHmcIyO0KGFV/MWAUerl6pHHnx4GOdcqH6XevMjUHT5wVrTWC7l9zE1xRjn3o3E
mt/5aQyHvJT5xusH3AW5OJDp5xFH/O0IfOV35z/ccRO7uSUwODKHS2wF7j1EaE89FMIDt0Iox+S/
d0ArUfvfFMuG6X2PGsK1M2VJPklvqx62hwqDhH2KWM1GEEdgZPxYFItMnFrGT5dFEmtclhhW4617
+EvqU2N5/nyqTFjnqqQUFilzbvSHiB3wcR16H5tEv/wpveCw8weJa9+YuCSl0Fe9Vz5drCC2L/ef
GlwBqPqKBcRIfEyo7NC73IXvBfsz/aauZkyXi5pOa3eMec35xiUzfPdmyK2qrG2Hg4v3HH63n/zr
se0KS2+XUV6GX+kSlqlJpcoULGe5NtS+0K8Gc1syVNCNrpaZS81jlBZ2LpCStpbSFob0vr2zuknY
vjg4aSiibsN0W9+dqnkopdmoDbW5WXvbMxDr6kQYB0Z05qLFJ9kCvbLfie5TFxDZsXGvgEjXKEZe
l8TNaVHdk4PuAuV8VEcQ1bmqdmaOwHBalBM6dWaaLF42K1IQzc3doibws7v40fuvAm/IiMdQAMVB
jBlObhR+wgRSQTO1I3KhFO0A3cMJ5N7oYWMnTTpaG5aVAXcSx04UardADR51gzMO/cXWs5PSKGST
Ef/QLln6XK9SgZgmBxwrj/X7SWFSl6wyyQhnQABK5q7zoPEnMgRB5Sobxy6u8EdKx5DwBrZvOaBN
6QGWARGF5OM2IwQDcMcFw+SEzLS8UaT8biTT8NQf121G2tkM+VXSuaCkAB5c3nv0JEKz3q5+pDaW
WbAoLXn3lcBL6iNmUqyJC4//MmxHSbgr+0k2SHRy9bbQ3wJRtFxD9usXaW89OX68KVpv8beBPJ/9
zCxwwTqgQZOett2xFEwCQpQrDc1vApMQRZSDmSRXKN/emMD7GzPATF3RqV0hT8nX5Zw8jXDGg1Z0
Zs8dvs/5bEs2cQZjNC2a4n4JFDZXBPhgFRWGS6UAKjRzy6lfmW2wiNQifTPUCw2IFKgI8TIs7BRm
+4c1ce+txVDPFzh2MzpEXxJv396ZRxySSHnvhb1RoYR+hsdqA/YEaj0159A68daTv2q3Bm2HRss0
KYNtjztkeYT5zDqq8NK+B+Fw37RKZR6iULTRyySkiRXi1yHMW5DbiXTMaSLpL2sNjRHQ1VhOefqb
y8JAo53eL1jWvbUYLVpjSg/i4B0pl51lbwBV6eMo3Yvt+2C3qbSrOjkvtr80RmOtYWTAuF3UE7XJ
5Ve77Hy4luYtwQepZnVmdDyb7YlzSKYWgePEulvoEkd022lKQuxNOEQDnXNJn/H0ECynJkJdkxcQ
QVaIvjH/14LqwDmuIwsR5YsSl3+z7y5w6vZxVflxFv+LaUhJzD1JjgZfpChevhq8j2QJm26drkw8
iEUX1GxtqpoWgdff6seES0wETjU5DqI2HETxY2m/Gs3QoKn/D0tUrNBu1w3wsv5fz6yENkylsdXm
I5ixF7djnzNwUdpswRKeFDWBIWa4FoPfnSnihA0kp4tl+DYBZW2RWBqiAj3dPDvyhhjinnfT0tLM
GLS6gexWizid+1g+fT9oY6eEgGJ3Xcg1+SYu6qlwzXqfbL75ShrnsmdAAZKlwhwxeq6QvwxADOmO
2daxqKTtC/8tWnC/mkaNUexJvhtTwna+Xbmxj5j70v67VN2LZCMuOcHDoHMtqJdkLH6m3DDK8C8w
CdkG362uKXUvt1D3RMwZ9sRaYXPRRtVskdp+KTn3YUUge4dr+vk0ALjb+xW43gDXyUVpCfuY1iSN
5LikMs8q/amjUzYzROEOCLsT3gsQ7Yw8jcSk3wZXAkBdI363iHws8xbEMrnh7NPn9JBCeC1EooYw
lSfRVKRJ3NGnhGgzG1HT4Vq6qyeq1s5ot8b1pGO1tBf0oD7cvLFWBD2htorstdx3+/EHfYdvrwNf
5o0WeKXrurTEcOGSAcjYYfZnqT08YGPyRVyrTkXVYalZfmv3F8hiyml87m4liEKyoqtBp6aJ9LX9
d4tEUFccRbgbAqRi+thdNkRklk+8vGCaRXFzk1mnhqiGkrdJJdNnxP+XVBHaAnrOq8oFXN9KUOoe
xhQmhF8x2/T+GZALEiSm2kjRjk/QxCf8drzvrcYYwjXSI9kgIt/LhWStl9er8PWm646KcoCVqo/r
D30NGVZ4ZsGx43sa/cgAFzNygWNjswU0ImjVxU8gRWZjsntDHNtV2OQrM+SKVV4bH3AG46p2aCk0
Xsv3OlR/YFSd3pXG8+TZRhugoObIVxUnrHiRXzrSd0NeoU3jzxBwF50SLdgRElo3xYUXbXdsGIK9
ce1TtWA7KxLxdJFE/KRFoi71tve2DkrOpKUtRgDxfbwZ15GXYoJoqW2fGQwYt5opU9JW4CVWx/xC
VSt+cvgUWBRo8GOlato+lXYlDKMZzYWU21wilrSlIWuOFbrayVaiPrKVeIbQHu8xXDgAhHhayAGX
a+mh2eroBu+YPetOrKsRdlwG/QL+84n43r9XSrXt5zS1WmyCi1s/NGfP1fdy7SylaNd3u/LVfSyQ
Y3McnsPrqD+mh0BxIJfjABz0tv9D+HqjwmSMKySR7MT+IjNH78eXEJF9eJft8RxgMvkgARW1W1d8
4hbbjVed2NtUNah8cQAPo0ABxbvweEx/ZzjJ+DevGc+0HiOE2w3tL7Fr4xJAuAqGK2gfGxXTEGm/
infWlnbrHcJJR9qPQYSs4tgob92zSDqE61Z8+WINEHToYkr5gb9z3HufmVIFamk5B6nE7AlMCa0B
kEg0u09+489xqfvCpZJiPgJt9gG+dlbg6b0QHBRyNZRMQe7ToDD2QB0qC4YKfhHOApjD6LmUec3+
VJ+tgqr79G9uZqa3LMieYTgOHOrmRwn6tG2GbOJRDf0A9I5OTPd+SXIhqfHO1tA8zh+byo69vxAm
CTba5PB84pwcoV4SoWBp7CJFQ9froFM/C5Ofm2KnZbjZT1a7LeKsLCHbFpvnkOpUwCSYo48nNqK+
rJrFKx4La695uP+fJFc4Cad5D2pgf81+I41efKIDapx+IF5ZNhIHBqHB+4dO4kYnNNb+Jkhoe2GC
spzrAjQALr/BVH98/yCYK4SB6QWiijbK8Kv1aXn4Yjh3oPhyc0ZuHhtuYYpAdd2vJ1jha5p0wB0n
Rbw8BmslfBBXF2G9rcFiCnH3b30MrEiQr+GM+lIXf7ohRahsdsJZP0WgsP+AOX0y5cMFjN7jsKXl
psui3OkHjTE6ilyDu/Dj3FTwev/n7GfrTCLvzskkmfCcDVDMUn2BwwqpsmEFNb+R1Rz1kMAdL2Cl
mZy6acfCyEYY9DIJkDimOt5sEQO2SoGpsojCUllx6N6irS2DcCM60WI6rXlGWSESLQgzqR7CYPFF
NPETCG7Z/4bqzLwZYupd2Z7/wbG7gYSRr9Z3gkh/mgh2UqVkCp9dsgETPelcA4KUmO7TI86fYCGc
ziW6tgcoxaJEmBLBnQcuTtq3ZTWkMexDcocLSf6fLQ7lQghPfdMvYoBDj+sOOnQR3fxC9zhIOzVo
e9i4jvxH8bbT76uOgo2o9egYVt7cO4OdbIobzHhwSQ/Dqp3ik+z+5tMcXNJ2H70gXBwnpcl0kDsS
1cJb0GK0W0omyrFc9uaBECWRqIkQnYFcN6HbzDlZuxsDCe9z9dXmdogYTkLqnFu1doiE7TIuvdAM
tUG5rS2KgRZVLkmb4+iGPWhNIWqcjXPQogwgF7/Zhl9lNYsDyvNJgXV04TC+r/pXp/ItMntwsQOh
7ZjvQ+obX9U5hemgVECm3GmfoR++cc2vjNFVocH5ItytMuEuzRERBfDcIxkDZbG6c+GmOa9RpO8E
QMEsSFxgCmZgOK+p75A/YDdNklAHYb+FOpZAAjSCCeizsRNa8UqJbXI3N1xuZSVG6k1Y8UUlIGAL
/MBsSj3H2QXQue0v6b7Ju7y8Z0DB9sefw8Z8RTROwNVqpXfwWCFhrYWt5ume6X0Wc5brnVFtvbWq
4zNhPvEYYG2ihoLPsCzEowES+4WURViaZlotgrOuOZYGJzkCDoL47ppC5j5OMbAK82jmLAzGpiio
os9nnPBVDDZxYJU0vZV91Uot9TrBO1bIm5tMuarlQ3E8X0kJRNB8DQB0S5lEPKC+hEgAq6nxGYo0
lUnVBEfsB+3d350XWJcBh3kUiXCwewXxExHdwsku+ibc5fvFtTiBuTHzqzO2SGUhQF1wEul69HbX
4tbNGOYl0+2D1FQJqQsW3jz+OgoZzcdAuHw+0hCdFRZgBkDO3sTwuCQHJb7xqJ6oMF2pWJy2TLO2
SyHW9BW6Hy3yCM8OjX3wvyjVN7uVwuyBGqHJjcYCtsovS86zuAPrpwlX7MDQL2dBujfIFCwppauL
6s6Bj9cM8wSlr2p1zCDGLTsNq9NZj7VwVy+8BDeq3B3JxeyBhCkcJ2eOE3Za0j1RyX/YBol3B0Bn
snq/r9eAPeqfeHG4LwUbS6O/I13dPuzG4OWUrZuRKInHBs2174wSgVqHoE+dhypQVw9l5I/AP7cT
MU0coWEVBIJtuXdeom+E4muxvxHlO3WlG/1I8KrDQCMD7U6Pp57QmYn/43L4l5Gj9hGf0FU+V/Ip
FOKU7+RhEbBRnKsN1S1F/irQSczlsbvdKGxiCgnWmgjKJZAO+EUKRnSDRwnD3uBvbols2WHiwnDh
Jc/Z5+pU23lrdjJvHmaRLp9Ay1flICSRWg5XFziQY77GsnDqyOAxSFnAxKe+SqiwryzHemIfYU2+
+IdpG36xE2/uS/tbUPGh3PaUXEVBvhizNeUN3l7mdT/qdLGqMNwb0X8HBe28HEV4X0KPKKqyl8Yb
9OSGiELnQKzuxzHKNJSXhQpBuludA29GPKnEv6IkIVXLbKw1jwISx20YVup1JaUQ5U94Tent3cZ9
RF3e50M7WwDT7ITpiy6qcC8vk4lU/Tmr+RbxWuzFfTDf//aKf4lf2hvjMGcDLWt9pOZ7IH9mhK8z
iu3xoOqNP0BTXF4+TkWY5FDalSD0p06jqgUEpC62yvYYtkkoBBanSqWlDy/lo8xAnRSm+G9oFxTc
hB4EVBhb/MrgEwsrsXWAEF2JP20/FWJ8/967eCmHZc3MPdGZfK47YP5VS3R2HTENUVvoI7qmppIz
XVO1AbE+XYpfRpEYiKOmdVa2fIGS5bAAcmUVQabcN8cCk7uVB15wKRIIMCgJxiITkyuseGxOCi5m
nIxX4DwDOiUjJjSPg42jvJJrqmw0kI/+b97VfAKa38CMS6VkD1y+85LEZ+/vNasave0Mr8WT6qQh
ZEcL9Yod6Q0EGIPCZyxp5Q8tE4U0aizHd5g+7umO7nEpJo3/3X0MDoOqCiMpLmh3YgoeHc2qqIdC
w3NAkQH/Ry1q2tX5GxbVqjv0pKzxs2YfywZxcKwefgrTM4YMpUYDiwY37ZCwBhvf4RDCTtojBqTW
YgWA5gt83TkXyUKMragVWh06c0nRzmDT5MM9LW2DdgFx/Ywh3HY+C+3RnKzlYthBDMhixQtjUMEj
pOAhkBqct2ByDIkz0D99vvKMZFcl1mjyEdhYsy8X1eeFcJEaF/8uVzOBJncLDgjfo+OAOgNrhx45
T+pbbbJYRogvSSYod3IF57iGIV7C7PIOTSss5M1ksX2D1s1ToWYYXevZDlMIB2Mrfsfvs6mXFxej
/CwBPhGqNr5eoA4V7lmNActWBOezmOs+I8EwTfjy6pLiBPRGua+g65QTRch4KDcNxdlbo5WKBhan
cI963Of+zK97BcnPyn9n8f3C2/306J8F/GL1WJqTIultDIXFCfEOD30vxBOGdtbhxp6Rmh36w82h
i3N/wB2AbjiKP+K/rgaeS6Dbkdg/YpQfYOG2fHseak64e724FCPWL3/jnNgYpFh6A++qWaacxi4j
/+DMWCaCWNpStHaFnwkESJBuuJ6yRrumhQw45z3fIwyAphg8oWNjVaVj2L1ZR18Xb3Fco0nQm/M3
Co2jT60CJF07J+yJ+Dycsbzc+LtaJDouLEM5i4EVpkz7Ve2xCTBvzPCOkdpZjXY54ozxu+2w6Q1D
oWs74KTYy+GbDuDofzNzJg+FlFgHfgaERlmqSZsvjYDsGnaWyGp4z7zUz/ABUwkCaQmpxX+4Jqp5
sGPN7IOwe8Rxtge4WpdJg02LRZ+5KLfkZtVfmva1RAXbmSYBhTJ9nOnA8Mh2dqFco5WAfn+LvhcJ
Mp8teNbI/RxulhrtbC1mUXlTaxcKNmo/3958aiwvs9QpseH+r4mjqj2/HI+Wh/ykGp7adDO7udge
JoNwFwwYGP/wFi3dV/jDdrtDuauMC1tAyXMgbRRNeevmtEkerN2qUsscBOtRQzXd4dbGGJiUY5ue
swrv65Spxlf194QQsqnzj/8Wq3nat+qPOQr+HniTuo927dJJ5FNd/NlfZzX5GOYMdhC05/iTqdYM
HuB1u6+hXpKxXRyDec7YeM+HZsKNihT+BM8UDnFW84y2xRVPWlbYv72BBzWDSfMtxfZGa8j7V0TU
MmtTovieNkMX3t6PTDmf7pxHiRNw5qY6N1pRr1/YD/X258hvrDrAQ2TljSx+O2Ox/hj6A2SIzSUZ
RWpt1o1lq8CunZoHZvZrTQz4UyEtHmOFoA0ts7rUY/1ZZDXezwH2+CP+lWA0r26xQoCsRh549gSD
3U+xeUHjsbbKUZFp3M1C6hTThDH12iWO2zkNFg1Qs5GDmc46jfuHx0wYSZTryGfDVUqFuw2jTuX1
p+brMdEE1sWaxOVPc6koQ3+BEJ9VBG/nyzQfe6AZ9fwH8272Zuq09u/emYFLSxxofKszJGJyl536
OtyvcTE0DbSGuBTlrDZvOvjPm8axs34D9SBwrBQjz0jVUb3uuvV8+qImQoIJ+FVbzTohnsgiNdto
gQ8HV08Hxj8mpNbmjUbXQoy6FRSrwIl+Dkc/elV2a9ZKMXmbG89DXJ5wEIrH2FbWMo7P2YPhrSlm
3VanheTviI9q+wvFbza8UFiRdRSgwReVZuGX0NWMzk+rvLzIpeYXEVFOMAFZXtAU7A77/UV4mVlH
i5l6fMGjDWKMisKBX96DXwtQ3KJypQ1UVFEn6nGNGI+Cef3RmVtKilJHgVBVcEPxQ9g5ZdFNSCpa
5Syk7tS6EHga9hUjtOqYP9+uRvCxnVQA6tvzf951FKguvVffYu5srJaMDigReJ2jXDr8Pi8DsyWs
sVeAY8LSZ6mP51CRPmx24Llcdqyts8hEvaO6Ot689GK8982OAPQanJgoLMENRJe03FeeTv60vOw6
AU67JTmZt83lc9mTS4GKIz0pDqg0tCnppaajQy5/O582snB0RPh7eoCJTlQngb23grwOlObvPEGL
SvuZ98Qr2d7gvGutb/ySl/V75AEWu2dV1g9qIXPXwwiijnZj1vYUW0CPQJ1SxD/MiGhPradgMpyE
N5c83rRPPiHtdkxhHxGuUTVEe3LzVhrEwf/Z+jHsF9vDNw9uZuzNLITNd6u9qkp/OyodSWn/lsJk
XSjrpSRdOgIFuMAk5r3vDFB1ehWs88xTbQ5NNicUOyIm041Hfa4tygPVwFIWEs4PPQ5v4DshUode
umfEUe34fWhOe5yeUfHeQnYm0nrMWyiczBjR+iYbSDTQ5YV1mzOJbkI6NzXBMPA6UkjqA2BDsNsG
zIj2znvrfD27ETfT8u9oRSBAqwsDksli2q+cMOBlRsCw9AcdAfJ646oNa1bMaqhvQdpzZGugZ+rl
2GNj8azx8yQ6okifUH5OBzk12CoF/GWqU+OWCP4wZ3wUV6TVgP1z7ko5K0L+zDqLIFEHyrEDem3t
QmOMJT9QbMmnpv1+ZdepZUN7T+jHpQW2Bl1e/3/kvnpnHh84K28/yBbvZ8oD9/TaLiUBakbpk4Xf
q3bHCOn6EIdVz47w+nR44agONdReI+FcAjaehq/0ZN0toVLa39BixJEC3YSmiT8c7rA4a325Ku03
WFk+DAHKG1aVTii3ZDJGf6NOZ7ckwIwFx1mb+C3/YGzdT96dQevptupmxDlj5Bz/2v6VUZmonwNB
B2pvJcfw0fO8ju8ZzfLk4CG3Q+XLx1Atq+vZP4RK+DZTvcvaHP/FG1suMos2m3nHoxdb8TMhoUuf
w0OmoSLuQc2ak9vu4pChtOepGEOwTzJvGNIv1eUgPOcFpmeNizPLf4lgEws66/kO7Kf8go3GO0V1
n9FRFIxCjrZyy1+AylTsMand35nW53RmBWu6Sb+9TH02VDSlDMPHlZSCV0Li36lPPsXEZ4TJW53y
AKxiaiiuMOp37Lir9CnQwxin9HonhZPBuviFghxbD1EpWwls9/T4nwzatGJpp8jaxkFyxrSLTWZs
c87H9NK5NwIWKf/u8wXM8R9TpQdWl9GpVgLFFyvhVugYjoaFbYQmxaVhY1cZ/bmzh/Ma4eloQ46o
aI8rNm6WRszYou5CZmiDkYKAo5U4xsE4J6GAlSWVOJwk5564k0D8bBCpdvOaxFWjqbI3UAsqL75q
3XyjLx11IFD+tHKHZWUEwAwUX251n5vm0t2XbvzCD+T4a1FyHtQYhdkflUj+sZb/tU/Ndlsrsy7H
cGiQVV7Z3AssvP7LZazXQZx3hFymEAgimi66apOtrLqJ5XA+CFM8ZRTuy6bIDUdp3dyZfGCMERtw
Iybktp2AUZFAnn7LyTt5EeNZzHau9mfLLM9MlI61v5BkJiU8bLc/QKXF22oe7l8xe6ik9U2Ahb0x
klppIrbQwW6hbZ//OjJrbsAyBx9I6VZ8nE/KcjXevWRSZaJHyRBu5xU3P64wsasb/fyOdFSB+bKV
9qB548Oa6/pReAKoqq7HbJStxoPqBgfnM9LAEaDnGetWAwe1BnwmdKgC6Ux62EoBNlziWUTMEUU7
/6JzBHBfe1DMZ9LWELw3RwDOKh/O7PeRgybh14qon7rB4kyB7TqBV3FATEKGgnmMgQKbC2KAzJZS
DJt+bGzpeF+W2bE9Y+lMsODA3zuKgN1Az9B/AJWaq0W9uAKudgTTW9Y27EHLmSYIShwJ6SlGI7qj
veDoCx1Oqa8SVak+0hGF19eJW6CBAWwB75cxBgYGsHNcqi1g2ZhnXSycMlJmU5p1AbUHQgkxAHtZ
B0/Xe4BFu9bI5wE+r94VCz1md9+rNki7bKQTwg9XCKMj362RgXYj2fvGvDduWlIlps6aDIDq6HCO
hQMaJq5kxNTUQrNDxY7VZqn1V9lUBCdLrEDz4U39ARz5TxxsgCaa5iTtmcGIcQftTX3KUXhdNO7I
NYmpiPlSikIQ7VVL0xWCFe8J7YYinKWOxNDsCtmgJiSRCVd+7z63hINOtbYnGhGQN2RrLns/y8eg
gOMBQIZ8FBcZ88Qm6qYKj0eXAtUSpeBqgDdY1L9IUCVFg0GRu5E8Ic7xIKNvyiiGGgIHrZXS2PxN
B/63G3MM35IqCSp2bwxbRKAmqmHDxddhKU90FnA8hVJJQ7BWHTZPpIWitQMfLYmGgf4MKWJQN3ck
+vNBJzHLtd2RnqOaCfBjINFqhEpXtzCCeF+IarLeHKufJ0FwaTq8wzNt/5StnM/mo8nBb4ttmDJR
73H66F/rU0TqYFBaLXSy0CZrrqG//FNTxpKwmr6PiqXKTJMoJL2VK7xgv2HIOmpagb2HnjXpD0K3
FWrzQpIixbDKnOnLPuB0xZhIN/9sQP3mMQRolWb13Zq2+Rer7sIx92Rh/+AM3PjAUTERFj0yDSd/
NLppZoRsj8/zYIvUEfHY6E4XO5Sbf6pMYze1SOW5y6LyA0O1o88NveReBaP96+ybZji8edr6QOms
ExqRqnoCyDWCNE89nRofghWPIwoYAf/TjJ9/6KblNlFXVQrpYgnbeCB9NJJTEIXEfFdWbIOmOmkW
S8r/EuM+FEL42K4oGWGqkLDe6ZwaAWM5naoMOYNmlvKgAUblEe1uwgAu00uWGTYoxkZl7VkybaxV
H5o6gXdlQ2oSZbD5fKrggLWqP0lKH1o/43kVwV8ZfHmv8Ds3rSEatALIF7npiSrWKKBsxg+M1Gtk
RPJ5WeI+u0dn/f1djIaqqNecKyUAFhLgUfJRZjcmMh6LMxmIx+6PcPZyRL64qe4Ybssvoj4R/RBn
WhNc0Dyc2bPY/8Q7UtateMcyKw4XkhQtBCPjGDPTJPBXSkM5iFFCJ6ozyzHKPTWuJVXVlXOLz3sO
wEBFv9p1xfKXo1zcoxSZiGRYlEDurqp53R0jBRjaxAFRmVSNn4Mj+gd14eJsQLuChlGTP/5EK8nF
OYsp3FHHj7l96sBX99/34UQeCeF+YQZg0Nf4tx9suFbSwfK7NH8wKCcMtafVAZG/bOA9xtzfWWiP
h6urttW7EmDLrwWdg83xFsucXhnNTSM07AHmNV8aQrrtvUY6cuW3zH0qU8aKy8Sq7aLx8JcKYs2D
SC+sFhJWUN3usobprpLjQ6nIONMnCXUTPgT5xocg8AlqHe99I2LxyOkBwdScJKc5BbSB1IaVhJh4
jITAdRnBUJ41wtvL65VW6/tqLTHf79IwZWlf1edNhdQ3b3B/lnCg7W4A3GKpwXycxPF0Lj1a+oKs
9XkBZh3Ar2dp3k/UOQCUZzRXl2YP5HFcIZe84FRQ5o1fcVkcj0Nu2pcdw5z/Zuq2nhjTb2vHkLOE
NYWg/4Fh2XDIou6Aueunnmf95i1K9ZLksp1EYQYrifZjXoHNL6tGH7mCIWQMsldqJOddDXp5jtaL
goQI8zb4euEuEThBB25aFMAQIQMtQF9pC+oNu1UIt6L5u0qM8va/hwT8frfgB0IXU/OU5Zu8Bsfm
9AkNu6vLX91kBH7C9xH/ZRQ4NxuldGeEKHlEflU1kPzPiDnZmNzf6i2BLiTMBVlY/2OMM5cy4CkM
jumXTW1czh4/xpbNqQGaXTdOaRDZZbAZHjbneFC7Qem5djAzSvr31w2HfhzgKMLIlhhEdNehdS7z
Z2Kp4QpoLhh/fmTk86N5pL6kie7AGagP0zy80FjVTXMcnuvIwipHTeJdA92tzD8jCtHNLTmrlSgU
NaW73cqg+uskt6661Hl4JaJEn1E5Ib1FCz3zY9DSCOss99BBtSjxoNklfvzznG2oqcU1EHfdbORb
qkt/8LPfnWbkG9OgvOuOUysUk2CxMJfoou8Lnx/7aasfIt/rZo+ECCvSSk3k0w+FUyNaop9R07fI
7epNNxob6dfcg1KhoCfOMFlLt0+Lme4vCbJrxzcDKOc4XEfaLyy2QtBD8VXRltp9bh2KdQ/H4AOE
OA9vDx/VVKFrbI4GIp4QxrwD1MNlPkfL6bYRs4k7eFFX6s1MYRreyJjLwaq4TYjOW3jUf6EA/5/f
1MT6Da++Q1h1WNaU0o+6xYcSyTj76PtSMZbruBLp5yhCypXpZ+fOYLSles7FpPr+7TjL33ytEhJJ
yKtq9q5H149TEGM0NQm4AFSsqDyyoHi2TjKz0OgaaoYDaVlsQ8kecZn8uI9+UtszgaUqLIrkWe+K
TOpEcHF5MUVz/hQoogsKNaE5oeIytcF0+DcX1Niz8BZt4ao5EN19YUr7cFA6ZIpIwXu4M5JOR5dh
LCKW3QccmocYqb0RV5KPxqFCplAsPy5opmCabtcRKufYsWfKCShWUxmiO+GquBQxNCBeBV3LnwaH
R6Pg1Li7vR98YngbKKJDrRRPmzsb4McgquANq7d6F0LL4KlfGygtgzvr4h3Xcpe4mqQrYmjg/Cfg
P1xo/UYsNVDmaDWB2TX9XLu9/yS0vw+vhE44Rg4hANL+0jk8+x9otYdrp1wGOQ0JDD8R0V8xoH1T
mZGogjGehVPltQZd5FQDXsDip82gwCYPAbVH+gsRfjHL8JNjK5TMcxV0c0I1FZuq4U6gMVEfCPny
8hhUF0tPx4RPt3cstpP0wKjCgZgH/4bKWaH3E8x9hTrQQnRubRD4/hUprk0pPS7Q+BQ2unKLsKwi
d9JyPOnEUtsZWYVM2dg38q3emWuyS3CVMq3bTb9rwQ4KlWzQC83a5tWMdiptqOTYLUcMNFtmEkIj
l20P1f149cYcT7ILTtXBeZ5OBpxkJjkPST2O3OerFf5I03v85j2u9Uttt9V2t8uuiNBWXEJlRyHh
f28pYKExDh1Uvr+K+R85jizNukd/vjfcbJplt7LTFi4WBXnR38GAv6NwwtK9y5nXbdQqGI/SWqMj
CIcVePUCFIZkBYqb7DGvH0mFkzCjMLWXfhjdfXnSyvVop+5outtYMnd8xFhUycBmyfa6LQItcQ+d
Ex5Okwe8zgVKjrJ211uCFe3Btc7suozvhbZyOlPery8OqzI4KiXXhl6LhD35+gVdhKIr/LHpUcbB
Tz/RjNV2O0r8zVcvGEPRhNOiUSdTIGnbDt5roNXOeMhpbZTBzVAS9jOTWE3y998Lo/7Z228BwX3/
9/1NLh9Auxmm7Veqc1Mcq2I+pF8P5dXET8qX2FxU9kq5qsUbIbgE8lwMK/N7ezqDYetbCicatfOU
xR4BbDbQYWFme3uWVKlPtr2N/h5g1KZkgbQjmtH3UfM1iA7s1kNa+Zt/9TpgvDhekbyK24QsF7Er
AL9A5PclH9nVHQnd4x6Fa3DzNj6raJuJeeX88u1geQ2noL2rGZS4Anbut0vrnfeXM3eov5Nh7Zma
ocDnMToSmItwfeweANlfZm5VM2bENE8WRIjcZfzDAYabAnqSscRZ7IHIy9H2ziNPKfuQGiW4RFBb
x5z1F0FDO9AdUiy2kYMS6RdtTJ+XMCkOGhcZX5wPcHaU5aKeSGQQtN3HH0y3W8jJ1XJEdxV8AyBZ
HRE5LcpmLx0YVVdvlMp3s1J0Z4rm2XThIWS+AWjWp7bcVtS09j2UYcC0yL/b+ilUVG3JJ5HwgH8P
DpA9CxFwmUcbF68VwAqjQUqupoThnithNVDCINRc5J5aZctl0BTjCJkiwYtBLL9oXj2zzWcuWePn
R6grI0W9/vqqdkYyFTFOCsPye0QkYZG957GYV+4Sbb/TPejnPp0rpTppvI9l2KOd3YsGJTnDgZgr
5TeLgGJdkL9gaWn5KG5Aw58edhUgbWcWOs7bLyrNk4a2T8CTPQs4B/jM/EHSQ2OxyIWxJlc1DEMq
skBvPL6Le+Gp/zpIEphX+uIic1YBqZTw3lsfzheyNE+8FALcmrngQxzMHPRn/P7+9SWPIokJxYFn
6QvNSFW3UjL36AA533n7sw4N2yAMp0XRpast9kUmWwKwx6alDgsWoyZP3U6VEDT6XeoyIQKK50hg
ij/F9UO5o/dsfezi6AjV9GUOGiGTJJfn+2DT32rot3Zb1A/SRcdrxzGYbIn3+q0B/1ZLieR1s7Ly
O9TEAXEsSEpkuaSah+p9mIY773x3seXEXl7GtROsOPF0e2DL5rqYqT80BgO22sbaXjR7YER3BBeo
EHNybvorPHqrL9rtMvQN8ctr0HucCZwvG2xoGTKXmkTGvgDBrsW3XMXpGtBrG/S8vTe/Rvpoduwy
qld/rJcFUcRWsYv8yz38EbQ2lC1WSuWjdcTV0NjGsfJ+q/CNkFzID7Qfmd0QCTtFc0iPjRa90YG2
m6MZBBjQMcf3pFoqfVUvRsd5yxUz1OxyDx4qvuV1X43vQNq1Zbvrx8G/aaQ16dZLWReo/XnE0tBF
e/lsZ2aL8LaubbU1CFfFGBW6QzoPl8T7CBowKr9UNKJMFiAqCMcxGGYQpsZx9Fqs9sL1u8z+eedK
NTAPhHdLTH/TlJmFOS/jh9hzj/0vDnzDJRxOpSTNpWM53HYxXgeXh2irQYK6PKykfNkIT1P5NNnS
mYdRq3YwWjU6o/+R6tcwlZRxZCvRJMAxYSBDVerxkYqR6bHbuM2gzYzrOPpbb30+/2QlnBK9EZML
kjyY18xkWRNu2JJCDwZGW/0vWgIW14QN/X50K8v+36QYpSvAThoIIxuSYdZXUe6+2sU2mJY3NVnF
vWXqKJnZv/FZ9ZLh37eV3+9r/fnpmDlbS0/p7EH0vfHJXEXeS016XFP4PFKDhT89TYKgzXChZf6f
BEN7m/H6oIoMiKT0tR+XZ7ts7BvEgTAR24+ba0Lsi6aTCvBCrLmXsr3SirdCFnpXf6HB0598aQOK
2qdAhSs2vy1vkkjxcNAq2nrqguHxbjKPOkN7/SLt+GxjAAr0ZSx0oPL04SdtjE/8OKeqoBenlbql
eobfLoTil0UGM+rI0mNcB4P/c1aIHZGXcSvegjWIaVLE4I0JMtxvPEFeDUgMqNGagDnwLL5l79qo
6DoxyrhtoCwwUz9UelmYihRTW071D/XLir436tIAEGME6Zc9UTjn4NPadzLDfH6meMqh6SgGAs8m
DNBk7NMhwbkMUvWvObcfdlRkiROajeSzTOscMtPwL9bOhFpoLo7UjSNNpXbBk5WbTohICR7feIvB
JCOA+eOuZ5n44RRO9VTdowBIhTD9qENxLLAQZsS79Qk1S8QBq73DL9GpKRJq+R+Ea4XHP46EjNtH
11B9K8hctsCWsLuQaljNj270JC6mFy1mrp265VdaCzHICTbXRtrIpPftVbU4sk73j35dSiPNv5Tj
1iK3wRk/icsoKzO367dPwXFwhKMU6D14oQlM/S48mQEAFhHmRJTXDh+EJkTEkk9ssvQk/BcfAR/t
Fj4jUXs3YdzDU5no4Ee5PB+sf6NTbDzkmi9IgMs1Uch5ByWqSVPnJ5OE16/9qf1FoyWT1x8asXog
ct3Enr1Ia9BYkPlQBTzda5TSmLG8aMq4F6QcHwYxLrzyIRBH/U6eWK/0f9NhgrjggqpKBqNQHTq3
Uh2629JuXwLPsWWrmqRvVLVrbThMWU5FMBI+twAnBwH/LoUyJuNQhoOv1nxaF559dgJkTooKCTvN
DahN/Js2l8q9wrM28A3djynhnNWA5wiKGj2nzJxv89SCABBUydarhrOexqj+BlqIvZae9vqfRbAG
Uk4SYEACi85DEiX+pfNfXrZW3LCScgKQ2hiRbVWlwJ14DLMHWnd/JxuqwwC9ZoV5hK4GlHlR2kce
x5Fo9TMAvGVYjgaMHU0YSkJY0IAdspUO6x3qG6Ko0J5C1pqxJGgLfAeYvUpzZEBqqievThKm7aY5
1ZZTR5pkNyw8rFsjMU6edlisruydrL+m2ufe7zF8gDbjDFcq+htA8ZCY7QSQJLpIGd+kHmrueMHv
wCVB+4VO0vc5HC54DMRtVUj2huDaA8jGI3F2X3cenQV/L0dJDboclpCgQjJdQvsO90DpaUdecX1m
R6ajXbe0J2s/nB3d+vb3Fx1A6vcMN+Z3zS17mngfd+HJX9pz7quHOzoSi9NvsQQiYA2Vq1dXAVUW
rNTDRkOsuLUNB+txxBWR6pv+MI9Ywl7nDqcezrphQcCJmFFqT2acRADA8+HWow4ohuIWhkmV3DSe
vFcCa8/i8i3taOFNqa0IpcgT2B8qzMDQeDIC5HtSWmdW4MyeOKB/vlL5hx3Cp5ABvH1RzSsQb3My
NXlLRfwp0/ueKxfLpNmrryHfhxu97FRm7UCuiawZQWfyPMkSk4hpyCIJXinLMmAIMHyVI+gBP/eH
TdOSvaiVkNfbMV+rQ7LlEs5jylU7vZoL2Ef5o0pXvkWE41n1lmP10Si9b8zErwHvNWkH7c1ezq1L
m1ZMsBZ8vTMnokuf8ocTXVRqeU5Bpc1RJfohn6PrM8dVrDzflNI1JeTxMu1+JYj7ytzpHjSwnzNh
4oYCeqhoe4WbAavFVoKDlaymzAWPFX89Z8q6sMhtfJT4tew4WZ9cBV4wyDTSDRg7JFwtK4/daNOs
SrvBJ9DaNcH9g4zhBB18dFUA3xe9K3atQfihVeGZ3jjBYAXWBJ4YkCcokivWSMw2GrHO6yXJEvpv
0NBxqvGpfPC4HDYiV5pU5ntUdoQe6GLR2YDcIuhIbLHpTtF6KAwQ89A2TI5bKk6iSw4ekK5hLtRO
bH+Ye/6DNqFppSmOtkHPhtBq3ZqzY4fYltBEz3ZAGYjKVF0xKFih1dJLJk8xIkWMu3WH0evsnYid
frlmKrAQzsLDJR8I4dHxsVzqjMDoQdAvZRdBSU8H6xIu6s7I3zVhLmjzC/wQJPJoec0VHCIeKeMR
rKxgPyR4f4QTX6kdsF3q+sJOyp+iYxOMYHPXbK7sc6x7caf/pmOMTBE+k0TgC4QFrwxHoCu+GjLS
IH//cepkMtE+OQVxpMwjKB+MdpAcpsJHUMBtSQkAUudgJPCOcMCZmFSuxpLz/GH+yS+LIPWFDpSM
DZEh5xAuQRI20DGNUA1jv4Cxq6QwZ36v7cR+hyG3gvBKchZCTPsihZx4grTIzWO+8zyvzYJyNi9z
xhtNHZfb0nVhsqUKPxaS5GHpIlI2Fmcvc8JqnVUHCf62zoHV9W62zBjN0Lp7EYc053OTsiZPKp+d
1a+yRgYCvZ5rslM53j3n1rRsMob986un3b9/u/QoSBe5UCuqOGBrcthJtn2JNkhA8RG6Edgktvyz
NwVd4GZ4RIlskwdzumSn0HK43caQeirXCdK4Klb8mfqjodmfWD1MqvwynJeOb213jVjNEmzA3ruW
xQPHpFittmRmYqKCU/qhN3p5y24TdCUQl819L7+drILuGZq84/ZDwDjmct6lgMl5QkfAz1I5TOfE
G7NLDOFv7GYXHi20J1Og30xXG7l8KepMbuYeB7zXX8Y9Oinsz7glAaJdprg0+3OMQGAQHDuceG3z
ti89/0k6iYNkEM9r56uy4+AVJ54zFxQ1YKWSuD+dIVsWDxPBoWkOqetK2yqAgylmaJxu6htz1ny+
SIpjQn0S9N2wTHAyNVWMaL1Zy4fOWT0QJKfKqFOlwRl7QZOhKN8pMxVyGZwrxuzN2K8Ga9kFnxJ1
a8HtBB69GXrKtyW+KdMh+/hziFAoS5ohO8EIBdoNBtJZHKoeTTEnlqSpz4mJtfI/iZJ8yPKexB0I
99tYoA7KPq7507T4ObWgwAN+fyRhVae6sNwjONroKZmafGHnkg4ky1EzKYBeJw8uTj6D9sE7HQ6F
KTVqm1ktzGLWUPUElHiAb7vYE/oC2iOyR8u6IhLNJC/oV4eCAV1cNk7rxx0IsBzx2FA9J3SV//Aq
/u5RTbzkfA1F4jG4YnjzhMocp6RIYARn/82SwBZp0W2E3vnmbs2yqUYPc81P2BWnyZOkYh5Udcu0
XrfZ8Ah73V5G74dZsOAcjfOFLY4tDwH7sYF2zKzAEWddwwlBknE5x1Ld51UNaAb3ZeuS0DRxqjBm
Tkl8cerTMB6MC6ZWDuT1cLRO6dBuKvaHzfB3zyZtDBT9XX7anmd/o058yhXmjt8zjn4qwTjB09s9
7uRCW530L9QJEYNhAiaBRq1Cl614hj0OY9bbOqe37ebCqtHZHM6Kt0QqfYqIOOt0G+rw3hxtWA9i
p8L6paZubYo36fAfvr8EunwVexWW3LhYyueZeuZUfZhO6UB2IZsT256mRJ1S8BzDCZUfq9uW8nJ6
Q84qtfhjQZTDw33ReOhZuQCbccuk6bgDBJ3HAhRk1IkPSCGH+gdtKdeudBHu4gSnVsdDRjaC1Yz9
6aYWgJ1Wyq56QDfJB3eQNT7S57hYYUQjZHJ9jTgsLNjPFYkALnMtU5NZNdUfND2vYe1+h82STVBb
0DCpr/7VCzZTKVCOeY97bTYG2iWeJgiUZqBsc84uCrmpVw+SfTwlIf0bXkuaz/lApcz7lH9UEma7
lnd/ElAvm3Yxn+4sNUN1QhnQR+XHUX+3u6z1A/64ZWa4UcZ2y/YUTVBMXtWh1QH1/pLYSj8WAVnA
mK0rnI9uGSi2/q9tACE/OXqqkZexpGO5W67G7KxWXdy/wIlaKlDDywjDf5tiAONUD3xMn5SOCH8i
D2q4SzNea3zbVn+aNMGDMm4+emwtcrBOAMqxMUG7ek2DR6OxWwtlKgpbLzS57pVP46wrjdc3fdlF
YL/SZumIl8DeDhQSl7xeHo0dNAv6+1jTn+PQp4rjgdOW6Oq3cYYLnjtvv7/Et6WREMhN5VleGkDO
rgj8hUQSX+h41Fx+bCYIZHJb5YmvFVMYsgpA0uc/7WnGGhZEDHJH8gHWw4ksrZxfftZe0tkTO07J
w1qGRdfd6ZhqrKJSF0rGFDyZfaYG3/KDkqy3H5+3zIvSwpTAPcG2NzMQ8jCGUXSLUa/ypoyicvzF
9yPamuYOjmeHBFWTrCjY/pO5bup0HrBV63Vr1VnKNoegl7dqv/hEaKlavHJI2Oampk1CnoeTqA71
gbcZ/3nAFopc97vxOiJBJ4ilwmXHQYfxuB2AgtNEidzvoOcdID31xBk4Lykh/4v9k89sX2747GT8
ObDbuzpIPlpQnZtvTZvtmpUTto1EeBf0UKKIpC5AiULSLtEaFxTnammNd2n4sg78Vwf/qFLKyZq+
6U6UyGjT4zkdQeZYrf9J8Xc9pLTHBFswGtNpgNtVmHPyyWNKepzEblyajAecrpzQa4OUVvmTyeiS
425AXfIKaBWkEAhXidpfEgPC5YKxKtgnwjmg1DCTkWXf/q+/r+5SkoI3HODKRfoCimWeRhK2Zazg
oA+EtnlXDxDIZuCvL+Q0JSgL/fKtbMBfZOgsoSNaeA8WYCHDJg==
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
