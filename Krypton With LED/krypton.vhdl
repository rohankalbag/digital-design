library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity krypton is
port(inp:in std_logic_vector(4 downto 0);
        reset,clock:in std_logic;
        outp: out std_logic_vector(6 downto 0));
end krypton;

architecture rch of krypton is

---------------Define state type here-----------------------------
type state is (rst,s1,s2,s3,s4,s5,s6);      -- Fill the code here
---------------Define signals of state type-----------------------
signal y_present,y_next: state := rst;
signal outp_sig : std_logic_vector(6 downto 0) := "0000000";

begin
clock_proc:process(clock,reset)
begin
    if(clock='1' and clock' event) then
        if(reset='1') then
            y_present <= rst;    -- Fill the code here
        else
            y_present <= y_next;                -- Fill the code here
        end if;
    end if;
    
end process;

state_transition_proc:process(inp,y_present)
begin
    case y_present is
        when rst=>
            if(unsigned(inp)=11) then   --k
                y_next <= s1;
					 outp_sig <= "1000000"; 
            else
					 y_next <= rst;
					 outp_sig <= "0000000";
				end if;
		  when s1=>
				if(unsigned(inp)=18) then --r
					 y_next <= s2;
					 outp_sig <= "1100000";
				else
					 y_next <= s1;
					 outp_sig <= "1000000";
				end if;
		  when s2=>
				if(unsigned(inp)=25) then --y
					 y_next <= s3;
					 outp_sig <= "1110000";
				else
					 y_next <= s2;
					 outp_sig <= "1100000";
				end if;
		  when s3=>
				if(unsigned(inp)=16) then --p
					 y_next <= s4;
					 outp_sig <= "1111000";
				else
					 y_next <= s3;
					 outp_sig <= "1110000";
				end if;
		  when s4=>
				if(unsigned(inp)=20) then --t
					 y_next <= s5;
					 outp_sig <= "1111100";
				else
					 y_next <= s4;
					 outp_sig <= "1111000";
				end if;
		 when s5=>
				if(unsigned(inp)=15) then --o
					 y_next <= s6;
					 outp_sig <= "1111110";
				else
					 y_next <= s5;
					 outp_sig <= "1111100";
				end if;
		when s6=>
				if(unsigned(inp)=14) then --n
					 y_next <= rst;
					 outp_sig <= "1111111";
				else
					 y_next <= s6;
					 outp_sig <= "1111110";
				end if;
		end case;                      
end process;								
								
output_proc: process(outp_sig)
begin
	outp <= outp_sig;
end process;
end rch;
