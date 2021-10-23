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

-- DATE "10/23/2021 22:46:31"

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

ENTITY 	TopLevel IS
    PORT (
	altera_reserved_tdo : OUT std_logic;
	altera_reserved_tms : IN std_logic := '0';
	altera_reserved_tck : IN std_logic := '0';
	altera_reserved_tdi : IN std_logic := '0';
	state_out : OUT std_logic_vector(4 DOWNTO 0)
	);
END TopLevel;

-- Design Ports Information


ARCHITECTURE structure OF TopLevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_altera_reserved_tdo : std_logic;
SIGNAL ww_altera_reserved_tms : std_logic;
SIGNAL ww_altera_reserved_tck : std_logic;
SIGNAL ww_altera_reserved_tdi : std_logic;
SIGNAL ww_state_out : std_logic_vector(4 DOWNTO 0);
SIGNAL \altera_reserved_tms~combout\ : std_logic;
SIGNAL \altera_reserved_tck~combout\ : std_logic;
SIGNAL \altera_reserved_tdi~combout\ : std_logic;
SIGNAL \altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~regout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[4]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~regout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal3~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~regout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~regout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\ : std_logic;
SIGNAL \io~regout\ : std_logic;
SIGNAL \shift_reg~1_combout\ : std_logic;
SIGNAL \shift_reg~2_combout\ : std_logic;
SIGNAL \u0|virtual_jtag_0|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\ : std_logic;
SIGNAL \u0|virtual_jtag_0|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\ : std_logic;
SIGNAL \shift_reg~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|Equal2~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|Equal1~0\ : std_logic;
SIGNAL \dut_instance|add_instance|Equal4~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|y_present~15_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|Equal2~1\ : std_logic;
SIGNAL \dut_instance|add_instance|y_present~21_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|Equal0~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|y_present.rst~regout\ : std_logic;
SIGNAL \dut_instance|add_instance|y_present.s1~regout\ : std_logic;
SIGNAL \dut_instance|add_instance|y_present~19_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|y_present.s2~regout\ : std_logic;
SIGNAL \dut_instance|add_instance|y_present~25_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|y_present.s3~regout\ : std_logic;
SIGNAL \dut_instance|add_instance|y_present~24_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|y_present.s4~regout\ : std_logic;
SIGNAL \dut_instance|add_instance|y_present.s5~regout\ : std_logic;
SIGNAL \dut_instance|add_instance|Equal6~0\ : std_logic;
SIGNAL \dut_instance|add_instance|Equal6~1_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|y_present~13\ : std_logic;
SIGNAL \dut_instance|add_instance|y_present.s6~regout\ : std_logic;
SIGNAL \u0|virtual_jtag_0|sld_virtual_jtag_basic_inst|virtual_state_cdr~0_combout\ : std_logic;
SIGNAL \shift_reg~3_combout\ : std_logic;
SIGNAL \datau[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9COUT1_16\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~3\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~3COUT1_17\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~5\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~5COUT1_18\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~7\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~7COUT1_19\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~regout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~regout\ : std_logic;
SIGNAL \dut_instance|add_instance|outp~0\ : std_logic;
SIGNAL \altera_internal_jtag~TDO\ : std_logic;
SIGNAL dut_input : std_logic_vector(6 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\ : std_logic_vector(23 DOWNTO 0);
SIGNAL data : std_logic_vector(6 DOWNTO 0);
SIGNAL datau : std_logic_vector(0 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|ALT_INV_splitter_nodes_receive_0\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~regout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\ : std_logic_vector(0 DOWNTO 0);

BEGIN

altera_reserved_tdo <= ww_altera_reserved_tdo;
ww_altera_reserved_tms <= altera_reserved_tms;
ww_altera_reserved_tck <= altera_reserved_tck;
ww_altera_reserved_tdi <= altera_reserved_tdi;
state_out <= ww_state_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|ALT_INV_splitter_nodes_receive_0\(0) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0);
\ALT_INV_altera_internal_jtag~TMSUTAP\ <= NOT \altera_internal_jtag~TMSUTAP\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~regout\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~regout\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(0) <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0);

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\altera_reserved_tms~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_altera_reserved_tms,
	combout => \altera_reserved_tms~combout\);

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\altera_reserved_tck~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_altera_reserved_tck,
	combout => \altera_reserved_tck~combout\);

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\altera_reserved_tdi~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_altera_reserved_tdi,
	combout => \altera_reserved_tdi~combout\);

