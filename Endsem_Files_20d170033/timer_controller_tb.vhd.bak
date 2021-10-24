LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity timer_controller_tb is
end entity timer_controller_tb;

architecture tb of timer_controller_tb is
component timer_controller port(inp:in std_logic_vector(2 downto 0);
		reset,clock_50, clock_1:in std_logic;
		out_LED: out std_logic_vector(3 downto 0));
end component timer_controller;

signal reset : std_logic := '0';
signal sw_inp : std_logic_vector(2 downto 0) := "000";
signal clk_50, clk_1 : std_logic := '1';
signal LED_out : std_logic_vector(3 downto 0) := "0000";
constant clk_50_period : time := 20 ns;
constant clk_1_period : time := 1 us;
begin
	
	dut_instance: timer_controller port map(sw_inp, reset, clk_50, clk_1, LED_out);
	clk_50 <= not clk_50 after clk_50_period/2 ;
	clk_1 <= not clk_1 after clk_1_period/2 ;
	reset <= '1', '0' after 50 ns;
	process
	begin
		sw_inp <= "000";
		wait for 20 us;
		
		sw_inp <= "001";
		wait for 20 us;
		
		sw_inp <= "010";
		wait for 20 us;
		
		sw_inp <= "100";
		wait for 20 us;
		
	end process;
end tb;
	

