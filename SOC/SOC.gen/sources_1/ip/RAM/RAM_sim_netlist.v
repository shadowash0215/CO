// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Apr 24 16:24:47 2024
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27248)
`pragma protect data_block
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
laM=
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