-- Location: JTAG_X11_Y2_N5
altera_internal_jtag : maxv_jtag
PORT MAP (
	tms => \altera_reserved_tms~combout\,
	tck => \altera_reserved_tck~combout\,
	tdi => \altera_reserved_tdi~combout\,
	tdouser => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~regout\,
	tdo => \altera_internal_jtag~TDO\,
	tmsutap => \altera_internal_jtag~TMSUTAP\,
	tckutap => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	tdiutap => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(2));

-- Location: LC_X5_Y4_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[6]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	aclr => GND,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6));

-- Location: LC_X5_Y4_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[7]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	dataa => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7));

-- Location: LC_X7_Y5_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[9]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	datad => \altera_internal_jtag~TMSUTAP\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1\,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9));

-- Location: LC_X7_Y5_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[0]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	datad => \altera_internal_jtag~TMSUTAP\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0));

-- Location: LC_X7_Y5_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[1]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1),
	aclr => GND,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1));

-- Location: LC_X7_Y5_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[2]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "3cf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1),
	aclr => GND,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2));

-- Location: LC_X7_Y5_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "10ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	datad => \altera_internal_jtag~TMSUTAP\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0));

-- Location: LC_X9_Y6_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[13]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13),
	aclr => GND,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13));

-- Location: LC_X9_Y6_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[14]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	dataa => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14));

-- Location: LC_X7_Y5_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[10]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9),
	datad => \altera_internal_jtag~TMSUTAP\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10));

-- Location: LC_X9_Y6_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[11]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffee",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10),
	aclr => GND,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11));

-- Location: LC_X8_Y6_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[12]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10),
	aclr => GND,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12));

-- Location: LC_X9_Y6_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa88",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0\,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15));

-- Location: LC_X9_Y6_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[1]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffd",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	aclr => GND,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1));

-- Location: LC_X7_Y5_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[2]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	aclr => GND,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2));

-- Location: LC_X8_Y9_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[3]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	datad => \altera_internal_jtag~TMSUTAP\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3));

-- Location: LC_X5_Y4_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[4]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	aclr => GND,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4));

-- Location: LC_X5_Y4_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[5]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5));

-- Location: LC_X5_Y4_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[8]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0e0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	datac => \altera_internal_jtag~TMSUTAP\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8));

-- Location: LC_X10_Y8_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7),
	aclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0\,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9));

-- Location: LC_X10_Y8_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[8]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9),
	aclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8));

-- Location: LC_X10_Y8_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8),
	aclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7));

-- Location: LC_X10_Y8_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7),
	aclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6));

-- Location: LC_X10_Y8_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[5]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6),
	aclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5));

-- Location: LC_X10_Y8_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5),
	aclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4));

-- Location: LC_X10_Y8_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5),
	aclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1\,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3));

-- Location: LC_X10_Y8_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]\ : maxv_lcell
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
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3),
	aclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2));

-- Location: LC_X10_Y8_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2),
	aclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1));

-- Location: LC_X10_Y8_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]\ : maxv_lcell
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
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	aclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0));

-- Location: LC_X9_Y6_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0\,
	aclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~regout\);

-- Location: LC_X5_Y4_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "e000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0\,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~regout\);

-- Location: LC_X8_Y9_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\);

-- Location: LC_X8_Y9_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[4]~0\ : maxv_lcell
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
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[4]~0_combout\);

-- Location: LC_X7_Y7_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~3\ : maxv_lcell
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
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~3_combout\);

-- Location: LC_X7_Y7_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~0\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~0_combout\);

-- Location: LC_X7_Y7_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal3~0\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "2200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal3~0_combout\);

-- Location: LC_X7_Y7_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "00fe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\);

-- Location: LC_X7_Y7_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal3~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\);

-- Location: LC_X7_Y7_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8b8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~3_combout\,
	aclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1));

