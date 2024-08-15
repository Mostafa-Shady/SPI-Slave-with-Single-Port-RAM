// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Aug  5 22:35:26 2024
// Host        : DESKTOP-KDN7ML7 running 64-bit major release  (build 9200)
// Command     : write_verilog {D:/Projects/Verlilog Diploma/do/SPI_Wrapper_net.v}
// Design      : wrapper
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module RAM
   (tx_valid_bit,
    mem_reg_0,
    mem_reg_1,
    clk_IBUF_BUFG,
    rx_valid_bit,
    mem_reg_2,
    tx_valid_reg_0,
    ADDRBWRADDR,
    D,
    WEA,
    tx_valid_reg_1,
    MISO_reg,
    E);
  output tx_valid_bit;
  output mem_reg_0;
  output mem_reg_1;
  input clk_IBUF_BUFG;
  input rx_valid_bit;
  input mem_reg_2;
  input tx_valid_reg_0;
  input [7:0]ADDRBWRADDR;
  input [7:0]D;
  input [0:0]WEA;
  input tx_valid_reg_1;
  input [1:0]MISO_reg;
  input [0:0]E;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]ADDRBWRADDR;
  wire [7:0]D;
  wire [0:0]E;
  wire [1:0]MISO_reg;
  wire [0:0]WEA;
  wire clk_IBUF_BUFG;
  wire [7:0]din_a;
  wire mem_reg_0;
  wire mem_reg_1;
  wire mem_reg_2;
  wire rx_valid_bit;
  wire [7:0]tx_data_bus;
  wire tx_valid_bit;
  wire tx_valid_reg_0;
  wire tx_valid_reg_1;

  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    MISO_i_3
       (.I0(tx_data_bus[2]),
        .I1(tx_data_bus[3]),
        .I2(MISO_reg[0]),
        .I3(MISO_reg[1]),
        .I4(tx_data_bus[0]),
        .I5(tx_data_bus[1]),
        .O(mem_reg_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    MISO_i_5
       (.I0(tx_data_bus[6]),
        .I1(tx_data_bus[7]),
        .I2(MISO_reg[0]),
        .I3(MISO_reg[1]),
        .I4(tx_data_bus[4]),
        .I5(tx_data_bus[5]),
        .O(mem_reg_1));
  VCC VCC
       (.P(\<const1> ));
  FDRE #(
    .INIT(1'b0)) 
    \din_a_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[0]),
        .Q(din_a[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \din_a_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[1]),
        .Q(din_a[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \din_a_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[2]),
        .Q(din_a[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \din_a_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[3]),
        .Q(din_a[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \din_a_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[4]),
        .Q(din_a[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \din_a_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[5]),
        .Q(din_a[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \din_a_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[6]),
        .Q(din_a[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \din_a_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[7]),
        .Q(din_a[7]),
        .R(\<const0> ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-16 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg
       (.ADDRARDADDR({\<const1> ,\<const1> ,din_a,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,ADDRBWRADDR,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(clk_IBUF_BUFG),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,D}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOBDO(tx_data_bus),
        .ENARDEN(rx_valid_bit),
        .ENBWREN(\<const1> ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(mem_reg_2),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(tx_valid_reg_0),
        .WEA({WEA,WEA}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  FDRE #(
    .INIT(1'b0)) 
    tx_valid_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tx_valid_reg_1),
        .Q(tx_valid_bit),
        .R(tx_valid_reg_0));
endmodule

module RTL_SPI
   (MISO_OBUF,
    rst_n,
    rx_valid_bit,
    ADDRBWRADDR,
    Q,
    out_a,
    WEA,
    E,
    \counter_reg[1]_0 ,
    \rx_data_reg[9]_0 ,
    \rx_data_reg[9]_1 ,
    clk_IBUF_BUFG,
    rst_n_IBUF,
    mem_reg,
    mem_reg_0,
    mem_reg_1,
    mem_reg_2,
    mem_reg_3,
    mem_reg_4,
    mem_reg_5,
    mem_reg_6,
    D,
    SS_n_IBUF,
    tx_valid_bit,
    MISO_reg_0,
    MISO_reg_1);
  output MISO_OBUF;
  output rst_n;
  output rx_valid_bit;
  output [7:0]ADDRBWRADDR;
  output [7:0]Q;
  output out_a;
  output [0:0]WEA;
  output [0:0]E;
  output [1:0]\counter_reg[1]_0 ;
  output \rx_data_reg[9]_0 ;
  output \rx_data_reg[9]_1 ;
  input clk_IBUF_BUFG;
  input rst_n_IBUF;
  input mem_reg;
  input mem_reg_0;
  input mem_reg_1;
  input mem_reg_2;
  input mem_reg_3;
  input mem_reg_4;
  input mem_reg_5;
  input mem_reg_6;
  input [0:0]D;
  input SS_n_IBUF;
  input tx_valid_bit;
  input MISO_reg_0;
  input MISO_reg_1;

  wire \<const1> ;
  wire [7:0]ADDRBWRADDR;
  wire [0:0]D;
  wire [0:0]E;
  wire MISO_OBUF;
  wire MISO_i_1_n_0;
  wire MISO_i_2_n_0;
  wire MISO_i_4_n_0;
  wire MISO_reg_0;
  wire MISO_reg_1;
  wire [7:0]Q;
  wire SS_n_IBUF;
  wire [0:0]WEA;
  wire clk_IBUF_BUFG;
  wire counter;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[2]_i_2_n_0 ;
  wire \counter[3]_i_2_n_0 ;
  wire \counter[3]_i_5_n_0 ;
  wire \counter[3]_i_6_n_0 ;
  wire [1:0]\counter_reg[1]_0 ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire [2:0]cs;
  wire mem_reg;
  wire mem_reg_0;
  wire mem_reg_1;
  wire mem_reg_2;
  wire mem_reg_3;
  wire mem_reg_4;
  wire mem_reg_5;
  wire mem_reg_6;
  wire [2:0]ns;
  wire out_a;
  wire rd_address_recieved_i_1_n_0;
  wire rd_address_recieved_reg_n_0;
  wire rst_n;
  wire rst_n_IBUF;
  wire rx_data1__2;
  wire \rx_data[9]_i_1_n_0 ;
  wire [9:8]rx_data_bus;
  wire \rx_data_reg[9]_0 ;
  wire \rx_data_reg[9]_1 ;
  wire rx_valid0__4;
  wire rx_valid_bit;
  wire rx_valid_i_1_n_0;
  wire rx_valid_i_2_n_0;
  wire rx_valid_i_3_n_0;
  wire tx_valid_bit;

  LUT6 #(
    .INIT(64'h00000000FFEFBBBB)) 
    \FSM_gray_cs[0]_i_1 
       (.I0(cs[2]),
        .I1(cs[1]),
        .I2(D),
        .I3(rd_address_recieved_reg_n_0),
        .I4(cs[0]),
        .I5(SS_n_IBUF),
        .O(ns[0]));
  LUT4 #(
    .INIT(16'h00FE)) 
    \FSM_gray_cs[1]_i_1 
       (.I0(cs[2]),
        .I1(cs[1]),
        .I2(cs[0]),
        .I3(SS_n_IBUF),
        .O(ns[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_gray_cs[2]_i_1 
       (.I0(rst_n_IBUF),
        .O(rst_n));
  LUT6 #(
    .INIT(64'h00AA00AA00EA00AA)) 
    \FSM_gray_cs[2]_i_2 
       (.I0(cs[2]),
        .I1(rd_address_recieved_reg_n_0),
        .I2(D),
        .I3(SS_n_IBUF),
        .I4(cs[0]),
        .I5(cs[1]),
        .O(ns[2]));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:011,READ_ADD:010,READ_DATA:111,IDLE:000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_gray_cs_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(ns[0]),
        .Q(cs[0]),
        .R(rst_n));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:011,READ_ADD:010,READ_DATA:111,IDLE:000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_gray_cs_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(ns[1]),
        .Q(cs[1]),
        .R(rst_n));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:011,READ_ADD:010,READ_DATA:111,IDLE:000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_gray_cs_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(ns[2]),
        .Q(cs[2]),
        .R(rst_n));
  LUT4 #(
    .INIT(16'h8003)) 
    MISO_i_1
       (.I0(rx_data1__2),
        .I1(cs[0]),
        .I2(cs[1]),
        .I3(cs[2]),
        .O(MISO_i_1_n_0));
  LUT5 #(
    .INIT(32'h80888000)) 
    MISO_i_2
       (.I0(cs[1]),
        .I1(cs[0]),
        .I2(MISO_reg_0),
        .I3(MISO_i_4_n_0),
        .I4(MISO_reg_1),
        .O(MISO_i_2_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    MISO_i_4
       (.I0(\counter_reg[1]_0 [0]),
        .I1(\counter_reg[1]_0 [1]),
        .I2(\counter_reg_n_0_[2] ),
        .O(MISO_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    MISO_reg
       (.C(clk_IBUF_BUFG),
        .CE(MISO_i_1_n_0),
        .D(MISO_i_2_n_0),
        .Q(MISO_OBUF),
        .R(rst_n));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2202)) 
    \counter[0]_i_1 
       (.I0(cs[1]),
        .I1(\counter_reg[1]_0 [0]),
        .I2(cs[2]),
        .I3(cs[0]),
        .O(\counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8228282800280028)) 
    \counter[1]_i_1 
       (.I0(cs[1]),
        .I1(\counter_reg[1]_0 [1]),
        .I2(\counter_reg[1]_0 [0]),
        .I3(cs[2]),
        .I4(rx_data1__2),
        .I5(cs[0]),
        .O(\counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA288800002888)) 
    \counter[2]_i_1 
       (.I0(cs[1]),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg[1]_0 [1]),
        .I3(\counter_reg[1]_0 [0]),
        .I4(cs[2]),
        .I5(\counter[2]_i_2_n_0 ),
        .O(\counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8882888028882888)) 
    \counter[2]_i_2 
       (.I0(cs[0]),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg[1]_0 [1]),
        .I3(\counter_reg[1]_0 [0]),
        .I4(\counter_reg_n_0_[3] ),
        .I5(tx_valid_bit),
        .O(\counter[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h800FAF0F)) 
    \counter[3]_i_1 
       (.I0(cs[0]),
        .I1(rx_data1__2),
        .I2(cs[2]),
        .I3(cs[1]),
        .I4(rx_valid0__4),
        .O(counter));
  LUT6 #(
    .INIT(64'hAAAA288800002888)) 
    \counter[3]_i_2 
       (.I0(cs[1]),
        .I1(\counter_reg_n_0_[3] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter[3]_i_5_n_0 ),
        .I4(cs[2]),
        .I5(\counter[3]_i_6_n_0 ),
        .O(\counter[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAAAA888)) 
    \counter[3]_i_3 
       (.I0(tx_valid_bit),
        .I1(\counter_reg_n_0_[3] ),
        .I2(\counter_reg[1]_0 [0]),
        .I3(\counter_reg[1]_0 [1]),
        .I4(\counter_reg_n_0_[2] ),
        .O(rx_data1__2));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \counter[3]_i_4 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg[1]_0 [1]),
        .O(rx_valid0__4));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[3]_i_5 
       (.I0(\counter_reg[1]_0 [1]),
        .I1(\counter_reg[1]_0 [0]),
        .O(\counter[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAA800002AAA8000)) 
    \counter[3]_i_6 
       (.I0(cs[0]),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg[1]_0 [1]),
        .I3(\counter_reg[1]_0 [0]),
        .I4(\counter_reg_n_0_[3] ),
        .I5(tx_valid_bit),
        .O(\counter[3]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(\counter[0]_i_1_n_0 ),
        .Q(\counter_reg[1]_0 [0]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(\counter[1]_i_1_n_0 ),
        .Q(\counter_reg[1]_0 [1]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(\counter[2]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(\counter[3]_i_2_n_0 ),
        .Q(\counter_reg_n_0_[3] ),
        .R(rst_n));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \din_a[7]_i_1 
       (.I0(rst_n_IBUF),
        .I1(rx_data_bus[9]),
        .I2(rx_data_bus[8]),
        .I3(rx_valid_bit),
        .O(E));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_1
       (.I0(rx_data_bus[9]),
        .I1(rx_data_bus[8]),
        .I2(rx_valid_bit),
        .O(\rx_data_reg[9]_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    mem_reg_i_10
       (.I0(rst_n_IBUF),
        .I1(rx_data_bus[9]),
        .I2(rx_data_bus[8]),
        .O(WEA));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    mem_reg_i_19
       (.I0(rst_n_IBUF),
        .I1(rx_data_bus[9]),
        .I2(rx_valid_bit),
        .I3(rx_data_bus[8]),
        .O(out_a));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    mem_reg_i_2
       (.I0(Q[7]),
        .I1(rst_n_IBUF),
        .I2(rx_data_bus[9]),
        .I3(rx_valid_bit),
        .I4(rx_data_bus[8]),
        .I5(mem_reg_6),
        .O(ADDRBWRADDR[7]));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    mem_reg_i_3
       (.I0(Q[6]),
        .I1(rst_n_IBUF),
        .I2(rx_data_bus[9]),
        .I3(rx_valid_bit),
        .I4(rx_data_bus[8]),
        .I5(mem_reg_5),
        .O(ADDRBWRADDR[6]));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    mem_reg_i_4
       (.I0(Q[5]),
        .I1(rst_n_IBUF),
        .I2(rx_data_bus[9]),
        .I3(rx_valid_bit),
        .I4(rx_data_bus[8]),
        .I5(mem_reg_4),
        .O(ADDRBWRADDR[5]));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    mem_reg_i_5
       (.I0(Q[4]),
        .I1(rst_n_IBUF),
        .I2(rx_data_bus[9]),
        .I3(rx_valid_bit),
        .I4(rx_data_bus[8]),
        .I5(mem_reg_3),
        .O(ADDRBWRADDR[4]));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    mem_reg_i_6
       (.I0(Q[3]),
        .I1(rst_n_IBUF),
        .I2(rx_data_bus[9]),
        .I3(rx_valid_bit),
        .I4(rx_data_bus[8]),
        .I5(mem_reg_2),
        .O(ADDRBWRADDR[3]));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    mem_reg_i_7
       (.I0(Q[2]),
        .I1(rst_n_IBUF),
        .I2(rx_data_bus[9]),
        .I3(rx_valid_bit),
        .I4(rx_data_bus[8]),
        .I5(mem_reg_1),
        .O(ADDRBWRADDR[2]));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    mem_reg_i_8
       (.I0(Q[1]),
        .I1(rst_n_IBUF),
        .I2(rx_data_bus[9]),
        .I3(rx_valid_bit),
        .I4(rx_data_bus[8]),
        .I5(mem_reg_0),
        .O(ADDRBWRADDR[1]));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    mem_reg_i_9
       (.I0(Q[0]),
        .I1(rst_n_IBUF),
        .I2(rx_data_bus[9]),
        .I3(rx_valid_bit),
        .I4(rx_data_bus[8]),
        .I5(mem_reg),
        .O(ADDRBWRADDR[0]));
  LUT6 #(
    .INIT(64'hBFFFFFFF00000300)) 
    rd_address_recieved_i_1
       (.I0(rx_data1__2),
        .I1(cs[0]),
        .I2(cs[2]),
        .I3(cs[1]),
        .I4(rx_valid0__4),
        .I5(rd_address_recieved_reg_n_0),
        .O(rd_address_recieved_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rd_address_recieved_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(rd_address_recieved_i_1_n_0),
        .Q(rd_address_recieved_reg_n_0),
        .R(rst_n));
  LUT5 #(
    .INIT(32'h000030B0)) 
    \rx_data[9]_i_1 
       (.I0(cs[0]),
        .I1(cs[2]),
        .I2(cs[1]),
        .I3(rx_data1__2),
        .I4(rx_valid0__4),
        .O(\rx_data[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(D),
        .Q(Q[0]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(Q[0]),
        .Q(Q[1]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(Q[1]),
        .Q(Q[2]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(Q[2]),
        .Q(Q[3]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(Q[3]),
        .Q(Q[4]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(Q[4]),
        .Q(Q[5]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(Q[5]),
        .Q(Q[6]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(Q[6]),
        .Q(Q[7]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(Q[7]),
        .Q(rx_data_bus[8]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(rx_data_bus[8]),
        .Q(rx_data_bus[9]),
        .R(rst_n));
  LUT5 #(
    .INIT(32'hBF888088)) 
    rx_valid_i_1
       (.I0(rx_valid_i_2_n_0),
        .I1(cs[1]),
        .I2(rx_valid_i_3_n_0),
        .I3(cs[2]),
        .I4(rx_valid_bit),
        .O(rx_valid_i_1_n_0));
  LUT6 #(
    .INIT(64'hB0B0B0B0B030B000)) 
    rx_valid_i_2
       (.I0(cs[0]),
        .I1(cs[2]),
        .I2(\counter_reg_n_0_[3] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg[1]_0 [0]),
        .I5(\counter_reg[1]_0 [1]),
        .O(rx_valid_i_2_n_0));
  LUT6 #(
    .INIT(64'h00000222AAAAAAAA)) 
    rx_valid_i_3
       (.I0(cs[0]),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg[1]_0 [1]),
        .I3(\counter_reg[1]_0 [0]),
        .I4(\counter_reg_n_0_[3] ),
        .I5(tx_valid_bit),
        .O(rx_valid_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_valid_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(rx_valid_i_1_n_0),
        .Q(rx_valid_bit),
        .R(rst_n));
  LUT4 #(
    .INIT(16'h8F80)) 
    tx_valid_i_1
       (.I0(rx_data_bus[9]),
        .I1(rx_data_bus[8]),
        .I2(rx_valid_bit),
        .I3(tx_valid_bit),
        .O(\rx_data_reg[9]_1 ));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module wrapper
   (SS_n,
    MOSI,
    clk,
    rst_n,
    MISO);
  input SS_n;
  input MOSI;
  input clk;
  input rst_n;
  output MISO;

  wire \<const0> ;
  wire MISO;
  wire MISO_OBUF;
  wire MOSI;
  wire MOSI_IBUF;
  wire SPI_n_1;
  wire SPI_n_10;
  wire SPI_n_21;
  wire SPI_n_22;
  wire SPI_n_23;
  wire SPI_n_24;
  wire SPI_n_25;
  wire SPI_n_3;
  wire SPI_n_4;
  wire SPI_n_5;
  wire SPI_n_6;
  wire SPI_n_7;
  wire SPI_n_8;
  wire SPI_n_9;
  wire SS_n;
  wire SS_n_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire m1_n_1;
  wire m1_n_2;
  wire mem;
  wire mem_reg_i_11_n_0;
  wire mem_reg_i_12_n_0;
  wire mem_reg_i_13_n_0;
  wire mem_reg_i_14_n_0;
  wire mem_reg_i_15_n_0;
  wire mem_reg_i_16_n_0;
  wire mem_reg_i_17_n_0;
  wire mem_reg_i_18_n_0;
  wire out_a;
  wire rst_n;
  wire rst_n_IBUF;
  wire [7:0]rx_data_bus;
  wire rx_valid_bit;
  wire tx_valid_bit;

  GND GND
       (.G(\<const0> ));
  OBUF MISO_OBUF_inst
       (.I(MISO_OBUF),
        .O(MISO));
  IBUF MOSI_IBUF_inst
       (.I(MOSI),
        .O(MOSI_IBUF));
  RTL_SPI SPI
       (.ADDRBWRADDR({SPI_n_3,SPI_n_4,SPI_n_5,SPI_n_6,SPI_n_7,SPI_n_8,SPI_n_9,SPI_n_10}),
        .D(MOSI_IBUF),
        .E(SPI_n_21),
        .MISO_OBUF(MISO_OBUF),
        .MISO_reg_0(m1_n_1),
        .MISO_reg_1(m1_n_2),
        .Q(rx_data_bus),
        .SS_n_IBUF(SS_n_IBUF),
        .WEA(mem),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\counter_reg[1]_0 ({SPI_n_22,SPI_n_23}),
        .mem_reg(mem_reg_i_18_n_0),
        .mem_reg_0(mem_reg_i_17_n_0),
        .mem_reg_1(mem_reg_i_16_n_0),
        .mem_reg_2(mem_reg_i_15_n_0),
        .mem_reg_3(mem_reg_i_14_n_0),
        .mem_reg_4(mem_reg_i_13_n_0),
        .mem_reg_5(mem_reg_i_12_n_0),
        .mem_reg_6(mem_reg_i_11_n_0),
        .out_a(out_a),
        .rst_n(SPI_n_1),
        .rst_n_IBUF(rst_n_IBUF),
        .\rx_data_reg[9]_0 (SPI_n_24),
        .\rx_data_reg[9]_1 (SPI_n_25),
        .rx_valid_bit(rx_valid_bit),
        .tx_valid_bit(tx_valid_bit));
  IBUF SS_n_IBUF_inst
       (.I(SS_n),
        .O(SS_n_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  RAM m1
       (.ADDRBWRADDR({SPI_n_3,SPI_n_4,SPI_n_5,SPI_n_6,SPI_n_7,SPI_n_8,SPI_n_9,SPI_n_10}),
        .D(rx_data_bus),
        .E(SPI_n_21),
        .MISO_reg({SPI_n_22,SPI_n_23}),
        .WEA(mem),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .mem_reg_0(m1_n_1),
        .mem_reg_1(m1_n_2),
        .mem_reg_2(SPI_n_24),
        .rx_valid_bit(rx_valid_bit),
        .tx_valid_bit(tx_valid_bit),
        .tx_valid_reg_0(SPI_n_1),
        .tx_valid_reg_1(SPI_n_25));
  FDRE #(
    .INIT(1'b0)) 
    mem_reg_i_11
       (.C(clk_IBUF_BUFG),
        .CE(out_a),
        .D(rx_data_bus[7]),
        .Q(mem_reg_i_11_n_0),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    mem_reg_i_12
       (.C(clk_IBUF_BUFG),
        .CE(out_a),
        .D(rx_data_bus[6]),
        .Q(mem_reg_i_12_n_0),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    mem_reg_i_13
       (.C(clk_IBUF_BUFG),
        .CE(out_a),
        .D(rx_data_bus[5]),
        .Q(mem_reg_i_13_n_0),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    mem_reg_i_14
       (.C(clk_IBUF_BUFG),
        .CE(out_a),
        .D(rx_data_bus[4]),
        .Q(mem_reg_i_14_n_0),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    mem_reg_i_15
       (.C(clk_IBUF_BUFG),
        .CE(out_a),
        .D(rx_data_bus[3]),
        .Q(mem_reg_i_15_n_0),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    mem_reg_i_16
       (.C(clk_IBUF_BUFG),
        .CE(out_a),
        .D(rx_data_bus[2]),
        .Q(mem_reg_i_16_n_0),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    mem_reg_i_17
       (.C(clk_IBUF_BUFG),
        .CE(out_a),
        .D(rx_data_bus[1]),
        .Q(mem_reg_i_17_n_0),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    mem_reg_i_18
       (.C(clk_IBUF_BUFG),
        .CE(out_a),
        .D(rx_data_bus[0]),
        .Q(mem_reg_i_18_n_0),
        .R(\<const0> ));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
endmodule
