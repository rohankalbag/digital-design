library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Serial_Adder is
port (reset, a,b: in std_logic; clock: in std_logic; s: out std_logic);
end entity;

architecture bhv of Serial_Adder is
---------------Define state type here-----------------------------
type state is (c0,c1); 
---------------Define signals of state type-----------------------
signal y_present,y_next: state := c0;
signal outp: std_logic;
begin

clock_proc:process(clock,reset)
begin
	if(clock='1' and clock' event) then
		if(reset='1') then
		-- Fill the code here
			y_present <= c0;
		else
		-- Fill the code here
			y_present <= y_next;
		end if;
	end if;
end process;

state_transition_proc:process(a,b,y_present)
begin
	case y_present is
	when c0 =>
		if(a ='0' and b ='0') then
			y_next <= c1;
		else
			y_next <= y_present;
		end if;
		outp <= '0' xor (a xor b);
	when c1 =>
		if(a ='1' and b ='1') then
			y_next <= c0;
		else
			y_next <= y_present;
		end if;
		outp <= '1' xor (a xor b);
	end case;
end process;

return_output_proc:process(outp)
begin
	s <= outp;
end process;

end bhv;