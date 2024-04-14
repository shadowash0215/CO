// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Mar 13 14:52:25 2024
// Host        : Minxuan-MeiLenovo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim e:/CO/SOC/SOC.gen/sources_1/ip/RAM/RAM_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27552)
`pragma protect data_block
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
mHQxGD1q9/LSb+7JYqkferG5mifG
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
