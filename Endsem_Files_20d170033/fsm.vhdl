library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fsm is
port(inp:in std_logic_vector(2 downto 0);
        reset,clock_1:in std_logic;
        outp: out std_logic_vector(1 downto 0));
end fsm;

architecture rch of fsm is

---------------Define state type here-----------------------------
type state is (rst,timer1,timer2,timer3);      -- Fill the code here
---------------Define signals of state type-----------------------
signal y_present,y_next: state := rst;
signal outp_sig : std_logic_vector(1 downto 0) := "00";

begin

clock_proc:process(clock_1,reset)
begin
    if(reset='1') then
        y_present<=rst;
    elsif(clock_1='1' and clock_1' event) then
        y_present<=y_next;
    end if;
end process;

state_transition_proc:process(inp,reset)
begin
    case y_present is
        when rst =>
				outp_sig <= "00";
            if(reset = '1') then   --k
                y_next <= rst; 
            else
					 if(inp = "001") then
						y_next <= timer1;
					 elsif(inp="010") then
					   y_next <= timer2;
					 elsif(inp="100") then
						y_next <= timer3;
					 else
						y_next <= rst;
					 end if;
				end if;
		  when timer1 =>
				outp_sig <= "01";
				if(reset = '1') then   --k
                y_next <= rst; 
            else
					 if(inp = "001") then
						y_next <= timer1;
					 elsif(inp="010") then
					   y_next <= timer2;
					 elsif(inp="100") then
						y_next <= timer3;
					 else
						y_next <= timer1;
					 end if;
				end if;
		  when timer2 =>
				outp_sig <= "10";
				if(reset = '1') then   --k
                y_next <= rst; 
            else
					 if(inp = "001") then
						y_next <= timer1;
					 elsif(inp="010") then
					   y_next <= timer2;
					 elsif(inp="100") then
						y_next <= timer3;
					 else
						y_next <= timer2;
					 end if;
				end if;
		  when timer3 =>
				outp_sig <= "11";
				if(reset = '1') then   --k
                y_next <= rst; 
            else
					 if(inp = "001") then
						y_next <= timer1;
					 elsif(inp="010") then
					   y_next <= timer2;
					 elsif(inp="100") then
						y_next <= timer3;
					 else
						y_next <= timer3;
					 end if;
				end if;
		end case;                      
end process;								
								
output_proc: process(outp_sig)
begin
	outp <= outp_sig;
end process;
end rch;