-- Location: LC_X7_Y7_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\);

-- Location: LC_X5_Y4_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "ac0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~3_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~regout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\,
	aclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_virtual_ir_scan_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2));

-- Location: LC_X7_Y4_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg\ : maxv_lcell
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
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~regout\);

-- Location: LC_X8_Y9_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[4]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff4c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[4]~0_combout\,
	aclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4));

-- Location: LC_X7_Y9_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "2e22",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal3~0_combout\,
	aclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0));

-- Location: LC_X7_Y9_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "facc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\);

-- Location: LC_X7_Y9_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7\ : maxv_lcell
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
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\);

-- Location: LC_X7_Y9_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "f780",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	aclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3));

-- Location: LC_X7_Y9_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~3\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8d8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~3_combout\);

-- Location: LC_X7_Y9_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~4\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "e040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~4_combout\);

-- Location: LC_X7_Y9_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	aclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~regout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2));

-- Location: LC_X7_Y9_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[1]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	aclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~regout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1));

-- Location: LC_X7_Y9_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[0]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	aclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~regout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0));

-- Location: LC_X8_Y9_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	datad => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\);

-- Location: LC_X8_Y9_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0444",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	datad => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\);

-- Location: LC_X9_Y6_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0\,
	aclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|ALT_INV_state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~regout\);

-- Location: LC_X9_Y6_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\);

-- Location: LC_X9_Y6_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~regout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\);

-- Location: LC_X8_Y7_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0[3]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\,
	aclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3));

-- Location: LC_X8_Y7_N8
io : maxv_lcell
-- Equation(s):
-- \io~regout\ = DFFEAS(\io~regout\ $ (((\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8) & 
-- (!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~regout\ & 
-- \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3))))), 
-- GLOBAL(\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df20",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~regout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3),
	datad => \io~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \io~regout\);

-- Location: LC_X8_Y7_N3
\shift_reg~1\ : maxv_lcell
-- Equation(s):
-- \shift_reg~1_combout\ = (!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8) & 
-- (\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4) & 
-- (\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3) & 
-- !\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~regout\)))

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
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \shift_reg~1_combout\);

-- Location: LC_X8_Y8_N4
\shift_reg~2\ : maxv_lcell
-- Equation(s):
-- \shift_reg~2_combout\ = ((!\io~regout\ & ((\shift_reg~1_combout\))))

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
	datab => \io~regout\,
	datad => \shift_reg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \shift_reg~2_combout\);

-- Location: LC_X8_Y8_N2
\data[6]\ : maxv_lcell
-- Equation(s):
-- data(6) = DFFEAS((((\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(2)))), 
-- GLOBAL(\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0)), VCC, , \shift_reg~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(2),
	aclr => GND,
	ena => \shift_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(6));

-- Location: LC_X5_Y8_N6
\data[5]\ : maxv_lcell
-- Equation(s):
-- data(5) = DFFEAS(GND, GLOBAL(\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0)), VCC, , \shift_reg~2_combout\, data(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	datac => data(6),
	aclr => GND,
	sload => VCC,
	ena => \shift_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(5));

-- Location: LC_X5_Y8_N0
\data[4]\ : maxv_lcell
-- Equation(s):
-- data(4) = DFFEAS(GND, GLOBAL(\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0)), VCC, , \shift_reg~2_combout\, data(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	datac => data(5),
	aclr => GND,
	sload => VCC,
	ena => \shift_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(4));

-- Location: LC_X5_Y8_N2
\data[3]\ : maxv_lcell
-- Equation(s):
-- data(3) = DFFEAS(GND, GLOBAL(\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0)), VCC, , \shift_reg~2_combout\, data(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	datac => data(4),
	aclr => GND,
	sload => VCC,
	ena => \shift_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(3));

-- Location: LC_X5_Y8_N1
\data[2]\ : maxv_lcell
-- Equation(s):
-- data(2) = DFFEAS((((data(3)))), GLOBAL(\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0)), VCC, , \shift_reg~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	datad => data(3),
	aclr => GND,
	ena => \shift_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(2));

