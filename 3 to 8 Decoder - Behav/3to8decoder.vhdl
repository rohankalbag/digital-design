library ieee;
use ieee.std_logic_1164.all;

entity ThreeToEight is
  port (A: in std_logic_vector(3 downto 0); Y: out std_logic_vector(7 downto 0));
end entity ThreeToEight;

architecture Struct of ThreeToEight is
begin
	decoder: process(A)
	begin
	  -- component instances
	  if(A(0)='1') then
				if(A(3 downto 1)="000") then
					Y <= "00000001";
				elsif(A(3 downto 1)="001") then
					Y <= "00000010";
				elsif(A(3 downto 1)="010") then
					Y <= "00000100";
				elsif(A(3 downto 1)="011") then
					Y <= "00001000";
				elsif(A(3 downto 1)="100") then
					Y <= "00010000";
				elsif(A(3 downto 1)="101") then
					Y <= "00100000";
				elsif(A(3 downto 1)="110") then
					Y <= "01000000";
				else
					Y <= "10000000";
				end if;
	  else
	  Y <= "00000000";
	  end if;
	end process;
end Struct;