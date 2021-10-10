library ieee;
use ieee.std_logic_1164.all;

entity sequence_behavior is
port (reset,clock: in std_logic;
y:out std_logic_vector(3 downto 0));
end entity sequence_behavior;

architecture behav  of sequence_behavior is
--state binary encoding
signal state:std_logic_vector(3 downto 0);
constant s_0:std_logic_vector(3 downto 0):="0000";
constant s_2:std_logic_vector(3 downto 0):="0010";
constant s_4:std_logic_vector(3 downto 0):="0100";
constant s_6:std_logic_vector(3 downto 0):="0110";
constant s_8:std_logic_vector(3 downto 0):="1000";
constant s_10:std_logic_vector(3 downto 0):="1010";
constant s_12:std_logic_vector(3 downto 0):="1100";
constant s_14:std_logic_vector(3 downto 0):="1110";
--write the remaining constant declarations    
begin 
-- process for next state and output logic
reg_process: process(clock,reset)
begin
if(reset='1')then 
state <= s_0; -- write the reset state
elsif(clock'event and clock='1')then
case state is  
      --reset
     when s_0=>
     state<=s_2;
	  when s_2=>
     state<=s_4;
	  when s_4=>
     state<=s_6;
	  when s_6=>
     state<=s_8;
	  when s_8=>
     state<=s_10;
	  when s_10=>
     state<=s_12;
	  when s_12=>
     state<=s_14;
	  when s_14=>
     state<=s_0;
     -- write the remaining choices   
       --DEFAULT CASE
      when others=>
        state <= s_0;-- write the reset state
      end case; 
end if;
end process reg_process;
-- output logic concurrent statemet or one more process
y<=state;
end behav;