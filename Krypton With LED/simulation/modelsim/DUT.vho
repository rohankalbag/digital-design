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

-- DATE "10/23/2021 23:22:15"

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

ENTITY 	test IS
    PORT (
	clk_slow : IN std_logic;
	inp : IN std_logic_vector(4 DOWNTO 0);
	rst : IN std_logic;
	detect : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END test;

-- Design Ports Information


ARCHITECTURE structure OF test IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_slow : std_logic;
SIGNAL ww_inp : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_rst : std_logic;
SIGNAL ww_detect : std_logic_vector(6 DOWNTO 0);
SIGNAL \krypton_det_instance|Equal6~0_combout\ : std_logic;
SIGNAL \clk_slow~combout\ : std_logic;
SIGNAL \krypton_det_instance|Equal5~0_combout\ : std_logic;
SIGNAL \krypton_det_instance|Equal5~1_combout\ : std_logic;
SIGNAL \krypton_det_instance|Equal6~1_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \krypton_det_instance|y_present~12_combout\ : std_logic;
SIGNAL \krypton_det_instance|Equal1~0_combout\ : std_logic;
SIGNAL \krypton_det_instance|Equal4~0_combout\ : std_logic;
SIGNAL \krypton_det_instance|Equal2~0_combout\ : std_logic;
SIGNAL \krypton_det_instance|Equal3~4_combout\ : std_logic;
SIGNAL \krypton_det_instance|Equal2~1_combout\ : std_logic;
SIGNAL \krypton_det_instance|Equal1~1_combout\ : std_logic;
SIGNAL \krypton_det_instance|outp[6]~1_combout\ : std_logic;
SIGNAL \krypton_det_instance|y_present.rst~regout\ : std_logic;
SIGNAL \krypton_det_instance|y_present~23_combout\ : std_logic;
SIGNAL \krypton_det_instance|y_present.s1~regout\ : std_logic;
SIGNAL \krypton_det_instance|y_present~20_combout\ : std_logic;
SIGNAL \krypton_det_instance|y_present.s2~regout\ : std_logic;
SIGNAL \krypton_det_instance|y_present~18_combout\ : std_logic;
SIGNAL \krypton_det_instance|y_present.s3~regout\ : std_logic;
SIGNAL \krypton_det_instance|y_present~16_combout\ : std_logic;
SIGNAL \krypton_det_instance|y_present.s4~regout\ : std_logic;
SIGNAL \krypton_det_instance|y_present~14_combout\ : std_logic;
SIGNAL \krypton_det_instance|y_present.s5~regout\ : std_logic;
SIGNAL \krypton_det_instance|y_present~11_combout\ : std_logic;
SIGNAL \krypton_det_instance|y_present.s6~regout\ : std_logic;
SIGNAL \krypton_det_instance|outp[0]~0_combout\ : std_logic;
SIGNAL \krypton_det_instance|Selector11~0_combout\ : std_logic;
SIGNAL \krypton_det_instance|Selector10~2_combout\ : std_logic;
SIGNAL \krypton_det_instance|Selector9~0_combout\ : std_logic;
SIGNAL \krypton_det_instance|Selector9~1_combout\ : std_logic;
SIGNAL \krypton_det_instance|Selector8~0_combout\ : std_logic;
SIGNAL \krypton_det_instance|Selector7~0_combout\ : std_logic;
SIGNAL \inp~combout\ : std_logic_vector(4 DOWNTO 0);

BEGIN

ww_clk_slow <= clk_slow;
ww_inp <= inp;
ww_rst <= rst;
detect <= ww_detect;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp(0),
	combout => \inp~combout\(0));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp(3),
	combout => \inp~combout\(3));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp(4),
	combout => \inp~combout\(4));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp(1),
	combout => \inp~combout\(1));

