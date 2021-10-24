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

-- DATE "10/24/2021 12:50:16"

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
SIGNAL \t1|Add0~55\ : std_logic;
SIGNAL \t1|Add1~60\ : std_logic;
SIGNAL \t1|Add2~60\ : std_logic;
SIGNAL \clock_50~combout\ : std_logic;
SIGNAL \clock_1~combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \f1|y_present.timer2~regout\ : std_logic;
SIGNAL \f1|y_present.timer1~regout\ : std_logic;
SIGNAL \f1|y_present.rst~regout\ : std_logic;
SIGNAL \t1|Equal3~0_combout\ : std_logic;
SIGNAL \t1|Add0~57_cout\ : std_logic;
SIGNAL \t1|Add0~40_combout\ : std_logic;
SIGNAL \t1|timer1[8]~14_combout\ : std_logic;
SIGNAL \t1|Add0~42\ : std_logic;
SIGNAL \t1|Add0~42COUT1_61\ : std_logic;
SIGNAL \t1|Add0~35_combout\ : std_logic;
SIGNAL \t1|Add0~37\ : std_logic;
SIGNAL \t1|Add0~37COUT1_62\ : std_logic;
SIGNAL \t1|Add0~30_combout\ : std_logic;
SIGNAL \t1|Add0~32\ : std_logic;
SIGNAL \t1|Add0~32COUT1_63\ : std_logic;
SIGNAL \t1|Add0~45_combout\ : std_logic;
SIGNAL \t1|Add0~47\ : std_logic;
SIGNAL \t1|Add0~47COUT1_64\ : std_logic;
SIGNAL \t1|Add0~50_combout\ : std_logic;
SIGNAL \t1|Add0~52\ : std_logic;
SIGNAL \t1|Add0~15_combout\ : std_logic;
SIGNAL \t1|Add0~17\ : std_logic;
SIGNAL \t1|Add0~17COUT1_65\ : std_logic;
SIGNAL \t1|Add0~20_combout\ : std_logic;
SIGNAL \t1|Add0~22\ : std_logic;
SIGNAL \t1|Add0~22COUT1_66\ : std_logic;
SIGNAL \t1|Add0~25_combout\ : std_logic;
SIGNAL \t1|Add0~27\ : std_logic;
SIGNAL \t1|Add0~27COUT1_67\ : std_logic;
SIGNAL \t1|Add0~0_combout\ : std_logic;
SIGNAL \t1|Add0~2\ : std_logic;
SIGNAL \t1|Add0~2COUT1_68\ : std_logic;
SIGNAL \t1|Add0~5_combout\ : std_logic;
SIGNAL \t1|Add0~7\ : std_logic;
SIGNAL \t1|Add0~10_combout\ : std_logic;
SIGNAL \t1|LED~0_combout\ : std_logic;
SIGNAL \t1|LessThan0~1_combout\ : std_logic;
SIGNAL \t1|LessThan0~0_combout\ : std_logic;
SIGNAL \t1|LessThan0~2_combout\ : std_logic;
SIGNAL \t1|LED~1_combout\ : std_logic;
SIGNAL \t1|Add1~62_cout\ : std_logic;
SIGNAL \t1|Add1~35_combout\ : std_logic;
SIGNAL \t1|timer2[1]~17_combout\ : std_logic;
SIGNAL \t1|Add1~37\ : std_logic;
SIGNAL \t1|Add1~37COUT1_66\ : std_logic;
SIGNAL \t1|Add1~40_combout\ : std_logic;
SIGNAL \t1|Add1~42\ : std_logic;
SIGNAL \t1|Add1~42COUT1_67\ : std_logic;
SIGNAL \t1|Add1~30_combout\ : std_logic;
SIGNAL \t1|Add1~32\ : std_logic;
SIGNAL \t1|Add1~32COUT1_68\ : std_logic;
SIGNAL \t1|Add1~45_combout\ : std_logic;
SIGNAL \t1|Add1~47\ : std_logic;
SIGNAL \t1|Add1~47COUT1_69\ : std_logic;
SIGNAL \t1|Add1~50_combout\ : std_logic;
SIGNAL \t1|Add1~52\ : std_logic;
SIGNAL \t1|Add1~55_combout\ : std_logic;
SIGNAL \t1|Add1~57\ : std_logic;
SIGNAL \t1|Add1~57COUT1_70\ : std_logic;
SIGNAL \t1|Add1~15_combout\ : std_logic;
SIGNAL \t1|Add1~17\ : std_logic;
SIGNAL \t1|Add1~17COUT1_71\ : std_logic;
SIGNAL \t1|Add1~20_combout\ : std_logic;
SIGNAL \t1|Add1~22\ : std_logic;
SIGNAL \t1|Add1~22COUT1_72\ : std_logic;
SIGNAL \t1|Add1~25_combout\ : std_logic;
SIGNAL \t1|Add1~27\ : std_logic;
SIGNAL \t1|Add1~27COUT1_73\ : std_logic;
SIGNAL \t1|Add1~0_combout\ : std_logic;
SIGNAL \t1|Add1~2\ : std_logic;
SIGNAL \t1|Add1~5_combout\ : std_logic;
SIGNAL \t1|Add1~7\ : std_logic;
SIGNAL \t1|Add1~7COUT1_74\ : std_logic;
SIGNAL \t1|Add1~10_combout\ : std_logic;
SIGNAL \t1|LessThan1~0_combout\ : std_logic;
SIGNAL \t1|LessThan1~1_combout\ : std_logic;
SIGNAL \t1|LED~3_combout\ : std_logic;
SIGNAL \t1|LED~4_combout\ : std_logic;
SIGNAL \t1|LED~5_combout\ : std_logic;
SIGNAL \t1|Add2~62_cout\ : std_logic;
SIGNAL \t1|Add2~10_combout\ : std_logic;
SIGNAL \t1|timer3[4]~15_combout\ : std_logic;
SIGNAL \t1|Add2~12\ : std_logic;
SIGNAL \t1|Add2~12COUT1_66\ : std_logic;
SIGNAL \t1|Add2~15_combout\ : std_logic;
SIGNAL \t1|Add2~17\ : std_logic;
SIGNAL \t1|Add2~17COUT1_67\ : std_logic;
SIGNAL \t1|Add2~20_combout\ : std_logic;
SIGNAL \t1|Add2~22\ : std_logic;
SIGNAL \t1|Add2~22COUT1_68\ : std_logic;
SIGNAL \t1|Add2~25_combout\ : std_logic;
SIGNAL \t1|Add2~27\ : std_logic;
SIGNAL \t1|Add2~27COUT1_69\ : std_logic;
SIGNAL \t1|Add2~30_combout\ : std_logic;
SIGNAL \t1|Add2~32\ : std_logic;
SIGNAL \t1|Add2~0_combout\ : std_logic;
SIGNAL \t1|Add2~2\ : std_logic;
SIGNAL \t1|Add2~2COUT1_70\ : std_logic;
SIGNAL \t1|Add2~40_combout\ : std_logic;
SIGNAL \t1|Add2~42\ : std_logic;
SIGNAL \t1|Add2~42COUT1_71\ : std_logic;
SIGNAL \t1|Add2~5_combout\ : std_logic;
SIGNAL \t1|Add2~7\ : std_logic;
SIGNAL \t1|Add2~7COUT1_72\ : std_logic;
SIGNAL \t1|Add2~35_combout\ : std_logic;
SIGNAL \t1|Add2~37\ : std_logic;
SIGNAL \t1|Add2~37COUT1_73\ : std_logic;
SIGNAL \t1|Add2~45_combout\ : std_logic;
SIGNAL \t1|Add2~47\ : std_logic;
SIGNAL \t1|Add2~50_combout\ : std_logic;
SIGNAL \t1|Add2~52\ : std_logic;
SIGNAL \t1|Add2~52COUT1_74\ : std_logic;
SIGNAL \t1|Add2~55_combout\ : std_logic;
SIGNAL \t1|LessThan2~4_combout\ : std_logic;
SIGNAL \t1|LessThan2~2_combout\ : std_logic;
SIGNAL \t1|LessThan2~3_combout\ : std_logic;
SIGNAL \t1|LED~7_combout\ : std_logic;
SIGNAL \t1|LessThan2~0_combout\ : std_logic;
SIGNAL \t1|LessThan2~1_combout\ : std_logic;
SIGNAL \t1|LED~8_combout\ : std_logic;
SIGNAL \t1|LED\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inp_switch~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \t1|timer1\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \t1|timer2\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \t1|timer3\ : std_logic_vector(12 DOWNTO 0);

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

-- Location: LC_X3_Y4_N3
\f1|y_present.timer2\ : maxv_lcell
-- Equation(s):
-- \f1|y_present.timer2~regout\ = DFFEAS((\inp_switch~combout\(1) & ((\f1|y_present.timer2~regout\) # ((!\inp_switch~combout\(0) & !\inp_switch~combout\(2))))) # (!\inp_switch~combout\(1) & (\f1|y_present.timer2~regout\ & (\inp_switch~combout\(0) $ 
-- (!\inp_switch~combout\(2))))), GLOBAL(\clock_1~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f910",
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
	datad => \f1|y_present.timer2~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f1|y_present.timer2~regout\);

-- Location: LC_X3_Y4_N1
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