-- Location: LC_X5_Y8_N7
\data[1]\ : maxv_lcell
-- Equation(s):
-- data(1) = DFFEAS((((data(2)))), GLOBAL(\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0)), VCC, , \shift_reg~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	datad => data(2),
	aclr => GND,
	ena => \shift_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(1));

-- Location: LC_X5_Y8_N4
\data[0]\ : maxv_lcell
-- Equation(s):
-- data(0) = DFFEAS(GND, GLOBAL(\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0)), VCC, , \shift_reg~2_combout\, data(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	datac => data(1),
	aclr => GND,
	sload => VCC,
	ena => \shift_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(0));

-- Location: LC_X8_Y7_N2
\u0|virtual_jtag_0|sld_virtual_jtag_basic_inst|virtual_state_udr~0\ : maxv_lcell
-- Equation(s):
-- \u0|virtual_jtag_0|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\ = ((\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3) & 
-- (\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8) & 
-- !\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~regout\)))

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
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u0|virtual_jtag_0|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\);

-- Location: LC_X8_Y7_N4
\u0|virtual_jtag_0|sld_virtual_jtag_basic_inst|virtual_state_sdr~0\ : maxv_lcell
-- Equation(s):
-- \u0|virtual_jtag_0|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\ = ((
-- \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4) & 
-- (\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3) & 
-- !\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~regout\)))

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
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u0|virtual_jtag_0|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\);

