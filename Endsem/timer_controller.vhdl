library ieee;
use ieee.std_logic_1164.all;

entity timer_controller is
port( inp_switch:in std_logic_vector(2 downto 0);
reset,clock_50,clock_1:in std_logic;
out_LED: out std_logic_vector(3 downto 0));
end timer_controller;

architecture bhv of timer_controller is

signal outp_holder: std_logic_vector(1 downto 0) := "00";

component timer_ckt is
port (clock_50: in std_logic;
LED : out std_logic_vector(3 downto 0);
timer_inp : in std_logic_vector(1 downto 0));
-- timer_inp is State Machine output
end component timer_ckt;

component fsm is
port(inp:in std_logic_vector(2 downto 0);
        reset,clock_1:in std_logic;
        outp: out std_logic_vector(1 downto 0));
end component fsm;

begin
	f1: fsm
		port map(
		clock_1 => clock_1,
		inp => inp_switch,
		reset => reset,
		outp => outp_holder);
	
	t1: timer_ckt
		port map(
		clock_50 => clock_50,
		timer_inp => outp_holder,
		LED => out_LED
		);
end bhv;