-- Location: LC_X4_Y5_N2
\f1|y_present.rst\ : maxv_lcell
-- Equation(s):
-- \f1|y_present.rst~regout\ = DFFEAS((\f1|y_present.rst~regout\) # ((\inp_switch~combout\(1) & (!\inp_switch~combout\(2) & !\inp_switch~combout\(0))) # (!\inp_switch~combout\(1) & (\inp_switch~combout\(2) $ (\inp_switch~combout\(0))))), 
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
	dataa => \inp_switch~combout\(1),
	datab => \inp_switch~combout\(2),
	datac => \inp_switch~combout\(0),
	datad => \f1|y_present.rst~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f1|y_present.rst~regout\);

-- Location: LC_X4_Y5_N7
\t1|Equal3~0\ : maxv_lcell
-- Equation(s):
-- \t1|Equal3~0_combout\ = ((\f1|y_present.rst~regout\ & ((!\f1|y_present.timer2~regout\) # (!\f1|y_present.timer1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \f1|y_present.rst~regout\,
	datac => \f1|y_present.timer1~regout\,
	datad => \f1|y_present.timer2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|Equal3~0_combout\);

-- Location: LC_X3_Y5_N6
\t1|timer1[0]\ : maxv_lcell
-- Equation(s):
-- \t1|timer1\(0) = DFFEAS(((\t1|Equal3~0_combout\ & (\t1|LED~1_combout\ $ (\t1|timer1\(0))))), GLOBAL(\clock_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \t1|LED~1_combout\,
	datac => \t1|timer1\(0),
	datad => \t1|Equal3~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|timer1\(0));

-- Location: LC_X5_Y5_N4
\t1|Add0~57\ : maxv_lcell
-- Equation(s):
-- \t1|Add0~57_cout\ = CARRY(((!\t1|timer1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \t1|timer1\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|Add0~55\,
	cout => \t1|Add0~57_cout\);

-- Location: LC_X5_Y5_N5
\t1|Add0~40\ : maxv_lcell
-- Equation(s):
-- \t1|Add0~40_combout\ = (\t1|timer1\(1) $ ((\t1|Add0~57_cout\)))
-- \t1|Add0~42\ = CARRY(((!\t1|Add0~57_cout\) # (!\t1|timer1\(1))))
-- \t1|Add0~42COUT1_61\ = CARRY(((!\t1|Add0~57_cout\) # (!\t1|timer1\(1))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \t1|timer1\(1),
	cin => \t1|Add0~57_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|Add0~40_combout\,
	cout0 => \t1|Add0~42\,
	cout1 => \t1|Add0~42COUT1_61\);

-- Location: LC_X3_Y5_N9
\t1|timer1[8]~14\ : maxv_lcell
-- Equation(s):
-- \t1|timer1[8]~14_combout\ = ((\t1|LED~1_combout\) # ((\f1|y_present.timer2~regout\ & \f1|y_present.timer1~regout\))) # (!\f1|y_present.rst~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffb3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|y_present.timer2~regout\,
	datab => \f1|y_present.rst~regout\,
	datac => \f1|y_present.timer1~regout\,
	datad => \t1|LED~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|timer1[8]~14_combout\);

-- Location: LC_X4_Y5_N6
\t1|timer1[1]\ : maxv_lcell
-- Equation(s):
-- \t1|timer1\(1) = DFFEAS((\f1|y_present.rst~regout\ & (\t1|Add0~40_combout\ & ((!\f1|y_present.timer1~regout\) # (!\f1|y_present.timer2~regout\)))), GLOBAL(\clock_50~combout\), VCC, , \t1|timer1[8]~14_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \f1|y_present.rst~regout\,
	datab => \f1|y_present.timer2~regout\,
	datac => \f1|y_present.timer1~regout\,
	datad => \t1|Add0~40_combout\,
	aclr => GND,
	ena => \t1|timer1[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|timer1\(1));

-- Location: LC_X5_Y5_N6
\t1|Add0~35\ : maxv_lcell
-- Equation(s):
-- \t1|Add0~35_combout\ = \t1|timer1\(2) $ ((((!(!\t1|Add0~57_cout\ & \t1|Add0~42\) # (\t1|Add0~57_cout\ & \t1|Add0~42COUT1_61\)))))
-- \t1|Add0~37\ = CARRY((\t1|timer1\(2) & ((!\t1|Add0~42\))))
-- \t1|Add0~37COUT1_62\ = CARRY((\t1|timer1\(2) & ((!\t1|Add0~42COUT1_61\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t1|timer1\(2),
	cin => \t1|Add0~57_cout\,
	cin0 => \t1|Add0~42\,
	cin1 => \t1|Add0~42COUT1_61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|Add0~35_combout\,
	cout0 => \t1|Add0~37\,
	cout1 => \t1|Add0~37COUT1_62\);

-- Location: LC_X4_Y5_N8
\t1|timer1[2]\ : maxv_lcell
-- Equation(s):
-- \t1|timer1\(2) = DFFEAS((\t1|Add0~35_combout\ & (\f1|y_present.rst~regout\ & ((!\f1|y_present.timer1~regout\) # (!\f1|y_present.timer2~regout\)))), GLOBAL(\clock_50~combout\), VCC, , \t1|timer1[8]~14_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \f1|y_present.timer2~regout\,
	datab => \f1|y_present.timer1~regout\,
	datac => \t1|Add0~35_combout\,
	datad => \f1|y_present.rst~regout\,
	aclr => GND,
	ena => \t1|timer1[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|timer1\(2));

-- Location: LC_X5_Y5_N7
\t1|Add0~30\ : maxv_lcell
-- Equation(s):
-- \t1|Add0~30_combout\ = \t1|timer1\(3) $ (((((!\t1|Add0~57_cout\ & \t1|Add0~37\) # (\t1|Add0~57_cout\ & \t1|Add0~37COUT1_62\)))))
-- \t1|Add0~32\ = CARRY(((!\t1|Add0~37\)) # (!\t1|timer1\(3)))
-- \t1|Add0~32COUT1_63\ = CARRY(((!\t1|Add0~37COUT1_62\)) # (!\t1|timer1\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t1|timer1\(3),
	cin => \t1|Add0~57_cout\,
	cin0 => \t1|Add0~37\,
	cin1 => \t1|Add0~37COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|Add0~30_combout\,
	cout0 => \t1|Add0~32\,
	cout1 => \t1|Add0~32COUT1_63\);

-- Location: LC_X4_Y5_N5
\t1|timer1[3]\ : maxv_lcell
-- Equation(s):
-- \t1|timer1\(3) = DFFEAS((\f1|y_present.rst~regout\ & (\t1|Add0~30_combout\ & ((!\f1|y_present.timer1~regout\) # (!\f1|y_present.timer2~regout\)))), GLOBAL(\clock_50~combout\), VCC, , \t1|timer1[8]~14_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \f1|y_present.rst~regout\,
	datab => \f1|y_present.timer2~regout\,
	datac => \f1|y_present.timer1~regout\,
	datad => \t1|Add0~30_combout\,
	aclr => GND,
	ena => \t1|timer1[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|timer1\(3));

-- Location: LC_X5_Y5_N8
\t1|Add0~45\ : maxv_lcell
-- Equation(s):
-- \t1|Add0~45_combout\ = \t1|timer1\(4) $ ((((!(!\t1|Add0~57_cout\ & \t1|Add0~32\) # (\t1|Add0~57_cout\ & \t1|Add0~32COUT1_63\)))))
-- \t1|Add0~47\ = CARRY((\t1|timer1\(4) & ((!\t1|Add0~32\))))
-- \t1|Add0~47COUT1_64\ = CARRY((\t1|timer1\(4) & ((!\t1|Add0~32COUT1_63\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t1|timer1\(4),
	cin => \t1|Add0~57_cout\,
	cin0 => \t1|Add0~32\,
	cin1 => \t1|Add0~32COUT1_63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|Add0~45_combout\,
	cout0 => \t1|Add0~47\,
	cout1 => \t1|Add0~47COUT1_64\);

-- Location: LC_X4_Y5_N0
\t1|timer1[4]\ : maxv_lcell
-- Equation(s):
-- \t1|timer1\(4) = DFFEAS((\f1|y_present.rst~regout\ & (\t1|Add0~45_combout\ & ((!\f1|y_present.timer1~regout\) # (!\f1|y_present.timer2~regout\)))), GLOBAL(\clock_50~combout\), VCC, , \t1|timer1[8]~14_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \f1|y_present.rst~regout\,
	datab => \f1|y_present.timer2~regout\,
	datac => \f1|y_present.timer1~regout\,
	datad => \t1|Add0~45_combout\,
	aclr => GND,
	ena => \t1|timer1[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|timer1\(4));

-- Location: LC_X5_Y5_N9
\t1|Add0~50\ : maxv_lcell
-- Equation(s):
-- \t1|Add0~50_combout\ = (\t1|timer1\(5) $ (((!\t1|Add0~57_cout\ & \t1|Add0~47\) # (\t1|Add0~57_cout\ & \t1|Add0~47COUT1_64\))))
-- \t1|Add0~52\ = CARRY(((!\t1|Add0~47COUT1_64\) # (!\t1|timer1\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \t1|timer1\(5),
	cin => \t1|Add0~57_cout\,
	cin0 => \t1|Add0~47\,
	cin1 => \t1|Add0~47COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|Add0~50_combout\,
	cout => \t1|Add0~52\);

-- Location: LC_X4_Y5_N4
\t1|timer1[5]\ : maxv_lcell
-- Equation(s):
-- \t1|timer1\(5) = DFFEAS((\t1|Add0~50_combout\ & (\f1|y_present.rst~regout\ & ((!\f1|y_present.timer1~regout\) # (!\f1|y_present.timer2~regout\)))), GLOBAL(\clock_50~combout\), VCC, , \t1|timer1[8]~14_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \f1|y_present.timer2~regout\,
	datab => \f1|y_present.timer1~regout\,
	datac => \t1|Add0~50_combout\,
	datad => \f1|y_present.rst~regout\,
	aclr => GND,
	ena => \t1|timer1[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|timer1\(5));

-- Location: LC_X6_Y5_N0
\t1|Add0~15\ : maxv_lcell
-- Equation(s):
-- \t1|Add0~15_combout\ = (\t1|timer1\(6) $ ((!\t1|Add0~52\)))
-- \t1|Add0~17\ = CARRY(((\t1|timer1\(6) & !\t1|Add0~52\)))
-- \t1|Add0~17COUT1_65\ = CARRY(((\t1|timer1\(6) & !\t1|Add0~52\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \t1|timer1\(6),
	cin => \t1|Add0~52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|Add0~15_combout\,
	cout0 => \t1|Add0~17\,
	cout1 => \t1|Add0~17COUT1_65\);

-- Location: LC_X4_Y5_N1
\t1|timer1[6]\ : maxv_lcell
-- Equation(s):
-- \t1|timer1\(6) = DFFEAS((\f1|y_present.rst~regout\ & (\t1|Add0~15_combout\ & ((!\f1|y_present.timer1~regout\) # (!\f1|y_present.timer2~regout\)))), GLOBAL(\clock_50~combout\), VCC, , \t1|timer1[8]~14_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \f1|y_present.rst~regout\,
	datab => \f1|y_present.timer2~regout\,
	datac => \f1|y_present.timer1~regout\,
	datad => \t1|Add0~15_combout\,
	aclr => GND,
	ena => \t1|timer1[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|timer1\(6));

-- Location: LC_X6_Y5_N1
\t1|Add0~20\ : maxv_lcell
-- Equation(s):
-- \t1|Add0~20_combout\ = (\t1|timer1\(7) $ (((!\t1|Add0~52\ & \t1|Add0~17\) # (\t1|Add0~52\ & \t1|Add0~17COUT1_65\))))
-- \t1|Add0~22\ = CARRY(((!\t1|Add0~17\) # (!\t1|timer1\(7))))
-- \t1|Add0~22COUT1_66\ = CARRY(((!\t1|Add0~17COUT1_65\) # (!\t1|timer1\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \t1|timer1\(7),
	cin => \t1|Add0~52\,
	cin0 => \t1|Add0~17\,
	cin1 => \t1|Add0~17COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|Add0~20_combout\,
	cout0 => \t1|Add0~22\,
	cout1 => \t1|Add0~22COUT1_66\);

-- Location: LC_X4_Y5_N9
\t1|timer1[7]\ : maxv_lcell
-- Equation(s):
-- \t1|timer1\(7) = DFFEAS((\f1|y_present.rst~regout\ & (\t1|Add0~20_combout\ & ((!\f1|y_present.timer1~regout\) # (!\f1|y_present.timer2~regout\)))), GLOBAL(\clock_50~combout\), VCC, , \t1|timer1[8]~14_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \f1|y_present.rst~regout\,
	datab => \f1|y_present.timer2~regout\,
	datac => \f1|y_present.timer1~regout\,
	datad => \t1|Add0~20_combout\,
	aclr => GND,
	ena => \t1|timer1[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|timer1\(7));

-- Location: LC_X6_Y5_N2
\t1|Add0~25\ : maxv_lcell
-- Equation(s):
-- \t1|Add0~25_combout\ = (\t1|timer1\(8) $ ((!(!\t1|Add0~52\ & \t1|Add0~22\) # (\t1|Add0~52\ & \t1|Add0~22COUT1_66\))))
-- \t1|Add0~27\ = CARRY(((\t1|timer1\(8) & !\t1|Add0~22\)))
-- \t1|Add0~27COUT1_67\ = CARRY(((\t1|timer1\(8) & !\t1|Add0~22COUT1_66\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \t1|timer1\(8),
	cin => \t1|Add0~52\,
	cin0 => \t1|Add0~22\,
	cin1 => \t1|Add0~22COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|Add0~25_combout\,
	cout0 => \t1|Add0~27\,
	cout1 => \t1|Add0~27COUT1_67\);

-- Location: LC_X4_Y5_N3
\t1|timer1[8]\ : maxv_lcell
-- Equation(s):
-- \t1|timer1\(8) = DFFEAS((\f1|y_present.rst~regout\ & (\t1|Add0~25_combout\ & ((!\f1|y_present.timer1~regout\) # (!\f1|y_present.timer2~regout\)))), GLOBAL(\clock_50~combout\), VCC, , \t1|timer1[8]~14_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \f1|y_present.rst~regout\,
	datab => \f1|y_present.timer2~regout\,
	datac => \f1|y_present.timer1~regout\,
	datad => \t1|Add0~25_combout\,
	aclr => GND,
	ena => \t1|timer1[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|timer1\(8));

-- Location: LC_X6_Y5_N3
\t1|Add0~0\ : maxv_lcell
-- Equation(s):
-- \t1|Add0~0_combout\ = \t1|timer1\(9) $ (((((!\t1|Add0~52\ & \t1|Add0~27\) # (\t1|Add0~52\ & \t1|Add0~27COUT1_67\)))))
-- \t1|Add0~2\ = CARRY(((!\t1|Add0~27\)) # (!\t1|timer1\(9)))
-- \t1|Add0~2COUT1_68\ = CARRY(((!\t1|Add0~27COUT1_67\)) # (!\t1|timer1\(9)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t1|timer1\(9),
	cin => \t1|Add0~52\,
	cin0 => \t1|Add0~27\,
	cin1 => \t1|Add0~27COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|Add0~0_combout\,
	cout0 => \t1|Add0~2\,
	cout1 => \t1|Add0~2COUT1_68\);

-- Location: LC_X3_Y5_N2
\t1|timer1[9]\ : maxv_lcell
-- Equation(s):
-- \t1|timer1\(9) = DFFEAS((\f1|y_present.rst~regout\ & (\t1|Add0~0_combout\ & ((!\f1|y_present.timer1~regout\) # (!\f1|y_present.timer2~regout\)))), GLOBAL(\clock_50~combout\), VCC, , \t1|timer1[8]~14_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \f1|y_present.timer2~regout\,
	datab => \f1|y_present.rst~regout\,
	datac => \f1|y_present.timer1~regout\,
	datad => \t1|Add0~0_combout\,
	aclr => GND,
	ena => \t1|timer1[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|timer1\(9));

-- Location: LC_X6_Y5_N4
\t1|Add0~5\ : maxv_lcell
-- Equation(s):
-- \t1|Add0~5_combout\ = (\t1|timer1\(10) $ ((!(!\t1|Add0~52\ & \t1|Add0~2\) # (\t1|Add0~52\ & \t1|Add0~2COUT1_68\))))
-- \t1|Add0~7\ = CARRY(((\t1|timer1\(10) & !\t1|Add0~2COUT1_68\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \t1|timer1\(10),
	cin => \t1|Add0~52\,
	cin0 => \t1|Add0~2\,
	cin1 => \t1|Add0~2COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|Add0~5_combout\,
	cout => \t1|Add0~7\);

-- Location: LC_X3_Y5_N3
\t1|timer1[10]\ : maxv_lcell
-- Equation(s):
-- \t1|timer1\(10) = DFFEAS((\f1|y_present.rst~regout\ & (\t1|Add0~5_combout\ & ((!\f1|y_present.timer1~regout\) # (!\f1|y_present.timer2~regout\)))), GLOBAL(\clock_50~combout\), VCC, , \t1|timer1[8]~14_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \f1|y_present.timer2~regout\,
	datab => \f1|y_present.rst~regout\,
	datac => \f1|y_present.timer1~regout\,
	datad => \t1|Add0~5_combout\,
	aclr => GND,
	ena => \t1|timer1[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|timer1\(10));

-- Location: LC_X6_Y5_N5
\t1|Add0~10\ : maxv_lcell
-- Equation(s):
-- \t1|Add0~10_combout\ = ((\t1|Add0~7\ $ (\t1|timer1\(11))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \t1|timer1\(11),
	cin => \t1|Add0~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|Add0~10_combout\);

-- Location: LC_X3_Y5_N0
\t1|timer1[11]\ : maxv_lcell
-- Equation(s):
-- \t1|timer1\(11) = DFFEAS((\f1|y_present.rst~regout\ & (\t1|Add0~10_combout\ & ((!\f1|y_present.timer1~regout\) # (!\f1|y_present.timer2~regout\)))), GLOBAL(\clock_50~combout\), VCC, , \t1|timer1[8]~14_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \f1|y_present.timer2~regout\,
	datab => \f1|y_present.rst~regout\,
	datac => \f1|y_present.timer1~regout\,
	datad => \t1|Add0~10_combout\,
	aclr => GND,
	ena => \t1|timer1[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|timer1\(11));

-- Location: LC_X3_Y5_N5
\t1|LED~0\ : maxv_lcell
-- Equation(s):
-- \t1|LED~0_combout\ = (\f1|y_present.rst~regout\ & (((!\t1|timer1\(10) & !\t1|timer1\(9))) # (!\t1|timer1\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t1|timer1\(10),
	datab => \t1|timer1\(11),
	datac => \f1|y_present.rst~regout\,
	datad => \t1|timer1\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|LED~0_combout\);

-- Location: LC_X3_Y5_N4
\t1|LessThan0~1\ : maxv_lcell
-- Equation(s):
-- \t1|LessThan0~1_combout\ = (\t1|timer1\(3)) # ((\t1|timer1\(2) & ((\t1|timer1\(1)) # (!\t1|timer1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t1|timer1\(0),
	datab => \t1|timer1\(2),
	datac => \t1|timer1\(1),
	datad => \t1|timer1\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|LessThan0~1_combout\);

-- Location: LC_X3_Y5_N1
\t1|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \t1|LessThan0~0_combout\ = (\t1|timer1\(8) & (\t1|timer1\(11) & (\t1|timer1\(7) & \t1|timer1\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t1|timer1\(8),
	datab => \t1|timer1\(11),
	datac => \t1|timer1\(7),
	datad => \t1|timer1\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|LessThan0~0_combout\);

-- Location: LC_X3_Y5_N7
\t1|LessThan0~2\ : maxv_lcell
-- Equation(s):
-- \t1|LessThan0~2_combout\ = (\t1|LessThan0~0_combout\ & ((\t1|timer1\(4)) # ((\t1|timer1\(5)) # (\t1|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t1|timer1\(4),
	datab => \t1|timer1\(5),
	datac => \t1|LessThan0~1_combout\,
	datad => \t1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|LessThan0~2_combout\);

-- Location: LC_X3_Y5_N8
\t1|LED~1\ : maxv_lcell
-- Equation(s):
-- \t1|LED~1_combout\ = (!\f1|y_present.timer2~regout\ & (\f1|y_present.timer1~regout\ & (\t1|LED~0_combout\ & !\t1|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|y_present.timer2~regout\,
	datab => \f1|y_present.timer1~regout\,
	datac => \t1|LED~0_combout\,
	datad => \t1|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|LED~1_combout\);

-- Location: LC_X1_Y5_N2
\t1|LED[0]\ : maxv_lcell
-- Equation(s):
-- \t1|LED\(0) = DFFEAS(((\clock_1~combout\ & ((\t1|LED~1_combout\)))), GLOBAL(\clock_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \clock_1~combout\,
	datad => \t1|LED~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|LED\(0));

-- Location: LC_X3_Y4_N5
\t1|timer2[0]\ : maxv_lcell
-- Equation(s):
-- \t1|timer2\(0) = DFFEAS((\t1|Equal3~0_combout\ & ((\t1|timer2\(0) $ (\t1|LED~5_combout\)))), GLOBAL(\clock_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0aa0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \t1|Equal3~0_combout\,
	datac => \t1|timer2\(0),
	datad => \t1|LED~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|timer2\(0));

-- Location: LC_X2_Y6_N4
\t1|Add1~62\ : maxv_lcell
-- Equation(s):
-- \t1|Add1~62_cout\ = CARRY(((!\t1|timer2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \t1|timer2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|Add1~60\,
	cout => \t1|Add1~62_cout\);

-- Location: LC_X2_Y6_N5
\t1|Add1~35\ : maxv_lcell
-- Equation(s):
-- \t1|Add1~35_combout\ = (\t1|timer2\(1) $ ((\t1|Add1~62_cout\)))
-- \t1|Add1~37\ = CARRY(((!\t1|Add1~62_cout\) # (!\t1|timer2\(1))))
-- \t1|Add1~37COUT1_66\ = CARRY(((!\t1|Add1~62_cout\) # (!\t1|timer2\(1))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \t1|timer2\(1),
	cin => \t1|Add1~62_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|Add1~35_combout\,
	cout0 => \t1|Add1~37\,
	cout1 => \t1|Add1~37COUT1_66\);

-- Location: LC_X4_Y6_N3
\t1|timer2[1]~17\ : maxv_lcell
-- Equation(s):
-- \t1|timer2[1]~17_combout\ = ((\f1|y_present.timer2~regout\ & ((\f1|y_present.timer1~regout\) # (!\t1|LED~4_combout\)))) # (!\f1|y_present.rst~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d5f5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|y_present.rst~regout\,
	datab => \f1|y_present.timer1~regout\,
	datac => \f1|y_present.timer2~regout\,
	datad => \t1|LED~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|timer2[1]~17_combout\);

-- Location: LC_X4_Y6_N7
\t1|timer2[1]\ : maxv_lcell
-- Equation(s):
-- \t1|timer2\(1) = DFFEAS((\f1|y_present.rst~regout\ & (\t1|Add1~35_combout\ & ((!\f1|y_present.timer1~regout\) # (!\f1|y_present.timer2~regout\)))), GLOBAL(\clock_50~combout\), VCC, , \t1|timer2[1]~17_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \f1|y_present.timer2~regout\,
	datab => \f1|y_present.timer1~regout\,
	datac => \f1|y_present.rst~regout\,
	datad => \t1|Add1~35_combout\,
	aclr => GND,
	ena => \t1|timer2[1]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|timer2\(1));

-- Location: LC_X2_Y6_N6
\t1|Add1~40\ : maxv_lcell
-- Equation(s):
-- \t1|Add1~40_combout\ = (\t1|timer2\(2) $ ((!(!\t1|Add1~62_cout\ & \t1|Add1~37\) # (\t1|Add1~62_cout\ & \t1|Add1~37COUT1_66\))))
-- \t1|Add1~42\ = CARRY(((\t1|timer2\(2) & !\t1|Add1~37\)))
-- \t1|Add1~42COUT1_67\ = CARRY(((\t1|timer2\(2) & !\t1|Add1~37COUT1_66\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \t1|timer2\(2),
	cin => \t1|Add1~62_cout\,
	cin0 => \t1|Add1~37\,
	cin1 => \t1|Add1~37COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|Add1~40_combout\,
	cout0 => \t1|Add1~42\,
	cout1 => \t1|Add1~42COUT1_67\);

-- Location: LC_X4_Y6_N6
\t1|timer2[2]\ : maxv_lcell
-- Equation(s):
-- \t1|timer2\(2) = DFFEAS((\f1|y_present.rst~regout\ & (\t1|Add1~40_combout\ & ((!\f1|y_present.timer1~regout\) # (!\f1|y_present.timer2~regout\)))), GLOBAL(\clock_50~combout\), VCC, , \t1|timer2[1]~17_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0888",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \f1|y_present.rst~regout\,
	datab => \t1|Add1~40_combout\,
	datac => \f1|y_present.timer2~regout\,
	datad => \f1|y_present.timer1~regout\,
	aclr => GND,
	ena => \t1|timer2[1]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|timer2\(2));

-- Location: LC_X2_Y6_N7
\t1|Add1~30\ : maxv_lcell
-- Equation(s):
-- \t1|Add1~30_combout\ = (\t1|timer2\(3) $ (((!\t1|Add1~62_cout\ & \t1|Add1~42\) # (\t1|Add1~62_cout\ & \t1|Add1~42COUT1_67\))))
-- \t1|Add1~32\ = CARRY(((!\t1|Add1~42\) # (!\t1|timer2\(3))))
-- \t1|Add1~32COUT1_68\ = CARRY(((!\t1|Add1~42COUT1_67\) # (!\t1|timer2\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \t1|timer2\(3),
	cin => \t1|Add1~62_cout\,
	cin0 => \t1|Add1~42\,
	cin1 => \t1|Add1~42COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|Add1~30_combout\,
	cout0 => \t1|Add1~32\,
	cout1 => \t1|Add1~32COUT1_68\);

-- Location: LC_X4_Y6_N4
\t1|timer2[3]\ : maxv_lcell
-- Equation(s):
-- \t1|timer2\(3) = DFFEAS((\f1|y_present.rst~regout\ & (\t1|Add1~30_combout\ & ((!\f1|y_present.timer1~regout\) # (!\f1|y_present.timer2~regout\)))), GLOBAL(\clock_50~combout\), VCC, , \t1|timer2[1]~17_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \f1|y_present.timer2~regout\,
	datab => \f1|y_present.timer1~regout\,
	datac => \f1|y_present.rst~regout\,
	datad => \t1|Add1~30_combout\,
	aclr => GND,
	ena => \t1|timer2[1]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|timer2\(3));

-- Location: LC_X2_Y6_N8
\t1|Add1~45\ : maxv_lcell
-- Equation(s):
-- \t1|Add1~45_combout\ = (\t1|timer2\(4) $ ((!(!\t1|Add1~62_cout\ & \t1|Add1~32\) # (\t1|Add1~62_cout\ & \t1|Add1~32COUT1_68\))))
-- \t1|Add1~47\ = CARRY(((\t1|timer2\(4) & !\t1|Add1~32\)))
-- \t1|Add1~47COUT1_69\ = CARRY(((\t1|timer2\(4) & !\t1|Add1~32COUT1_68\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \t1|timer2\(4),
	cin => \t1|Add1~62_cout\,
	cin0 => \t1|Add1~32\,
	cin1 => \t1|Add1~32COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|Add1~45_combout\,
	cout0 => \t1|Add1~47\,
	cout1 => \t1|Add1~47COUT1_69\);

-- Location: LC_X4_Y6_N9
\t1|timer2[4]\ : maxv_lcell
-- Equation(s):
-- \t1|timer2\(4) = DFFEAS((\f1|y_present.rst~regout\ & (\t1|Add1~45_combout\ & ((!\f1|y_present.timer1~regout\) # (!\f1|y_present.timer2~regout\)))), GLOBAL(\clock_50~combout\), VCC, , \t1|timer2[1]~17_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \f1|y_present.timer2~regout\,
	datab => \f1|y_present.timer1~regout\,
	datac => \f1|y_present.rst~regout\,
	datad => \t1|Add1~45_combout\,
	aclr => GND,
	ena => \t1|timer2[1]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|timer2\(4));

-- Location: LC_X2_Y6_N9
\t1|Add1~50\ : maxv_lcell
-- Equation(s):
-- \t1|Add1~50_combout\ = (\t1|timer2\(5) $ (((!\t1|Add1~62_cout\ & \t1|Add1~47\) # (\t1|Add1~62_cout\ & \t1|Add1~47COUT1_69\))))
-- \t1|Add1~52\ = CARRY(((!\t1|Add1~47COUT1_69\) # (!\t1|timer2\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \t1|timer2\(5),
	cin => \t1|Add1~62_cout\,
	cin0 => \t1|Add1~47\,
	cin1 => \t1|Add1~47COUT1_69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|Add1~50_combout\,
	cout => \t1|Add1~52\);

-- Location: LC_X4_Y6_N5
\t1|timer2[5]\ : maxv_lcell
-- Equation(s):
-- \t1|timer2\(5) = DFFEAS((\f1|y_present.rst~regout\ & (\t1|Add1~50_combout\ & ((!\f1|y_present.timer1~regout\) # (!\f1|y_present.timer2~regout\)))), GLOBAL(\clock_50~combout\), VCC, , \t1|timer2[1]~17_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \f1|y_present.timer2~regout\,
	datab => \f1|y_present.timer1~regout\,
	datac => \f1|y_present.rst~regout\,
	datad => \t1|Add1~50_combout\,
	aclr => GND,
	ena => \t1|timer2[1]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|timer2\(5));

-- Location: LC_X3_Y6_N0
\t1|Add1~55\ : maxv_lcell
-- Equation(s):
-- \t1|Add1~55_combout\ = (\t1|timer2\(6) $ ((!\t1|Add1~52\)))
-- \t1|Add1~57\ = CARRY(((\t1|timer2\(6) & !\t1|Add1~52\)))
-- \t1|Add1~57COUT1_70\ = CARRY(((\t1|timer2\(6) & !\t1|Add1~52\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \t1|timer2\(6),
	cin => \t1|Add1~52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|Add1~55_combout\,
	cout0 => \t1|Add1~57\,
	cout1 => \t1|Add1~57COUT1_70\);

-- Location: LC_X3_Y6_N9
\t1|timer2[6]\ : maxv_lcell
-- Equation(s):
-- \t1|timer2\(6) = DFFEAS((\f1|y_present.rst~regout\ & (\t1|Add1~55_combout\ & ((!\f1|y_present.timer1~regout\) # (!\f1|y_present.timer2~regout\)))), GLOBAL(\clock_50~combout\), VCC, , \t1|timer2[1]~17_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "20a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \f1|y_present.rst~regout\,
	datab => \f1|y_present.timer2~regout\,
	datac => \t1|Add1~55_combout\,
	datad => \f1|y_present.timer1~regout\,
	aclr => GND,
	ena => \t1|timer2[1]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|timer2\(6));

-- Location: LC_X3_Y6_N1
\t1|Add1~15\ : maxv_lcell
-- Equation(s):
-- \t1|Add1~15_combout\ = \t1|timer2\(7) $ (((((!\t1|Add1~52\ & \t1|Add1~57\) # (\t1|Add1~52\ & \t1|Add1~57COUT1_70\)))))
-- \t1|Add1~17\ = CARRY(((!\t1|Add1~57\)) # (!\t1|timer2\(7)))
-- \t1|Add1~17COUT1_71\ = CARRY(((!\t1|Add1~57COUT1_70\)) # (!\t1|timer2\(7)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t1|timer2\(7),
	cin => \t1|Add1~52\,
	cin0 => \t1|Add1~57\,
	cin1 => \t1|Add1~57COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|Add1~15_combout\,
	cout0 => \t1|Add1~17\,
	cout1 => \t1|Add1~17COUT1_71\);

-- Location: LC_X3_Y6_N8
\t1|timer2[7]\ : maxv_lcell
-- Equation(s):
-- \t1|timer2\(7) = DFFEAS((\f1|y_present.rst~regout\ & (\t1|Add1~15_combout\ & ((!\f1|y_present.timer2~regout\) # (!\f1|y_present.timer1~regout\)))), GLOBAL(\clock_50~combout\), VCC, , \t1|timer2[1]~17_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0888",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \f1|y_present.rst~regout\,
	datab => \t1|Add1~15_combout\,
	datac => \f1|y_present.timer1~regout\,
	datad => \f1|y_present.timer2~regout\,
	aclr => GND,
	ena => \t1|timer2[1]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|timer2\(7));

-- Location: LC_X3_Y6_N2
\t1|Add1~20\ : maxv_lcell
-- Equation(s):
-- \t1|Add1~20_combout\ = (\t1|timer2\(8) $ ((!(!\t1|Add1~52\ & \t1|Add1~17\) # (\t1|Add1~52\ & \t1|Add1~17COUT1_71\))))
-- \t1|Add1~22\ = CARRY(((\t1|timer2\(8) & !\t1|Add1~17\)))
-- \t1|Add1~22COUT1_72\ = CARRY(((\t1|timer2\(8) & !\t1|Add1~17COUT1_71\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \t1|timer2\(8),
	cin => \t1|Add1~52\,
	cin0 => \t1|Add1~17\,
	cin1 => \t1|Add1~17COUT1_71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|Add1~20_combout\,
	cout0 => \t1|Add1~22\,
	cout1 => \t1|Add1~22COUT1_72\);

-- Location: LC_X5_Y6_N9
\t1|timer2[8]\ : maxv_lcell
-- Equation(s):
-- \t1|timer2\(8) = DFFEAS((\f1|y_present.rst~regout\ & (\t1|Add1~20_combout\ & ((!\f1|y_present.timer1~regout\) # (!\f1|y_present.timer2~regout\)))), GLOBAL(\clock_50~combout\), VCC, , \t1|timer2[1]~17_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \f1|y_present.timer2~regout\,
	datab => \f1|y_present.timer1~regout\,
	datac => \f1|y_present.rst~regout\,
	datad => \t1|Add1~20_combout\,
	aclr => GND,
	ena => \t1|timer2[1]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|timer2\(8));

-- Location: LC_X3_Y6_N3
\t1|Add1~25\ : maxv_lcell
-- Equation(s):
-- \t1|Add1~25_combout\ = (\t1|timer2\(9) $ (((!\t1|Add1~52\ & \t1|Add1~22\) # (\t1|Add1~52\ & \t1|Add1~22COUT1_72\))))
-- \t1|Add1~27\ = CARRY(((!\t1|Add1~22\) # (!\t1|timer2\(9))))
-- \t1|Add1~27COUT1_73\ = CARRY(((!\t1|Add1~22COUT1_72\) # (!\t1|timer2\(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \t1|timer2\(9),
	cin => \t1|Add1~52\,
	cin0 => \t1|Add1~22\,
	cin1 => \t1|Add1~22COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|Add1~25_combout\,
	cout0 => \t1|Add1~27\,
	cout1 => \t1|Add1~27COUT1_73\);

-- Location: LC_X3_Y6_N7
\t1|timer2[9]\ : maxv_lcell
-- Equation(s):
-- \t1|timer2\(9) = DFFEAS((\f1|y_present.rst~regout\ & (\t1|Add1~25_combout\ & ((!\f1|y_present.timer1~regout\) # (!\f1|y_present.timer2~regout\)))), GLOBAL(\clock_50~combout\), VCC, , \t1|timer2[1]~17_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \f1|y_present.rst~regout\,
	datab => \f1|y_present.timer2~regout\,
	datac => \f1|y_present.timer1~regout\,
	datad => \t1|Add1~25_combout\,
	aclr => GND,
	ena => \t1|timer2[1]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|timer2\(9));

-- Location: LC_X3_Y6_N4
\t1|Add1~0\ : maxv_lcell
-- Equation(s):
-- \t1|Add1~0_combout\ = (\t1|timer2\(10) $ ((!(!\t1|Add1~52\ & \t1|Add1~27\) # (\t1|Add1~52\ & \t1|Add1~27COUT1_73\))))
-- \t1|Add1~2\ = CARRY(((\t1|timer2\(10) & !\t1|Add1~27COUT1_73\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \t1|timer2\(10),
	cin => \t1|Add1~52\,
	cin0 => \t1|Add1~27\,
	cin1 => \t1|Add1~27COUT1_73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|Add1~0_combout\,
	cout => \t1|Add1~2\);

-- Location: LC_X5_Y6_N7
\t1|timer2[10]\ : maxv_lcell
-- Equation(s):
-- \t1|timer2\(10) = DFFEAS((\f1|y_present.rst~regout\ & (\t1|Add1~0_combout\ & ((!\f1|y_present.timer1~regout\) # (!\f1|y_present.timer2~regout\)))), GLOBAL(\clock_50~combout\), VCC, , \t1|timer2[1]~17_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \f1|y_present.timer2~regout\,
	datab => \f1|y_present.timer1~regout\,
	datac => \f1|y_present.rst~regout\,
	datad => \t1|Add1~0_combout\,
	aclr => GND,
	ena => \t1|timer2[1]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|timer2\(10));

-- Location: LC_X3_Y6_N5
\t1|Add1~5\ : maxv_lcell
-- Equation(s):
-- \t1|Add1~5_combout\ = (\t1|timer2\(11) $ ((\t1|Add1~2\)))
-- \t1|Add1~7\ = CARRY(((!\t1|Add1~2\) # (!\t1|timer2\(11))))
-- \t1|Add1~7COUT1_74\ = CARRY(((!\t1|Add1~2\) # (!\t1|timer2\(11))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \t1|timer2\(11),
	cin => \t1|Add1~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|Add1~5_combout\,
	cout0 => \t1|Add1~7\,
	cout1 => \t1|Add1~7COUT1_74\);

-- Location: LC_X5_Y6_N4
\t1|timer2[11]\ : maxv_lcell
-- Equation(s):
-- \t1|timer2\(11) = DFFEAS((\f1|y_present.rst~regout\ & (\t1|Add1~5_combout\ & ((!\f1|y_present.timer1~regout\) # (!\f1|y_present.timer2~regout\)))), GLOBAL(\clock_50~combout\), VCC, , \t1|timer2[1]~17_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \f1|y_present.timer2~regout\,
	datab => \f1|y_present.timer1~regout\,
	datac => \f1|y_present.rst~regout\,
	datad => \t1|Add1~5_combout\,
	aclr => GND,
	ena => \t1|timer2[1]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|timer2\(11));

-- Location: LC_X3_Y6_N6
\t1|Add1~10\ : maxv_lcell
-- Equation(s):
-- \t1|Add1~10_combout\ = (((!\t1|Add1~2\ & \t1|Add1~7\) # (\t1|Add1~2\ & \t1|Add1~7COUT1_74\) $ (!\t1|timer2\(12))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \t1|timer2\(12),
	cin => \t1|Add1~2\,
	cin0 => \t1|Add1~7\,
	cin1 => \t1|Add1~7COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|Add1~10_combout\);

-- Location: LC_X5_Y6_N8
\t1|timer2[12]\ : maxv_lcell
-- Equation(s):
-- \t1|timer2\(12) = DFFEAS((\f1|y_present.rst~regout\ & (\t1|Add1~10_combout\ & ((!\f1|y_present.timer1~regout\) # (!\f1|y_present.timer2~regout\)))), GLOBAL(\clock_50~combout\), VCC, , \t1|timer2[1]~17_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "40c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \f1|y_present.timer2~regout\,
	datab => \f1|y_present.rst~regout\,
	datac => \t1|Add1~10_combout\,
	datad => \f1|y_present.timer1~regout\,
	aclr => GND,
	ena => \t1|timer2[1]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|timer2\(12));

-- Location: LC_X4_Y6_N8
\t1|LessThan1~0\ : maxv_lcell
-- Equation(s):
-- \t1|LessThan1~0_combout\ = (\t1|timer2\(3) & ((\t1|timer2\(2)) # ((\t1|timer2\(1)) # (!\t1|timer2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t1|timer2\(2),
	datab => \t1|timer2\(1),
	datac => \t1|timer2\(3),
	datad => \t1|timer2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|LessThan1~0_combout\);

-- Location: LC_X4_Y6_N0
\t1|LessThan1~1\ : maxv_lcell
-- Equation(s):
-- \t1|LessThan1~1_combout\ = (\t1|timer2\(5)) # ((\t1|timer2\(4)) # ((\t1|timer2\(6)) # (\t1|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t1|timer2\(5),
	datab => \t1|timer2\(4),
	datac => \t1|timer2\(6),
	datad => \t1|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|LessThan1~1_combout\);

-- Location: LC_X4_Y6_N1
\t1|LED~3\ : maxv_lcell
-- Equation(s):
-- \t1|LED~3_combout\ = (\t1|timer2\(8) & (\t1|timer2\(9) & (\t1|timer2\(7) & \t1|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t1|timer2\(8),
	datab => \t1|timer2\(9),
	datac => \t1|timer2\(7),
	datad => \t1|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|LED~3_combout\);

-- Location: LC_X4_Y6_N2
\t1|LED~4\ : maxv_lcell
-- Equation(s):
-- \t1|LED~4_combout\ = (\t1|timer2\(12) & ((\t1|timer2\(10)) # ((\t1|timer2\(11)) # (\t1|LED~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t1|timer2\(10),
	datab => \t1|timer2\(12),
	datac => \t1|timer2\(11),
	datad => \t1|LED~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|LED~4_combout\);

-- Location: LC_X3_Y4_N9
\t1|LED~5\ : maxv_lcell
-- Equation(s):
-- \t1|LED~5_combout\ = (\f1|y_present.rst~regout\ & (!\f1|y_present.timer1~regout\ & (!\t1|LED~4_combout\ & \f1|y_present.timer2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|y_present.rst~regout\,
	datab => \f1|y_present.timer1~regout\,
	datac => \t1|LED~4_combout\,
	datad => \f1|y_present.timer2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|LED~5_combout\);

-- Location: LC_X3_Y4_N0
\t1|LED[1]\ : maxv_lcell
-- Equation(s):
-- \t1|LED\(1) = DFFEAS(((\clock_1~combout\ & ((\t1|LED~5_combout\)))), GLOBAL(\clock_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \clock_1~combout\,
	datad => \t1|LED~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|LED\(1));

-- Location: LC_X5_Y4_N3
\t1|timer3[0]\ : maxv_lcell
-- Equation(s):
-- \t1|timer3\(0) = DFFEAS(((\t1|Equal3~0_combout\ & (\t1|LED~8_combout\ $ (\t1|timer3\(0))))), GLOBAL(\clock_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \t1|LED~8_combout\,
	datac => \t1|Equal3~0_combout\,
	datad => \t1|timer3\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|timer3\(0));

-- Location: LC_X6_Y4_N4
\t1|Add2~62\ : maxv_lcell
-- Equation(s):
-- \t1|Add2~62_cout\ = CARRY(((!\t1|timer3\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \t1|timer3\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|Add2~60\,
	cout => \t1|Add2~62_cout\);

-- Location: LC_X6_Y4_N5
\t1|Add2~10\ : maxv_lcell
-- Equation(s):
-- \t1|Add2~10_combout\ = \t1|timer3\(1) $ ((((\t1|Add2~62_cout\))))
-- \t1|Add2~12\ = CARRY(((!\t1|Add2~62_cout\)) # (!\t1|timer3\(1)))
-- \t1|Add2~12COUT1_66\ = CARRY(((!\t1|Add2~62_cout\)) # (!\t1|timer3\(1)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t1|timer3\(1),
	cin => \t1|Add2~62_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|Add2~10_combout\,
	cout0 => \t1|Add2~12\,
	cout1 => \t1|Add2~12COUT1_66\);

-- Location: LC_X4_Y4_N8
\t1|timer3[4]~15\ : maxv_lcell
-- Equation(s):
-- \t1|timer3[4]~15_combout\ = ((\t1|LED~8_combout\) # ((\f1|y_present.timer2~regout\ & \f1|y_present.timer1~regout\))) # (!\f1|y_present.rst~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff8f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|y_present.timer2~regout\,
	datab => \f1|y_present.timer1~regout\,
	datac => \f1|y_present.rst~regout\,
	datad => \t1|LED~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|timer3[4]~15_combout\);

-- Location: LC_X5_Y4_N0
\t1|timer3[1]\ : maxv_lcell
-- Equation(s):
-- \t1|timer3\(1) = DFFEAS((\f1|y_present.rst~regout\ & (\t1|Add2~10_combout\ & ((!\f1|y_present.timer1~regout\) # (!\f1|y_present.timer2~regout\)))), GLOBAL(\clock_50~combout\), VCC, , \t1|timer3[4]~15_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \f1|y_present.timer2~regout\,
	datab => \f1|y_present.rst~regout\,
	datac => \f1|y_present.timer1~regout\,
	datad => \t1|Add2~10_combout\,
	aclr => GND,
	ena => \t1|timer3[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|timer3\(1));

-- Location: LC_X6_Y4_N6
\t1|Add2~15\ : maxv_lcell
-- Equation(s):
-- \t1|Add2~15_combout\ = (\t1|timer3\(2) $ ((!(!\t1|Add2~62_cout\ & \t1|Add2~12\) # (\t1|Add2~62_cout\ & \t1|Add2~12COUT1_66\))))
-- \t1|Add2~17\ = CARRY(((\t1|timer3\(2) & !\t1|Add2~12\)))
-- \t1|Add2~17COUT1_67\ = CARRY(((\t1|timer3\(2) & !\t1|Add2~12COUT1_66\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \t1|timer3\(2),
	cin => \t1|Add2~62_cout\,
	cin0 => \t1|Add2~12\,
	cin1 => \t1|Add2~12COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|Add2~15_combout\,
	cout0 => \t1|Add2~17\,
	cout1 => \t1|Add2~17COUT1_67\);

-- Location: LC_X4_Y4_N4
\t1|timer3[2]\ : maxv_lcell
-- Equation(s):
-- \t1|timer3\(2) = DFFEAS((\f1|y_present.rst~regout\ & (\t1|Add2~15_combout\ & ((!\f1|y_present.timer1~regout\) # (!\f1|y_present.timer2~regout\)))), GLOBAL(\clock_50~combout\), VCC, , \t1|timer3[4]~15_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \f1|y_present.timer2~regout\,
	datab => \f1|y_present.timer1~regout\,
	datac => \f1|y_present.rst~regout\,
	datad => \t1|Add2~15_combout\,
	aclr => GND,
	ena => \t1|timer3[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|timer3\(2));

-- Location: LC_X6_Y4_N7
\t1|Add2~20\ : maxv_lcell
-- Equation(s):
-- \t1|Add2~20_combout\ = (\t1|timer3\(3) $ (((!\t1|Add2~62_cout\ & \t1|Add2~17\) # (\t1|Add2~62_cout\ & \t1|Add2~17COUT1_67\))))
-- \t1|Add2~22\ = CARRY(((!\t1|Add2~17\) # (!\t1|timer3\(3))))
-- \t1|Add2~22COUT1_68\ = CARRY(((!\t1|Add2~17COUT1_67\) # (!\t1|timer3\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \t1|timer3\(3),
	cin => \t1|Add2~62_cout\,
	cin0 => \t1|Add2~17\,
	cin1 => \t1|Add2~17COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|Add2~20_combout\,
	cout0 => \t1|Add2~22\,
	cout1 => \t1|Add2~22COUT1_68\);

-- Location: LC_X4_Y4_N9
\t1|timer3[3]\ : maxv_lcell
-- Equation(s):
-- \t1|timer3\(3) = DFFEAS((\f1|y_present.rst~regout\ & (\t1|Add2~20_combout\ & ((!\f1|y_present.timer2~regout\) # (!\f1|y_present.timer1~regout\)))), GLOBAL(\clock_50~combout\), VCC, , \t1|timer3[4]~15_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \f1|y_present.rst~regout\,
	datab => \f1|y_present.timer1~regout\,
	datac => \f1|y_present.timer2~regout\,
	datad => \t1|Add2~20_combout\,
	aclr => GND,
	ena => \t1|timer3[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|timer3\(3));

-- Location: LC_X6_Y4_N8
\t1|Add2~25\ : maxv_lcell
-- Equation(s):
-- \t1|Add2~25_combout\ = (\t1|timer3\(4) $ ((!(!\t1|Add2~62_cout\ & \t1|Add2~22\) # (\t1|Add2~62_cout\ & \t1|Add2~22COUT1_68\))))
-- \t1|Add2~27\ = CARRY(((\t1|timer3\(4) & !\t1|Add2~22\)))
-- \t1|Add2~27COUT1_69\ = CARRY(((\t1|timer3\(4) & !\t1|Add2~22COUT1_68\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \t1|timer3\(4),
	cin => \t1|Add2~62_cout\,
	cin0 => \t1|Add2~22\,
	cin1 => \t1|Add2~22COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|Add2~25_combout\,
	cout0 => \t1|Add2~27\,
	cout1 => \t1|Add2~27COUT1_69\);

-- Location: LC_X4_Y4_N5
\t1|timer3[4]\ : maxv_lcell
-- Equation(s):
-- \t1|timer3\(4) = DFFEAS((\f1|y_present.rst~regout\ & (\t1|Add2~25_combout\ & ((!\f1|y_present.timer2~regout\) # (!\f1|y_present.timer1~regout\)))), GLOBAL(\clock_50~combout\), VCC, , \t1|timer3[4]~15_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \f1|y_present.rst~regout\,
	datab => \f1|y_present.timer1~regout\,
	datac => \f1|y_present.timer2~regout\,
	datad => \t1|Add2~25_combout\,
	aclr => GND,
	ena => \t1|timer3[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|timer3\(4));

-- Location: LC_X6_Y4_N9
\t1|Add2~30\ : maxv_lcell
-- Equation(s):
-- \t1|Add2~30_combout\ = (\t1|timer3\(5) $ (((!\t1|Add2~62_cout\ & \t1|Add2~27\) # (\t1|Add2~62_cout\ & \t1|Add2~27COUT1_69\))))
-- \t1|Add2~32\ = CARRY(((!\t1|Add2~27COUT1_69\) # (!\t1|timer3\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \t1|timer3\(5),
	cin => \t1|Add2~62_cout\,
	cin0 => \t1|Add2~27\,
	cin1 => \t1|Add2~27COUT1_69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|Add2~30_combout\,
	cout => \t1|Add2~32\);

-- Location: LC_X4_Y4_N6
\t1|timer3[5]\ : maxv_lcell
-- Equation(s):
-- \t1|timer3\(5) = DFFEAS((\f1|y_present.rst~regout\ & (\t1|Add2~30_combout\ & ((!\f1|y_present.timer2~regout\) # (!\f1|y_present.timer1~regout\)))), GLOBAL(\clock_50~combout\), VCC, , \t1|timer3[4]~15_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \f1|y_present.rst~regout\,
	datab => \f1|y_present.timer1~regout\,
	datac => \f1|y_present.timer2~regout\,
	datad => \t1|Add2~30_combout\,
	aclr => GND,
	ena => \t1|timer3[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|timer3\(5));

-- Location: LC_X7_Y4_N0
\t1|Add2~0\ : maxv_lcell
-- Equation(s):
-- \t1|Add2~0_combout\ = \t1|timer3\(6) $ ((((!\t1|Add2~32\))))
-- \t1|Add2~2\ = CARRY((\t1|timer3\(6) & ((!\t1|Add2~32\))))
-- \t1|Add2~2COUT1_70\ = CARRY((\t1|timer3\(6) & ((!\t1|Add2~32\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t1|timer3\(6),
	cin => \t1|Add2~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|Add2~0_combout\,
	cout0 => \t1|Add2~2\,
	cout1 => \t1|Add2~2COUT1_70\);

-- Location: LC_X5_Y4_N4
\t1|timer3[6]\ : maxv_lcell
-- Equation(s):
-- \t1|timer3\(6) = DFFEAS((\f1|y_present.rst~regout\ & (\t1|Add2~0_combout\ & ((!\f1|y_present.timer1~regout\) # (!\f1|y_present.timer2~regout\)))), GLOBAL(\clock_50~combout\), VCC, , \t1|timer3[4]~15_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \f1|y_present.timer2~regout\,
	datab => \f1|y_present.rst~regout\,
	datac => \f1|y_present.timer1~regout\,
	datad => \t1|Add2~0_combout\,
	aclr => GND,
	ena => \t1|timer3[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|timer3\(6));

-- Location: LC_X7_Y4_N1
\t1|Add2~40\ : maxv_lcell
-- Equation(s):
-- \t1|Add2~40_combout\ = (\t1|timer3\(7) $ (((!\t1|Add2~32\ & \t1|Add2~2\) # (\t1|Add2~32\ & \t1|Add2~2COUT1_70\))))
-- \t1|Add2~42\ = CARRY(((!\t1|Add2~2\) # (!\t1|timer3\(7))))
-- \t1|Add2~42COUT1_71\ = CARRY(((!\t1|Add2~2COUT1_70\) # (!\t1|timer3\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \t1|timer3\(7),
	cin => \t1|Add2~32\,
	cin0 => \t1|Add2~2\,
	cin1 => \t1|Add2~2COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|Add2~40_combout\,
	cout0 => \t1|Add2~42\,
	cout1 => \t1|Add2~42COUT1_71\);

-- Location: LC_X6_Y4_N2
\t1|timer3[7]\ : maxv_lcell
-- Equation(s):
-- \t1|timer3\(7) = DFFEAS((\f1|y_present.rst~regout\ & (\t1|Add2~40_combout\ & ((!\f1|y_present.timer2~regout\) # (!\f1|y_present.timer1~regout\)))), GLOBAL(\clock_50~combout\), VCC, , \t1|timer3[4]~15_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \f1|y_present.timer1~regout\,
	datab => \f1|y_present.timer2~regout\,
	datac => \f1|y_present.rst~regout\,
	datad => \t1|Add2~40_combout\,
	aclr => GND,
	ena => \t1|timer3[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|timer3\(7));

-- Location: LC_X7_Y4_N2
\t1|Add2~5\ : maxv_lcell
-- Equation(s):
-- \t1|Add2~5_combout\ = (\t1|timer3\(8) $ ((!(!\t1|Add2~32\ & \t1|Add2~42\) # (\t1|Add2~32\ & \t1|Add2~42COUT1_71\))))
-- \t1|Add2~7\ = CARRY(((\t1|timer3\(8) & !\t1|Add2~42\)))
-- \t1|Add2~7COUT1_72\ = CARRY(((\t1|timer3\(8) & !\t1|Add2~42COUT1_71\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \t1|timer3\(8),
	cin => \t1|Add2~32\,
	cin0 => \t1|Add2~42\,
	cin1 => \t1|Add2~42COUT1_71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|Add2~5_combout\,
	cout0 => \t1|Add2~7\,
	cout1 => \t1|Add2~7COUT1_72\);

-- Location: LC_X5_Y4_N2
\t1|timer3[8]\ : maxv_lcell
-- Equation(s):
-- \t1|timer3\(8) = DFFEAS((\f1|y_present.rst~regout\ & (\t1|Add2~5_combout\ & ((!\f1|y_present.timer1~regout\) # (!\f1|y_present.timer2~regout\)))), GLOBAL(\clock_50~combout\), VCC, , \t1|timer3[4]~15_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \f1|y_present.timer2~regout\,
	datab => \f1|y_present.rst~regout\,
	datac => \f1|y_present.timer1~regout\,
	datad => \t1|Add2~5_combout\,
	aclr => GND,
	ena => \t1|timer3[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|timer3\(8));

-- Location: LC_X7_Y4_N3
\t1|Add2~35\ : maxv_lcell
-- Equation(s):
-- \t1|Add2~35_combout\ = (\t1|timer3\(9) $ (((!\t1|Add2~32\ & \t1|Add2~7\) # (\t1|Add2~32\ & \t1|Add2~7COUT1_72\))))
-- \t1|Add2~37\ = CARRY(((!\t1|Add2~7\) # (!\t1|timer3\(9))))
-- \t1|Add2~37COUT1_73\ = CARRY(((!\t1|Add2~7COUT1_72\) # (!\t1|timer3\(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \t1|timer3\(9),
	cin => \t1|Add2~32\,
	cin0 => \t1|Add2~7\,
	cin1 => \t1|Add2~7COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|Add2~35_combout\,
	cout0 => \t1|Add2~37\,
	cout1 => \t1|Add2~37COUT1_73\);

-- Location: LC_X5_Y4_N7
\t1|timer3[9]\ : maxv_lcell
-- Equation(s):
-- \t1|timer3\(9) = DFFEAS((\f1|y_present.rst~regout\ & (\t1|Add2~35_combout\ & ((!\f1|y_present.timer1~regout\) # (!\f1|y_present.timer2~regout\)))), GLOBAL(\clock_50~combout\), VCC, , \t1|timer3[4]~15_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \f1|y_present.timer2~regout\,
	datab => \f1|y_present.rst~regout\,
	datac => \f1|y_present.timer1~regout\,
	datad => \t1|Add2~35_combout\,
	aclr => GND,
	ena => \t1|timer3[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|timer3\(9));

-- Location: LC_X7_Y4_N4
\t1|Add2~45\ : maxv_lcell
-- Equation(s):
-- \t1|Add2~45_combout\ = \t1|timer3\(10) $ ((((!(!\t1|Add2~32\ & \t1|Add2~37\) # (\t1|Add2~32\ & \t1|Add2~37COUT1_73\)))))
-- \t1|Add2~47\ = CARRY((\t1|timer3\(10) & ((!\t1|Add2~37COUT1_73\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t1|timer3\(10),
	cin => \t1|Add2~32\,
	cin0 => \t1|Add2~37\,
	cin1 => \t1|Add2~37COUT1_73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|Add2~45_combout\,
	cout => \t1|Add2~47\);

-- Location: LC_X4_Y4_N0
\t1|timer3[10]\ : maxv_lcell
-- Equation(s):
-- \t1|timer3\(10) = DFFEAS((\f1|y_present.rst~regout\ & (\t1|Add2~45_combout\ & ((!\f1|y_present.timer2~regout\) # (!\f1|y_present.timer1~regout\)))), GLOBAL(\clock_50~combout\), VCC, , \t1|timer3[4]~15_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \f1|y_present.rst~regout\,
	datab => \f1|y_present.timer1~regout\,
	datac => \f1|y_present.timer2~regout\,
	datad => \t1|Add2~45_combout\,
	aclr => GND,
	ena => \t1|timer3[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|timer3\(10));

-- Location: LC_X7_Y4_N5
\t1|Add2~50\ : maxv_lcell
-- Equation(s):
-- \t1|Add2~50_combout\ = (\t1|timer3\(11) $ ((\t1|Add2~47\)))
-- \t1|Add2~52\ = CARRY(((!\t1|Add2~47\) # (!\t1|timer3\(11))))
-- \t1|Add2~52COUT1_74\ = CARRY(((!\t1|Add2~47\) # (!\t1|timer3\(11))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \t1|timer3\(11),
	cin => \t1|Add2~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|Add2~50_combout\,
	cout0 => \t1|Add2~52\,
	cout1 => \t1|Add2~52COUT1_74\);

-- Location: LC_X4_Y4_N1
\t1|timer3[11]\ : maxv_lcell
-- Equation(s):
-- \t1|timer3\(11) = DFFEAS((\f1|y_present.rst~regout\ & (\t1|Add2~50_combout\ & ((!\f1|y_present.timer2~regout\) # (!\f1|y_present.timer1~regout\)))), GLOBAL(\clock_50~combout\), VCC, , \t1|timer3[4]~15_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \f1|y_present.rst~regout\,
	datab => \f1|y_present.timer1~regout\,
	datac => \f1|y_present.timer2~regout\,
	datad => \t1|Add2~50_combout\,
	aclr => GND,
	ena => \t1|timer3[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|timer3\(11));

-- Location: LC_X7_Y4_N6
\t1|Add2~55\ : maxv_lcell
-- Equation(s):
-- \t1|Add2~55_combout\ = (((!\t1|Add2~47\ & \t1|Add2~52\) # (\t1|Add2~47\ & \t1|Add2~52COUT1_74\) $ (!\t1|timer3\(12))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \t1|timer3\(12),
	cin => \t1|Add2~47\,
	cin0 => \t1|Add2~52\,
	cin1 => \t1|Add2~52COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|Add2~55_combout\);

-- Location: LC_X6_Y4_N3
\t1|timer3[12]\ : maxv_lcell
-- Equation(s):
-- \t1|timer3\(12) = DFFEAS((\f1|y_present.rst~regout\ & (\t1|Add2~55_combout\ & ((!\f1|y_present.timer2~regout\) # (!\f1|y_present.timer1~regout\)))), GLOBAL(\clock_50~combout\), VCC, , \t1|timer3[4]~15_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "40c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	dataa => \f1|y_present.timer1~regout\,
	datab => \f1|y_present.rst~regout\,
	datac => \t1|Add2~55_combout\,
	datad => \f1|y_present.timer2~regout\,
	aclr => GND,
	ena => \t1|timer3[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|timer3\(12));

-- Location: LC_X4_Y4_N3
\t1|LessThan2~4\ : maxv_lcell
-- Equation(s):
-- \t1|LessThan2~4_combout\ = ((\t1|timer3\(10) & (\t1|timer3\(12) & \t1|timer3\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \t1|timer3\(10),
	datac => \t1|timer3\(12),
	datad => \t1|timer3\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|LessThan2~4_combout\);

-- Location: LC_X5_Y4_N8
\t1|LessThan2~2\ : maxv_lcell
-- Equation(s):
-- \t1|LessThan2~2_combout\ = (\t1|timer3\(6) & (\t1|timer3\(8) & ((\t1|timer3\(5)) # (\t1|timer3\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8880",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t1|timer3\(6),
	datab => \t1|timer3\(8),
	datac => \t1|timer3\(5),
	datad => \t1|timer3\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|LessThan2~2_combout\);

-- Location: LC_X5_Y4_N9
\t1|LessThan2~3\ : maxv_lcell
-- Equation(s):
-- \t1|LessThan2~3_combout\ = (\t1|timer3\(9)) # ((\t1|LessThan2~2_combout\) # ((\t1|timer3\(8) & \t1|timer3\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t1|timer3\(8),
	datab => \t1|timer3\(9),
	datac => \t1|timer3\(7),
	datad => \t1|LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|LessThan2~3_combout\);

-- Location: LC_X3_Y4_N8
\t1|LED~7\ : maxv_lcell
-- Equation(s):
-- \t1|LED~7_combout\ = ((!\f1|y_present.timer1~regout\ & (!\f1|y_present.timer2~regout\ & \f1|y_present.rst~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \f1|y_present.timer1~regout\,
	datac => \f1|y_present.timer2~regout\,
	datad => \f1|y_present.rst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|LED~7_combout\);

-- Location: LC_X5_Y4_N1
\t1|LessThan2~0\ : maxv_lcell
-- Equation(s):
-- \t1|LessThan2~0_combout\ = (\t1|timer3\(6) & (\t1|timer3\(8) & ((\t1|timer3\(1)) # (!\t1|timer3\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t1|timer3\(6),
	datab => \t1|timer3\(8),
	datac => \t1|timer3\(1),
	datad => \t1|timer3\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|LessThan2~0_combout\);

-- Location: LC_X4_Y4_N2
\t1|LessThan2~1\ : maxv_lcell
-- Equation(s):
-- \t1|LessThan2~1_combout\ = (\t1|timer3\(2) & (\t1|timer3\(3) & ((\t1|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t1|timer3\(2),
	datab => \t1|timer3\(3),
	datad => \t1|LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|LessThan2~1_combout\);

-- Location: LC_X4_Y4_N7
\t1|LED~8\ : maxv_lcell
-- Equation(s):
-- \t1|LED~8_combout\ = (\t1|LED~7_combout\ & (((!\t1|LessThan2~3_combout\ & !\t1|LessThan2~1_combout\)) # (!\t1|LessThan2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t1|LessThan2~4_combout\,
	datab => \t1|LessThan2~3_combout\,
	datac => \t1|LED~7_combout\,
	datad => \t1|LessThan2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|LED~8_combout\);

-- Location: LC_X1_Y4_N1
\t1|LED[2]\ : maxv_lcell
-- Equation(s):
-- \t1|LED\(2) = DFFEAS(((\clock_1~combout\ & ((\t1|LED~8_combout\)))), GLOBAL(\clock_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datab => \clock_1~combout\,
	datad => \t1|LED~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|LED\(2));

-- Location: LC_X5_Y4_N6
\t1|LED[3]\ : maxv_lcell
-- Equation(s):
-- \t1|LED\(3) = DFFEAS((((!\f1|y_present.rst~regout\))), GLOBAL(\clock_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~combout\,
	datac => \f1|y_present.rst~regout\,
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
	datain => \t1|LED\(0),
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
	datain => \t1|LED\(2),
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