-- Location: LC_X8_Y7_N1
\shift_reg~0\ : maxv_lcell
-- Equation(s):
-- \shift_reg~0_combout\ = (!\io~regout\ & (\u0|virtual_jtag_0|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\ & (!\u0|virtual_jtag_0|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \io~regout\,
	datab => \u0|virtual_jtag_0|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	datac => \u0|virtual_jtag_0|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \shift_reg~0_combout\);

-- Location: LC_X5_Y8_N5
\dut_input[0]\ : maxv_lcell
-- Equation(s):
-- dut_input(0) = DFFEAS(GND, GLOBAL(\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0)), VCC, , \shift_reg~0_combout\, data(0), , , 
-- VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	datac => data(0),
	aclr => GND,
	sload => VCC,
	ena => \shift_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dut_input(0));

-- Location: LC_X6_Y7_N6
\dut_input[3]\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|Equal6~0\ = ((dut_input(5) & (dut_input[3] & !dut_input(6))))
-- dut_input(3) = DFFEAS(\dut_instance|add_instance|Equal6~0\, GLOBAL(\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0)), VCC, , 
-- \shift_reg~0_combout\, data(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	datab => dut_input(5),
	datac => data(3),
	datad => dut_input(6),
	aclr => GND,
	sload => VCC,
	ena => \shift_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|Equal6~0\,
	regout => dut_input(3));

-- Location: LC_X10_Y7_N2
\dut_instance|add_instance|Equal2~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|Equal2~0_combout\ = ((!dut_input(4) & ((!dut_input(3)))))

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
	datab => dut_input(4),
	datad => dut_input(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|Equal2~0_combout\);

-- Location: LC_X6_Y7_N1
\dut_input[5]\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|Equal1~0\ = ((dut_input(6) & (!dut_input[5] & !dut_input(2))))
-- dut_input(5) = DFFEAS(\dut_instance|add_instance|Equal1~0\, GLOBAL(\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0)), VCC, , 
-- \shift_reg~0_combout\, data(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	datab => dut_input(6),
	datac => data(5),
	datad => dut_input(2),
	aclr => GND,
	sload => VCC,
	ena => \shift_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|Equal1~0\,
	regout => dut_input(5));

-- Location: LC_X12_Y6_N7
\dut_instance|add_instance|Equal4~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|Equal4~0_combout\ = (!dut_input(3) & (dut_input(4) & (\dut_instance|add_instance|Equal1~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => dut_input(3),
	datab => dut_input(4),
	datac => \dut_instance|add_instance|Equal1~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|Equal4~0_combout\);

-- Location: LC_X5_Y8_N3
\dut_input[1]\ : maxv_lcell
-- Equation(s):
-- dut_input(1) = DFFEAS(GND, GLOBAL(\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0)), VCC, , \shift_reg~0_combout\, data(1), , , 
-- VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	datac => data(1),
	aclr => GND,
	sload => VCC,
	ena => \shift_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dut_input(1));

-- Location: LC_X6_Y7_N7
\dut_instance|add_instance|y_present~15\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|y_present~15_combout\ = (\dut_instance|add_instance|y_present.s5~regout\ & (((!dut_input(2)) # (!\dut_instance|add_instance|Equal6~0\)) # (!dut_input(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => dut_input(4),
	datab => \dut_instance|add_instance|y_present.s5~regout\,
	datac => \dut_instance|add_instance|Equal6~0\,
	datad => dut_input(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|y_present~15_combout\);

-- Location: LC_X6_Y7_N9
\dut_input[6]\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|Equal2~1\ = (\dut_instance|add_instance|Equal2~0_combout\ & (dut_input(5) & (dut_input[6] & dut_input(2))))
-- dut_input(6) = DFFEAS(\dut_instance|add_instance|Equal2~1\, GLOBAL(\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0)), VCC, , 
-- \shift_reg~0_combout\, data(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	dataa => \dut_instance|add_instance|Equal2~0_combout\,
	datab => dut_input(5),
	datac => data(6),
	datad => dut_input(2),
	aclr => GND,
	sload => VCC,
	ena => \shift_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|Equal2~1\,
	regout => dut_input(6));

-- Location: LC_X12_Y6_N6
\dut_instance|add_instance|y_present~21\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|y_present~21_combout\ = (\dut_instance|add_instance|y_present.s1~regout\ & (((dut_input(4)) # (!\dut_instance|add_instance|Equal1~0\)) # (!dut_input(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => dut_input(3),
	datab => dut_input(4),
	datac => \dut_instance|add_instance|Equal1~0\,
	datad => \dut_instance|add_instance|y_present.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|y_present~21_combout\);

-- Location: LC_X6_Y7_N5
\dut_instance|add_instance|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|Equal0~0_combout\ = (!dut_input(4) & (((\dut_instance|add_instance|Equal6~0\ & dut_input(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => dut_input(4),
	datac => \dut_instance|add_instance|Equal6~0\,
	datad => dut_input(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|Equal0~0_combout\);

-- Location: LC_X12_Y6_N8
\dut_instance|add_instance|y_present.rst\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|y_present.rst~regout\ = DFFEAS((!\dut_instance|add_instance|outp~0\ & (!dut_input(1) & ((\dut_instance|add_instance|Equal0~0_combout\) # (\dut_instance|add_instance|y_present.rst~regout\)))), GLOBAL(dut_input(0)), VCC, , , , , , 
-- )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => dut_input(0),
	dataa => \dut_instance|add_instance|outp~0\,
	datab => dut_input(1),
	datac => \dut_instance|add_instance|Equal0~0_combout\,
	datad => \dut_instance|add_instance|y_present.rst~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|add_instance|y_present.rst~regout\);

-- Location: LC_X12_Y6_N9
\dut_instance|add_instance|y_present.s1\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|y_present.s1~regout\ = DFFEAS((!dut_input(1) & ((\dut_instance|add_instance|y_present~21_combout\) # ((\dut_instance|add_instance|Equal0~0_combout\ & !\dut_instance|add_instance|y_present.rst~regout\)))), GLOBAL(dut_input(0)), 
-- VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2232",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => dut_input(0),
	dataa => \dut_instance|add_instance|y_present~21_combout\,
	datab => dut_input(1),
	datac => \dut_instance|add_instance|Equal0~0_combout\,
	datad => \dut_instance|add_instance|y_present.rst~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|add_instance|y_present.s1~regout\);

-- Location: LC_X12_Y6_N1
\dut_instance|add_instance|y_present~19\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|y_present~19_combout\ = (dut_input(3) & (!dut_input(4) & (\dut_instance|add_instance|Equal1~0\ & \dut_instance|add_instance|y_present.s1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => dut_input(3),
	datab => dut_input(4),
	datac => \dut_instance|add_instance|Equal1~0\,
	datad => \dut_instance|add_instance|y_present.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|y_present~19_combout\);

-- Location: LC_X12_Y6_N5
\dut_instance|add_instance|y_present.s2\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|y_present.s2~regout\ = DFFEAS((!dut_input(1) & ((\dut_instance|add_instance|y_present~19_combout\) # ((\dut_instance|add_instance|y_present.s2~regout\ & !\dut_instance|add_instance|Equal2~1\)))), GLOBAL(dut_input(0)), VCC, , , , 
-- , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3302",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => dut_input(0),
	dataa => \dut_instance|add_instance|y_present.s2~regout\,
	datab => dut_input(1),
	datac => \dut_instance|add_instance|Equal2~1\,
	datad => \dut_instance|add_instance|y_present~19_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|add_instance|y_present.s2~regout\);

-- Location: LC_X12_Y6_N2
\dut_instance|add_instance|y_present~25\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|y_present~25_combout\ = (\dut_instance|add_instance|y_present.s3~regout\ & ((dut_input(3)) # ((dut_input(4)) # (!\dut_instance|add_instance|Equal1~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => dut_input(3),
	datab => dut_input(4),
	datac => \dut_instance|add_instance|Equal1~0\,
	datad => \dut_instance|add_instance|y_present.s3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|y_present~25_combout\);

-- Location: LC_X12_Y6_N3
\dut_instance|add_instance|y_present.s3\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|y_present.s3~regout\ = DFFEAS((!dut_input(1) & ((\dut_instance|add_instance|y_present~25_combout\) # ((\dut_instance|add_instance|y_present.s2~regout\ & \dut_instance|add_instance|Equal2~1\)))), GLOBAL(dut_input(0)), VCC, , , , 
-- , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3320",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => dut_input(0),
	dataa => \dut_instance|add_instance|y_present.s2~regout\,
	datab => dut_input(1),
	datac => \dut_instance|add_instance|Equal2~1\,
	datad => \dut_instance|add_instance|y_present~25_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|add_instance|y_present.s3~regout\);

-- Location: LC_X12_Y6_N4
\dut_instance|add_instance|y_present~24\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|y_present~24_combout\ = (!dut_input(3) & (!dut_input(4) & (\dut_instance|add_instance|Equal1~0\ & \dut_instance|add_instance|y_present.s3~regout\)))

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
	dataa => dut_input(3),
	datab => dut_input(4),
	datac => \dut_instance|add_instance|Equal1~0\,
	datad => \dut_instance|add_instance|y_present.s3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|y_present~24_combout\);

-- Location: LC_X12_Y6_N0
\dut_instance|add_instance|y_present.s4\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|y_present.s4~regout\ = DFFEAS((!dut_input(1) & ((\dut_instance|add_instance|y_present~24_combout\) # ((\dut_instance|add_instance|y_present.s4~regout\ & !\dut_instance|add_instance|Equal4~0_combout\)))), GLOBAL(dut_input(0)), 
-- VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ae",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => dut_input(0),
	dataa => \dut_instance|add_instance|y_present~24_combout\,
	datab => \dut_instance|add_instance|y_present.s4~regout\,
	datac => \dut_instance|add_instance|Equal4~0_combout\,
	datad => dut_input(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|add_instance|y_present.s4~regout\);

-- Location: LC_X6_Y7_N0
\dut_instance|add_instance|y_present.s5\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|y_present.s5~regout\ = DFFEAS((!dut_input(1) & ((\dut_instance|add_instance|y_present~15_combout\) # ((\dut_instance|add_instance|Equal4~0_combout\ & \dut_instance|add_instance|y_present.s4~regout\)))), GLOBAL(dut_input(0)), 
-- VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3230",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => dut_input(0),
	dataa => \dut_instance|add_instance|Equal4~0_combout\,
	datab => dut_input(1),
	datac => \dut_instance|add_instance|y_present~15_combout\,
	datad => \dut_instance|add_instance|y_present.s4~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|add_instance|y_present.s5~regout\);

-- Location: LC_X6_Y7_N2
\dut_input[2]\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|y_present~13\ = (\dut_instance|add_instance|Equal6~0\ & (\dut_instance|add_instance|y_present.s5~regout\ & (dut_input[2] & dut_input(4))))
-- dut_input(2) = DFFEAS(\dut_instance|add_instance|y_present~13\, GLOBAL(\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0)), VCC, , 
-- \shift_reg~0_combout\, data(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	dataa => \dut_instance|add_instance|Equal6~0\,
	datab => \dut_instance|add_instance|y_present.s5~regout\,
	datac => data(2),
	datad => dut_input(4),
	aclr => GND,
	sload => VCC,
	ena => \shift_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|y_present~13\,
	regout => dut_input(2));

-- Location: LC_X6_Y7_N8
\dut_input[4]\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|outp~0\ = (\dut_instance|add_instance|Equal6~0\ & (!dut_input(2) & (dut_input[4] & \dut_instance|add_instance|y_present.s6~regout\)))
-- dut_input(4) = DFFEAS(\dut_instance|add_instance|outp~0\, GLOBAL(\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0)), VCC, , 
-- \shift_reg~0_combout\, data(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	dataa => \dut_instance|add_instance|Equal6~0\,
	datab => dut_input(2),
	datac => data(4),
	datad => \dut_instance|add_instance|y_present.s6~regout\,
	aclr => GND,
	sload => VCC,
	ena => \shift_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|outp~0\,
	regout => dut_input(4));

-- Location: LC_X6_Y7_N3
\dut_instance|add_instance|Equal6~1\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|Equal6~1_combout\ = (dut_input(4) & (((\dut_instance|add_instance|Equal6~0\ & !dut_input(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => dut_input(4),
	datac => \dut_instance|add_instance|Equal6~0\,
	datad => dut_input(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|Equal6~1_combout\);

-- Location: LC_X6_Y7_N4
\dut_instance|add_instance|y_present.s6\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|y_present.s6~regout\ = DFFEAS((!dut_input(1) & ((\dut_instance|add_instance|y_present~13\) # ((!\dut_instance|add_instance|Equal6~1_combout\ & \dut_instance|add_instance|y_present.s6~regout\)))), GLOBAL(dut_input(0)), VCC, , , , 
-- , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3130",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => dut_input(0),
	dataa => \dut_instance|add_instance|Equal6~1_combout\,
	datab => dut_input(1),
	datac => \dut_instance|add_instance|y_present~13\,
	datad => \dut_instance|add_instance|y_present.s6~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|add_instance|y_present.s6~regout\);

-- Location: LC_X8_Y7_N0
\u0|virtual_jtag_0|sld_virtual_jtag_basic_inst|virtual_state_cdr~0\ : maxv_lcell
-- Equation(s):
-- \u0|virtual_jtag_0|sld_virtual_jtag_basic_inst|virtual_state_cdr~0_combout\ = ((
-- \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3) & 
-- (\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3) & 
-- !\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~regout\)))

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
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u0|virtual_jtag_0|sld_virtual_jtag_basic_inst|virtual_state_cdr~0_combout\);

-- Location: LC_X8_Y7_N6
\shift_reg~3\ : maxv_lcell
-- Equation(s):
-- \shift_reg~3_combout\ = (\io~regout\ & (\u0|virtual_jtag_0|sld_virtual_jtag_basic_inst|virtual_state_cdr~0_combout\ & (!\u0|virtual_jtag_0|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \io~regout\,
	datab => \u0|virtual_jtag_0|sld_virtual_jtag_basic_inst|virtual_state_cdr~0_combout\,
	datac => \u0|virtual_jtag_0|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \shift_reg~3_combout\);

-- Location: LC_X8_Y7_N5
\datau[0]~0\ : maxv_lcell
-- Equation(s):
-- \datau[0]~0_combout\ = (\shift_reg~3_combout\ & (((\dut_instance|add_instance|y_present.s6~regout\)))) # (!\shift_reg~3_combout\ & (((!\shift_reg~1_combout\)) # (!\io~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c5cf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \io~regout\,
	datab => \dut_instance|add_instance|y_present.s6~regout\,
	datac => \shift_reg~3_combout\,
	datad => \shift_reg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datau[0]~0_combout\);

-- Location: LC_X8_Y7_N9
\datau[0]\ : maxv_lcell
-- Equation(s):
-- datau(0) = DFFEAS((\datau[0]~0_combout\ & ((\shift_reg~3_combout\ & (\dut_instance|add_instance|Equal6~1_combout\)) # (!\shift_reg~3_combout\ & ((datau(0)))))), 
-- GLOBAL(\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	dataa => \datau[0]~0_combout\,
	datab => \dut_instance|add_instance|Equal6~1_combout\,
	datac => \shift_reg~3_combout\,
	datad => datau(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => datau(0));

-- Location: LC_X7_Y7_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "aca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datab => datau(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\);

-- Location: LC_X9_Y5_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~regout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\);

-- Location: LC_X9_Y5_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~13\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "dccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~regout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~13_combout\);

-- Location: LC_X8_Y5_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	aclr => GND,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~14_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	cout0 => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9\,
	cout1 => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9COUT1_16\);

-- Location: LC_X8_Y5_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	aclr => GND,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~14_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~13_combout\,
	cin0 => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9\,
	cin1 => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9COUT1_16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	cout0 => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~3\,
	cout1 => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~3COUT1_17\);

-- Location: LC_X8_Y5_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	aclr => GND,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~14_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~13_combout\,
	cin0 => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~3\,
	cin1 => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~3COUT1_17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	cout0 => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~5\,
	cout1 => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~5COUT1_18\);

-- Location: LC_X8_Y5_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~12\ : maxv_lcell
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
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~12_combout\);

-- Location: LC_X8_Y5_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	aclr => GND,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~14_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~13_combout\,
	cin0 => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~5\,
	cin1 => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~5COUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	cout0 => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~7\,
	cout1 => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~7COUT1_19\);

-- Location: LC_X8_Y5_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a5a5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	aclr => GND,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~14_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~13_combout\,
	cin0 => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~7\,
	cin1 => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~7COUT1_19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4));

-- Location: LC_X8_Y5_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~14\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~12_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~14_combout\);

-- Location: LC_X8_Y5_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\);

-- Location: LC_X8_Y5_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8\ : maxv_lcell
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
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\);

-- Location: LC_X9_Y5_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6\ : maxv_lcell
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
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\);

-- Location: LC_X8_Y5_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\);

-- Location: LC_X9_Y5_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1054",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\);

-- Location: LC_X9_Y5_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~14\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~regout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~14_combout\);

-- Location: LC_X9_Y5_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[3]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "3210",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(2),
	aclr => GND,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(3));

-- Location: LC_X9_Y5_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[2]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(3),
	aclr => GND,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(2));

-- Location: LC_X9_Y5_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\);

-- Location: LC_X9_Y5_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[1]\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "3222",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\,
	aclr => GND,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(1));

-- Location: LC_X9_Y5_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]\ : maxv_lcell
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
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	aclr => GND,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(0));

-- Location: LC_X7_Y7_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\);

-- Location: LC_X7_Y7_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "baaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\);

-- Location: LC_X8_Y9_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~regout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~regout\);

-- Location: LC_X8_Y9_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "40f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~regout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\);

-- Location: LC_X9_Y7_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo\ : maxv_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|ALT_INV_splitter_nodes_receive_0\(0),
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~regout\);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\state_out[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dut_instance|add_instance|outp~0\,
	oe => VCC,
	padio => ww_state_out(0));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\state_out[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u0|virtual_jtag_0|sld_virtual_jtag_basic_inst|virtual_state_udr~0_combout\,
	oe => VCC,
	padio => ww_state_out(1));

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\state_out[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u0|virtual_jtag_0|sld_virtual_jtag_basic_inst|virtual_state_sdr~0_combout\,
	oe => VCC,
	padio => ww_state_out(2));

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\state_out[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u0|virtual_jtag_0|sld_virtual_jtag_basic_inst|virtual_state_cdr~0_combout\,
	oe => VCC,
	padio => ww_state_out(3));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\state_out[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	oe => VCC,
	padio => ww_state_out(4));

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\altera_reserved_tdo~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \altera_internal_jtag~TDO\,
	oe => VCC,
	padio => ww_altera_reserved_tdo);
END structure;


