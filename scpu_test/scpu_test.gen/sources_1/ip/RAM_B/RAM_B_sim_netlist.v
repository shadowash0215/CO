// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Apr 24 13:45:29 2024
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [3:0]wea;
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
  (* C_BYTE_SIZE = "8" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.96495 mW" *) 
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
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
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
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27552)
`pragma protect data_block
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
hDO2y0X7/H+wxSK7fyqthEA8lkes
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
