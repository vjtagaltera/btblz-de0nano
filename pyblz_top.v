// Copyright (C) 2016  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel MegaCore Function License Agreement, or other 
// applicable license agreement, including, without limitation, 
// that your use is for the sole purpose of programming logic 
// devices manufactured by Intel and sold by Intel or its 
// authorized distributors.  Please refer to the applicable 
// agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"
// CREATED		"Mon Jan 21 20:35:54 2019"

module pyblz_top(
	CLOCK50,
	RXD_IN,
	RXD2_IN,
	TXD_OUT,
	TXD2_OUT,
	LED0_OUT,
	LED1_OUT,
	LED2_OUT,
	LED3_OUT,
	LED4_OUT,
	LED5_OUT,
	LED6_OUT,
	LED7_OUT
);


input wire	CLOCK50;
input wire	RXD_IN;
input wire	RXD2_IN;
output wire	TXD_OUT;
output wire	TXD2_OUT;
output wire	LED0_OUT;
output wire	LED1_OUT;
output wire	LED2_OUT;
output wire	LED3_OUT;
output wire	LED4_OUT;
output wire	LED5_OUT;
output wire	LED6_OUT;
output wire	LED7_OUT;

wire	clk_main;
wire	[7:0] leds;
wire	rst_main;





de0nano_50m_altpll	b2v_inst0(
	.inclk0(CLOCK50),
	
	.c0(clk_main),
	.locked(rst_main));


SysTop	b2v_inst1(
	.rxd_line(RXD_IN),
	.rxd_line2(RXD2_IN),
	.reset(rst_main),
	.clock(clk_main),
	.txd_line(TXD_OUT),
	.txd_line2(TXD2_OUT),
	.leds(leds));

assign	LED0_OUT = leds[0];
assign	LED1_OUT = leds[1];
assign	LED2_OUT = leds[2];
assign	LED3_OUT = leds[3];
assign	LED4_OUT = leds[4];
assign	LED5_OUT = leds[5];
assign	LED6_OUT = leds[6];
assign	LED7_OUT = leds[7];

endmodule
