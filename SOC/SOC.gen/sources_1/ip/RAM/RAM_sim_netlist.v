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
2mA=
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
