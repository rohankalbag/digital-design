 library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;

entity TwotoFour  is
  port (A: in std_logic_vector(1 downto 0); E: in std_logic; Y: out std_logic_vector(3 downto 0));
end entity;

architecture Struct of TwotoFour is
begin
  process(E,A)
  begin
  if(E='1') then
		case A is
			when "00" => Y<="0001";
			when "01" => Y<="0010";
			when "10" => Y<="0100";
			when "11" => Y<="1000";
			when others => Y<="0000";
		end case;
  else
  Y <= "0000";
  end if;
  
  end process;
end Struct;