-- Location: LC_X7_Y5_N6
\krypton_det_instance|Equal6~0\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|Equal6~0_combout\ = ((\inp~combout\(3) & (!\inp~combout\(4) & \inp~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inp~combout\(3),
	datac => \inp~combout\(4),
	datad => \inp~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \krypton_det_instance|Equal6~0_combout\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp(2),
	combout => \inp~combout\(2));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk_slow~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk_slow,
	combout => \clk_slow~combout\);

-- Location: LC_X7_Y5_N7
\krypton_det_instance|Equal5~0\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|Equal5~0_combout\ = (\inp~combout\(0) & (\inp~combout\(3) & (!\inp~combout\(4) & \inp~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp~combout\(0),
	datab => \inp~combout\(3),
	datac => \inp~combout\(4),
	datad => \inp~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \krypton_det_instance|Equal5~0_combout\);

-- Location: LC_X7_Y4_N2
\krypton_det_instance|Equal5~1\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|Equal5~1_combout\ = (((\inp~combout\(2) & \krypton_det_instance|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \inp~combout\(2),
	datad => \krypton_det_instance|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \krypton_det_instance|Equal5~1_combout\);

-- Location: LC_X7_Y4_N4
\krypton_det_instance|Equal6~1\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|Equal6~1_combout\ = ((!\inp~combout\(0) & (\inp~combout\(2) & \krypton_det_instance|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inp~combout\(0),
	datac => \inp~combout\(2),
	datad => \krypton_det_instance|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \krypton_det_instance|Equal6~1_combout\);

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: LC_X9_Y4_N6
\krypton_det_instance|y_present~12\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|y_present~12_combout\ = ((!\rst~combout\ & ((\krypton_det_instance|y_present.s6~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datad => \krypton_det_instance|y_present.s6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \krypton_det_instance|y_present~12_combout\);

-- Location: LC_X7_Y5_N4
\krypton_det_instance|Equal1~0\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|Equal1~0_combout\ = (!\inp~combout\(0) & (!\inp~combout\(3) & (\inp~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp~combout\(0),
	datab => \inp~combout\(3),
	datac => \inp~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \krypton_det_instance|Equal1~0_combout\);

-- Location: LC_X7_Y5_N5
\krypton_det_instance|Equal4~0\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|Equal4~0_combout\ = ((\inp~combout\(2) & (\krypton_det_instance|Equal1~0_combout\ & !\inp~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inp~combout\(2),
	datac => \krypton_det_instance|Equal1~0_combout\,
	datad => \inp~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \krypton_det_instance|Equal4~0_combout\);

-- Location: LC_X7_Y5_N8
\krypton_det_instance|Equal2~0\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|Equal2~0_combout\ = ((!\inp~combout\(2) & ((!\inp~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inp~combout\(2),
	datad => \inp~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \krypton_det_instance|Equal2~0_combout\);

-- Location: LC_X7_Y5_N9
\krypton_det_instance|Equal3~4\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|Equal3~4_combout\ = (!\inp~combout\(0) & (!\inp~combout\(3) & (\inp~combout\(4) & \krypton_det_instance|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp~combout\(0),
	datab => \inp~combout\(3),
	datac => \inp~combout\(4),
	datad => \krypton_det_instance|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \krypton_det_instance|Equal3~4_combout\);

-- Location: LC_X7_Y5_N1
\krypton_det_instance|Equal2~1\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|Equal2~1_combout\ = (\inp~combout\(0) & (\inp~combout\(3) & (\inp~combout\(4) & \krypton_det_instance|Equal2~0_combout\)))

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
	dataa => \inp~combout\(0),
	datab => \inp~combout\(3),
	datac => \inp~combout\(4),
	datad => \krypton_det_instance|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \krypton_det_instance|Equal2~1_combout\);

-- Location: LC_X7_Y5_N0
\krypton_det_instance|Equal1~1\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|Equal1~1_combout\ = ((!\inp~combout\(2) & (\krypton_det_instance|Equal1~0_combout\ & \inp~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inp~combout\(2),
	datac => \krypton_det_instance|Equal1~0_combout\,
	datad => \inp~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \krypton_det_instance|Equal1~1_combout\);

-- Location: LC_X8_Y4_N0
\krypton_det_instance|outp[6]~1\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|outp[6]~1_combout\ = ((\krypton_det_instance|y_present.rst~regout\) # ((\krypton_det_instance|Equal5~0_combout\ & !\inp~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \krypton_det_instance|Equal5~0_combout\,
	datac => \inp~combout\(2),
	datad => \krypton_det_instance|y_present.rst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \krypton_det_instance|outp[6]~1_combout\);

-- Location: LC_X8_Y4_N1
\krypton_det_instance|y_present.rst\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|y_present.rst~regout\ = DFFEAS((!\rst~combout\ & (\krypton_det_instance|outp[6]~1_combout\ & ((!\krypton_det_instance|y_present.s6~regout\) # (!\krypton_det_instance|Equal6~1_combout\)))), GLOBAL(\clk_slow~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_slow~combout\,
	dataa => \rst~combout\,
	datab => \krypton_det_instance|Equal6~1_combout\,
	datac => \krypton_det_instance|y_present.s6~regout\,
	datad => \krypton_det_instance|outp[6]~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \krypton_det_instance|y_present.rst~regout\);

-- Location: LC_X8_Y4_N3
\krypton_det_instance|y_present~23\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|y_present~23_combout\ = (!\inp~combout\(2) & (\krypton_det_instance|Equal5~0_combout\ & (!\rst~combout\ & !\krypton_det_instance|y_present.rst~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp~combout\(2),
	datab => \krypton_det_instance|Equal5~0_combout\,
	datac => \rst~combout\,
	datad => \krypton_det_instance|y_present.rst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \krypton_det_instance|y_present~23_combout\);

-- Location: LC_X8_Y4_N6
\krypton_det_instance|y_present.s1\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|y_present.s1~regout\ = DFFEAS((\krypton_det_instance|y_present~23_combout\) # ((!\rst~combout\ & (!\krypton_det_instance|Equal1~1_combout\ & \krypton_det_instance|y_present.s1~regout\))), GLOBAL(\clk_slow~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff10",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_slow~combout\,
	dataa => \rst~combout\,
	datab => \krypton_det_instance|Equal1~1_combout\,
	datac => \krypton_det_instance|y_present.s1~regout\,
	datad => \krypton_det_instance|y_present~23_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \krypton_det_instance|y_present.s1~regout\);

-- Location: LC_X8_Y4_N2
\krypton_det_instance|y_present~20\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|y_present~20_combout\ = (!\rst~combout\ & (((\krypton_det_instance|y_present.s1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datac => \krypton_det_instance|y_present.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \krypton_det_instance|y_present~20_combout\);

-- Location: LC_X8_Y4_N9
\krypton_det_instance|y_present.s2\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|y_present.s2~regout\ = DFFEAS((\krypton_det_instance|Equal2~1_combout\ & (\krypton_det_instance|Equal1~1_combout\ & ((\krypton_det_instance|y_present~20_combout\)))) # (!\krypton_det_instance|Equal2~1_combout\ & 
-- ((\krypton_det_instance|y_present~18_combout\) # ((\krypton_det_instance|Equal1~1_combout\ & \krypton_det_instance|y_present~20_combout\)))), GLOBAL(\clk_slow~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc50",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_slow~combout\,
	dataa => \krypton_det_instance|Equal2~1_combout\,
	datab => \krypton_det_instance|Equal1~1_combout\,
	datac => \krypton_det_instance|y_present~18_combout\,
	datad => \krypton_det_instance|y_present~20_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \krypton_det_instance|y_present.s2~regout\);

-- Location: LC_X8_Y4_N7
\krypton_det_instance|y_present~18\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|y_present~18_combout\ = (((!\rst~combout\ & \krypton_det_instance|y_present.s2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \rst~combout\,
	datad => \krypton_det_instance|y_present.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \krypton_det_instance|y_present~18_combout\);

-- Location: LC_X8_Y4_N8
\krypton_det_instance|y_present.s3\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|y_present.s3~regout\ = DFFEAS((\krypton_det_instance|Equal2~1_combout\ & ((\krypton_det_instance|y_present~18_combout\) # ((!\krypton_det_instance|Equal3~4_combout\ & \krypton_det_instance|y_present~16_combout\)))) # 
-- (!\krypton_det_instance|Equal2~1_combout\ & (!\krypton_det_instance|Equal3~4_combout\ & (\krypton_det_instance|y_present~16_combout\))), GLOBAL(\clk_slow~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_slow~combout\,
	dataa => \krypton_det_instance|Equal2~1_combout\,
	datab => \krypton_det_instance|Equal3~4_combout\,
	datac => \krypton_det_instance|y_present~16_combout\,
	datad => \krypton_det_instance|y_present~18_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \krypton_det_instance|y_present.s3~regout\);

-- Location: LC_X8_Y4_N4
\krypton_det_instance|y_present~16\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|y_present~16_combout\ = (((!\rst~combout\ & \krypton_det_instance|y_present.s3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \rst~combout\,
	datad => \krypton_det_instance|y_present.s3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \krypton_det_instance|y_present~16_combout\);

-- Location: LC_X9_Y4_N2
\krypton_det_instance|y_present.s4\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|y_present.s4~regout\ = DFFEAS((\krypton_det_instance|Equal4~0_combout\ & (\krypton_det_instance|Equal3~4_combout\ & ((\krypton_det_instance|y_present~16_combout\)))) # (!\krypton_det_instance|Equal4~0_combout\ & 
-- ((\krypton_det_instance|y_present~14_combout\) # ((\krypton_det_instance|Equal3~4_combout\ & \krypton_det_instance|y_present~16_combout\)))), GLOBAL(\clk_slow~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc50",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_slow~combout\,
	dataa => \krypton_det_instance|Equal4~0_combout\,
	datab => \krypton_det_instance|Equal3~4_combout\,
	datac => \krypton_det_instance|y_present~14_combout\,
	datad => \krypton_det_instance|y_present~16_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \krypton_det_instance|y_present.s4~regout\);

-- Location: LC_X9_Y4_N7
\krypton_det_instance|y_present~14\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|y_present~14_combout\ = ((!\rst~combout\ & ((\krypton_det_instance|y_present.s4~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datad => \krypton_det_instance|y_present.s4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \krypton_det_instance|y_present~14_combout\);

-- Location: LC_X9_Y4_N8
\krypton_det_instance|y_present.s5\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|y_present.s5~regout\ = DFFEAS((\krypton_det_instance|Equal5~1_combout\ & (\krypton_det_instance|Equal4~0_combout\ & ((\krypton_det_instance|y_present~14_combout\)))) # (!\krypton_det_instance|Equal5~1_combout\ & 
-- ((\krypton_det_instance|y_present~11_combout\) # ((\krypton_det_instance|Equal4~0_combout\ & \krypton_det_instance|y_present~14_combout\)))), GLOBAL(\clk_slow~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc50",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_slow~combout\,
	dataa => \krypton_det_instance|Equal5~1_combout\,
	datab => \krypton_det_instance|Equal4~0_combout\,
	datac => \krypton_det_instance|y_present~11_combout\,
	datad => \krypton_det_instance|y_present~14_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \krypton_det_instance|y_present.s5~regout\);

-- Location: LC_X9_Y4_N0
\krypton_det_instance|y_present~11\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|y_present~11_combout\ = ((!\rst~combout\ & ((\krypton_det_instance|y_present.s5~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datad => \krypton_det_instance|y_present.s5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \krypton_det_instance|y_present~11_combout\);

-- Location: LC_X9_Y4_N1
\krypton_det_instance|y_present.s6\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|y_present.s6~regout\ = DFFEAS((\krypton_det_instance|Equal5~1_combout\ & ((\krypton_det_instance|y_present~11_combout\) # ((!\krypton_det_instance|Equal6~1_combout\ & \krypton_det_instance|y_present~12_combout\)))) # 
-- (!\krypton_det_instance|Equal5~1_combout\ & (!\krypton_det_instance|Equal6~1_combout\ & (\krypton_det_instance|y_present~12_combout\))), GLOBAL(\clk_slow~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_slow~combout\,
	dataa => \krypton_det_instance|Equal5~1_combout\,
	datab => \krypton_det_instance|Equal6~1_combout\,
	datac => \krypton_det_instance|y_present~12_combout\,
	datad => \krypton_det_instance|y_present~11_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \krypton_det_instance|y_present.s6~regout\);

-- Location: LC_X7_Y4_N6
\krypton_det_instance|outp[0]~0\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|outp[0]~0_combout\ = (!\inp~combout\(0) & (\krypton_det_instance|Equal6~0_combout\ & (\inp~combout\(2) & \krypton_det_instance|y_present.s6~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp~combout\(0),
	datab => \krypton_det_instance|Equal6~0_combout\,
	datac => \inp~combout\(2),
	datad => \krypton_det_instance|y_present.s6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \krypton_det_instance|outp[0]~0_combout\);

-- Location: LC_X7_Y4_N5
\krypton_det_instance|Selector11~0\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|Selector11~0_combout\ = (\krypton_det_instance|y_present.s6~regout\) # ((\krypton_det_instance|Equal5~0_combout\ & (\inp~combout\(2) & \krypton_det_instance|y_present.s5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \krypton_det_instance|Equal5~0_combout\,
	datab => \inp~combout\(2),
	datac => \krypton_det_instance|y_present.s5~regout\,
	datad => \krypton_det_instance|y_present.s6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \krypton_det_instance|Selector11~0_combout\);

-- Location: LC_X9_Y4_N5
\krypton_det_instance|Selector10~2\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|Selector10~2_combout\ = (\krypton_det_instance|y_present.s5~regout\) # ((\krypton_det_instance|y_present.s6~regout\) # ((\krypton_det_instance|y_present.s4~regout\ & \krypton_det_instance|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \krypton_det_instance|y_present.s5~regout\,
	datab => \krypton_det_instance|y_present.s4~regout\,
	datac => \krypton_det_instance|Equal4~0_combout\,
	datad => \krypton_det_instance|y_present.s6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \krypton_det_instance|Selector10~2_combout\);

-- Location: LC_X9_Y4_N4
\krypton_det_instance|Selector9~0\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|Selector9~0_combout\ = (!\krypton_det_instance|y_present.s5~regout\ & (((!\krypton_det_instance|y_present.s6~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0055",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \krypton_det_instance|y_present.s5~regout\,
	datad => \krypton_det_instance|y_present.s6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \krypton_det_instance|Selector9~0_combout\);

-- Location: LC_X9_Y4_N3
\krypton_det_instance|Selector9~1\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|Selector9~1_combout\ = ((\krypton_det_instance|y_present.s4~regout\) # ((\krypton_det_instance|y_present.s3~regout\ & \krypton_det_instance|Equal3~4_combout\))) # (!\krypton_det_instance|Selector9~0_combout\)

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
	dataa => \krypton_det_instance|y_present.s3~regout\,
	datab => \krypton_det_instance|Equal3~4_combout\,
	datac => \krypton_det_instance|Selector9~0_combout\,
	datad => \krypton_det_instance|y_present.s4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \krypton_det_instance|Selector9~1_combout\);

-- Location: LC_X8_Y4_N5
\krypton_det_instance|Selector8~0\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|Selector8~0_combout\ = (\krypton_det_instance|y_present.s2~regout\ & (\krypton_det_instance|Equal2~1_combout\)) # (!\krypton_det_instance|y_present.s2~regout\ & (((\krypton_det_instance|y_present.rst~regout\ & 
-- !\krypton_det_instance|y_present.s1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \krypton_det_instance|Equal2~1_combout\,
	datab => \krypton_det_instance|y_present.rst~regout\,
	datac => \krypton_det_instance|y_present.s1~regout\,
	datad => \krypton_det_instance|y_present.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \krypton_det_instance|Selector8~0_combout\);

-- Location: LC_X7_Y4_N8
\krypton_det_instance|Selector7~0\ : maxv_lcell
-- Equation(s):
-- \krypton_det_instance|Selector7~0_combout\ = (\krypton_det_instance|y_present.s1~regout\ & (((\krypton_det_instance|Equal1~1_combout\)))) # (!\krypton_det_instance|y_present.s1~regout\ & (((\krypton_det_instance|y_present.rst~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \krypton_det_instance|y_present.s1~regout\,
	datac => \krypton_det_instance|Equal1~1_combout\,
	datad => \krypton_det_instance|y_present.rst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \krypton_det_instance|Selector7~0_combout\);

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\detect[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \krypton_det_instance|outp[0]~0_combout\,
	oe => VCC,
	padio => ww_detect(0));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\detect[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \krypton_det_instance|Selector11~0_combout\,
	oe => VCC,
	padio => ww_detect(1));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\detect[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \krypton_det_instance|Selector10~2_combout\,
	oe => VCC,
	padio => ww_detect(2));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\detect[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \krypton_det_instance|Selector9~1_combout\,
	oe => VCC,
	padio => ww_detect(3));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\detect[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \krypton_det_instance|Selector8~0_combout\,
	oe => VCC,
	padio => ww_detect(4));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\detect[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \krypton_det_instance|Selector7~0_combout\,
	oe => VCC,
	padio => ww_detect(5));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\detect[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \krypton_det_instance|outp[6]~1_combout\,
	oe => VCC,
	padio => ww_detect(6));
END structure;


