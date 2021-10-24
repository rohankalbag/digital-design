library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity timer_ckt is
port (clock_50: in std_logic;
LED : out std_logic_vector(3 downto 0);
timer_inp : in std_logic_vector(1 downto 0));
-- timer_inp is State Machine output
end entity timer_ckt;

architecture arch of timer_ckt is
begin
-- Define architecture body
process(clock_50,timer_inp)
variable timer1 : integer range 0 to 500E6 := 1;
variable timer2 : integer range 0 to 500E6 := 1;
variable timer3 : integer range 0 to 500E6 := 1;
-- 500E6 means 500 x 10 ^ 6
-- the above variable will count the number
-- of clock pulses till it reaches required
-- number of seconds
-- Use similar 2 other variables for timer2, timer3
begin
if(clock_50 = '1' and clock_50'event) then
	if(timer_inp="00") then
		timer1 := 1;
		timer2 := 1;
		timer3 := 1;
		LED(3) <= '1';
		LED(2) <= '0';
		LED(1) <= '0'; 
		LED(0) <= '0'; 
	elsif(timer_inp="01") then
		if(timer1 <= 2500E6) then
			LED(3) <= '0';
			LED(2) <= '0'; 
			LED(1) <= '0';  
			LED(0) <= '1';
			timer1 := timer1 + 1;
		else 
			LED(3) <= '0';
			LED(2) <= '0'; 
			LED(1) <= '0';  
			LED(0) <= '0';
		end if;
	elsif(timer_inp="10") then
		if(timer2 <= 5000E6) then
			LED(3) <= '0';
			LED(2) <= '0'; 
			LED(0) <= '0';  
			LED(1) <= '1';
			timer2 := timer2 + 1;
		else 
			LED(3) <= '0';
			LED(2) <= '0'; 
			LED(1) <= '0';  
			LED(0) <= '0';
		end if;
	elsif(timer_inp="11") then
		if(timer3 <= 7500E6) then
			LED(3) <= '0';
			LED(0) <= '0'; 
			LED(1) <= '0'; 
			LED(2) <= '1';
			timer3 := timer3 + 1;
		else 
			LED(3) <= '0';
			LED(2) <= '0'; 
			LED(1) <= '0';
			LED(0) <= '0';	
		end if;
	end if;
end if;
end process;
end arch;