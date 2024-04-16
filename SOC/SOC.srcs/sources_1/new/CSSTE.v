`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/13 14:53:25
// Design Name: 
// Module Name: CSSTE
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


module CSSTE(
    input         clk_100mhz,
    input         RSTN,
    input  [3:0]  BTN_y,
    input  [15:0] SW,
    output [3:0]  Blue,
    output [3:0]  Green,
    output [3:0]  Red,
    output        HSYNC,
    output        VSYNC,
    output [15:0] LED_out,
    output [7:0] AN,
    output [7:0] segment
    );

    wire [ 3:0] BTN;
    wire [15:0] switch;
    wire rst;
    SAnti_jitter U9(
        .clk(clk_100mhz),
        .RSTN(RSTN),
        .Key_y(BTN_y),
        .SW(SW),
        .BTN_OK(BTN),
        .SW_OK(switch),
        .rst(rst)
    );


    wire [31:0] clk_div;
    wire        clk_cpu;
    clk_div U8(
        .clk(clk_100mhz),
        .rst(rst),
        .SW2(switch[2]),
        .SW8(switch[8]),
        .STEP(switch[10]),
        .clkdiv(clk_div),
        .Clk_CPU(clk_cpu)
    );

    wire [31:0] counter_out;
    wire        counter0_OUT;
    wire        counter1_OUT;
    wire        counter2_OUT;
    Counter_x U10(
        .clk(~clk_cpu),
        .rst(rst),
        .clk0(clk_div[6]),
        .clk1(clk_div[9]),
        .clk2(clk_div[11]),
        .counter_we(counter_we),
        .counter_val(counter_val),
        .counter_ch(counter_set),
        .counter0_OUT(counter0_OUT),
        .counter1_OUT(counter1_OUT),
        .counter2_OUT(counter2_OUT),
        .counter_out(counter_out)
    );

    wire [31:0] counter_val;
    wire [31:0] data_in;
    wire [31:0] ram_data_in;
    wire [ 9:0] ram_addr;
    wire        data_ram_we;
    wire        en1, en2;
    wire        counter_we;
    MIO_BUS U4(
        .clk(clk_100mhz),
        .rst(rst),
        .BTN(BTN),
        .SW(switch),
        .mem_w(MemRW),
        .Cpu_data2bus(data_out),
        .addr_bus(addr_out),
        .ram_data_out(ram_data_out),
        .led_out(LED_out),
        .counter_out(counter_out),
        .counter0_out(counter0_OUT),
        .counter1_out(counter1_OUT),
        .counter2_out(counter2_OUT),
        .Cpu_data4bus(data_in),
        .ram_data_in(ram_data_in),
        .ram_addr(ram_addr),
        .data_ram_we(data_ram_we),
        .GPIOf0000000_we(en1),
        .GPIOe0000000_we(en2),
        .counter_we(counter_we),
        .Peripheral_in(counter_val)
    );

    wire [31:0] data_out;
    wire [31:0] addr_out;
    wire [31:0] PC_out;
    wire        MemRW;
    scpu U1(
        .clk(clk_cpu),
        .rst(rst),
        .Data_in(data_in),
        .inst_in(inst_in),
        .MemRW(MemRW),
        .Addr_out(addr_out),
        .Data_out(data_out),
        .PC_out(PC_out)
    );

    wire [31:0] inst_in;
    ROM U2(
        .a(PC_out[11:2]),
        .spo(inst_in)
    );

    wire [31:0] ram_data_out;
    RAM U3(
        .clka(~clk_100mhz),
        .wea(data_ram_we),
        .addra(ram_addr),
        .dina(ram_data_in),
        .douta(ram_data_out)
    );

    wire [ 7:0] point_out;
    wire [ 7:0] LE_out;
    wire [31:0] Disp_num;
    Multi_8CH32 U5(
        .clk(~clk_cpu),
        .rst(rst),
        .EN(en2),
        .Test(switch[7:5]),
        .point_in({clk_div[31:0], clk_div[31:0]}),
        .LES(64'b0),
        .Data0(counter_val),
        .data1({2'b0, PC_out[31:2]}),
        .data2(inst_in),
        .data3(counter_out),
        .data4(addr_out),
        .data5(data_out),
        .data6(data_in),
        .data7(PC_out),
        .point_out(point_out),
        .LE_out(LE_out),
        .Disp_num(Disp_num)
    );

    Seg7_Dev_0 U6(
        .disp_num(Disp_num),
        .point(point_out),
        .les(LE_out),
        .scan({clk_div[18], clk_div[17], clk_div[16]}),
        .AN(AN),
        .segment(segment)
    );

    wire [ 1:0] counter_set;
    SPIO U7(
        .clk(~clk_cpu),
        .rst(rst),
        .Start(clk_div[20]),
        .EN(en1),
        .P_Data(counter_val),
        .counter_set(counter_set),
        .LED_out(LED_out)
    );

    VGA U11(
        .clk_25m(clk_div[1]),
        .clk_100m(clk_100mhz),
        .rst(rst),
        .pc(PC_out),
        .inst(inst_in),
        .alu_res(addr_out),
        .mem_wen(MemRW),
        .dmem_o_data(ram_data_out),
        .dmem_i_data(ram_data_in),
        .dmem_addr(addr_out),
        .hs(HSYNC),
        .vs(VSYNC),
        .vga_r(Red),
        .vga_g(Green),
        .vga_b(Blue)
    );
endmodule

