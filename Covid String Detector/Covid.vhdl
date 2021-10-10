library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity covid is
port( inp:in std_logic_vector(4 downto 0);
		reset,clock:in std_logic;
		outp: out std_logic);
end covid;

architecture bhv of covid is
---------------Define state type here-----------------------------
type state is (rst,s1,s2,s3,s4); -- Fill other states here
---------------Define signals of state type-----------------------
signal y_present,y_next: state := rst;

begin
clock_proc:process(clock,reset)
begin
	if(clock='1' and clock' event) then
		if(reset='1') then
		-- Fill the code here
			y_present <= rst;
		else
		-- Fill the code here
			y_present <= y_next;
		end if;
	end if;
end process;

state_transition_proc:process(inp,y_present)
begin
	case y_present is
	when rst =>
		if(unsigned(inp)=3) then --c has been detected
			y_next <= s1;-- Fill the code here
		else
			y_next <= y_present;
		end if;
		outp <= '0';
	when s1 =>
		if(unsigned(inp)= 15) then --o has been detected
			y_next <= s2;-- Fill the code here
		else
			y_next <= y_present;
		end if;
		outp <= '0';
	when s2 =>
		if(unsigned(inp)= 22) then --v has been detected
			y_next <= s3;-- Fill the code here
		else
			y_next <= y_present;
		end if;
		outp <= '0';
	when s3 =>
		if(unsigned(inp)= 9) then --i has been detected
			y_next <= s4;-- Fill the code here
		else
			y_next <= y_present;
		end if;
		outp <= '0';
	when s4 =>
		if(unsigned(inp)= 4) then --d has been detected
			y_next <= rst;-- Fill the code here
			outp <= '1';
		else
			y_next <= y_present;
			outp <= '0';
		end if;
	when others=>
        y_next <= rst;-- write the reset state
		  outp <= '0';
	end case;
end process;
end bhv;