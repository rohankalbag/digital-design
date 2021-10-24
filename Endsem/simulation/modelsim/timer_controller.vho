-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "10/24/2021 13:40:49"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	timer_controller IS
    PORT (
	inp_switch : IN std_logic_vector(2 DOWNTO 0);
	reset : IN std_logic;
	clock_50 : IN std_logic;
	clock_1 : IN std_logic;
	out_LED : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END timer_controller;

-- Design Ports Information


ARCHITECTURE structure OF timer_controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_inp_switch : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock_50 : std_logic;
SIGNAL ww_clock_1 : std_logic;
SIGNAL ww_out_LED : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_50~combout\ : std_logic;
SIGNAL \clock_1~combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \f1|y_present.rst~regout\ : std_logic;
SIGNAL \f1|y_present.timer2~regout\ : std_logic;
SIGNAL \f1|y_present.timer1~regout\ : std_logic;
SIGNAL \t1|LED\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inp_switch~combout\ : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_inp_switch <= inp_switch;
ww_reset <= reset;
ww_clock_50 <= clock_50;
ww_clock_1 <= clock_1;
out_LED <= ww_out_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock_50~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clock_50,
	combout => \clock_50~combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock_1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clock_1,
	combout => \clock_1~combout\);

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp_switch[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp_switch(0),
	combout => \inp_switch~combout\(0));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp_switch[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp_switch(2),
	combout => \inp_switch~combout\(2));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp_switch[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp_switch(1),
	combout => \inp_switch~combout\(1));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LC_X6_Y4_N9
\f1|y_present.rst\ : maxv_lcell
-- Equation(s):
-- \f1|y_present.rst~regout\ = DFFEAS((\f1|y_present.rst~regout\) # ((\inp_switch~combout\(0) & (!\inp_switch~combout\(2) & !\inp_switch~combout\(1))) # (!\inp_switch~combout\(0) & (\inp_switch~combout\(2) $ (\inp_switch~combout\(1))))), 
-- GLOBAL(\clock_1~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff16",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_1~combout\,
	dataa => \inp_switch~combout\(0),
	datab => \inp_switch~combout\(2),
	datac => \inp_switch~combout\(1),
	datad => \f1|y_present.rst~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f1|y_present.rst~regout\);

-- Location: LC_X6_Y4_N4
\f1|y_present.timer2\ : maxv_lcell
-- Equation(s):
-- \f1|y_present.timer2~regout\ = DFFEAS((\f1|y_present.timer2~regout\ & ((\inp_switch~combout\(1)) # (\inp_switch~combout\(0) $ (!\inp_switch~combout\(2))))) # (!\f1|y_present.timer2~regout\ & (!\inp_switch~combout\(0) & (!\inp_switch~combout\(2) & 
-- \inp_switch~combout\(1)))), GLOBAL(\clock_1~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f190",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_1~combout\,
	dataa => \inp_switch~combout\(0),
	datab => \inp_switch~combout\(2),
	datac => \f1|y_present.timer2~regout\,
	datad => \inp_switch~combout\(1),
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f1|y_present.timer2~regout\);

-- Location: LC_X6_Y4_N8
\f1|y_present.timer1\ : maxv_lcell
-- Equation(s):
-- \f1|y_present.timer1~regout\ = DFFEAS((\inp_switch~combout\(0) & ((\f1|y_present.timer1~regout\) # ((!\inp_switch~combout\(2) & !\inp_switch~combout\(1))))) # (!\inp_switch~combout\(0) & (\f1|y_present.timer1~regout\ & (\inp_switch~combout\(2) $ 
-- (!\inp_switch~combout\(1))))), GLOBAL(\clock_1~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eb02",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_1~combout\,
	dataa => \inp_switch~combout\(0),
	datab => \inp_switch~combout\(2),
	datac => \inp_switch~combout\(1),
	datad => \f1|y_present.timer1~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f1|y_present.timer1~regout\);

-- Location: LC_X6_Y4_N7
\t1|LED[1]\ : maxv_lcell
-- Equation(s):
-- \t1|LED\(1) = DFFEAS(((\f1|y_present.rst~regout\ & (\f1|y_present.timer2~regout\ & !\f1|y_present.timer1~regout\))), GLOBAL(\clock_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \f1|y_present.rst~regout\,
	datac => \f1|y_present.timer2~regout\,
	datad => \f1|y_present.timer1~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|LED\(1));

-- Location: LC_X6_Y4_N3
\t1|LED[3]\ : maxv_lcell
-- Equation(s):
-- \t1|LED\(3) = DFFEAS((((!\f1|y_present.rst~regout\))), GLOBAL(\clock_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datad => \f1|y_present.rst~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|LED\(3));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\out_LED[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_out_LED(0));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\out_LED[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \t1|LED\(1),
	oe => VCC,
	padio => ww_out_LED(1));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\out_LED[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_out_LED(2));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\out_LED[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \t1|LED\(3),
	oe => VCC,
	padio => ww_out_LED(3));
END structure;


