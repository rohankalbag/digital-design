library ieee;
use ieee.std_logic_1164.all;

entity sequence_behavior is
port (reset,clock: in std_logic;
y:out std_logic_vector(2 downto 0));
end entity sequence_behavior;

architecture behav  of sequence_behavior is
--state binary encoding
signal state:std_logic_vector(2 downto 0);
constant s_0:std_logic_vector(2 downto 0):="000";
constant s_1:std_logic_vector(2 downto 0):="001";
constant s_2:std_logic_vector(2 downto 0):="010";
constant s_3:std_logic_vector(2 downto 0):="011";
constant s_4:std_logic_vector(2 downto 0):="100";
constant s_5:std_logic_vector(2 downto 0):="101";
constant s_6:std_logic_vector(2 downto 0):="110";
constant s_7:std_logic_vector(2 downto 0):="111";
--write the remaining constant declarations    
begin 
-- process for next state and output logic
reg_process: process(clock,reset)
begin
if(reset='1')then 
state <= s_2; -- write the reset state
elsif(clock'event and clock='1')then
case state is  
      --reset
     when s_2=>
     state<=s_0;
	  when s_0=>
     state<=s_6;
	  when s_6=>
     state<=s_7;
	  when s_7=>
     state<=s_1;
	  when s_1=>
     state<=s_3;
	  when s_3=>
     state<=s_5;
	  when s_5=>
     state<=s_4;
	  when s_4=>
     state<=s_2;
     -- write the remaining choices   
       --DEFAULT CASE
      when others=>
        state <= s_2;-- write the reset state
      end case; 
end if;
end process reg_process;
-- output logic concurrent statemet or one more process
y<=state;
end behav;