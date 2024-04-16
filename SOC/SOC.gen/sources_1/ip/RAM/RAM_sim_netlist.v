// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Mar 13 14:52:24 2024
// Host        : Minxuan-MeiLenovo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top RAM -prefix
//               RAM_ RAM_sim_netlist.v
// Design      : RAM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RAM,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module RAM
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
  (* C_INIT_FILE = "RAM.mem" *) 
  (* C_INIT_FILE_NAME = "RAM.mif" *) 
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
  RAM_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27264)
`pragma protect data_block
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
aZJdvtJD+56oco5KlRbLJWfP
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
