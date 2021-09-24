library ieee;
use ieee.std_logic_1164.all;

entity FourbitFourxOne is
  port (A: in std_logic_vector(3 downto 0);B: in std_logic_vector(3 downto 0);C: in std_logic_vector(3 downto 0);
  D: in std_logic_vector(3 downto 0); sel: in std_logic_vector(1 downto 0); Y: out std_logic_vector(3 downto 0));
end entity FourbitFourxOne;

architecture Struct of FourbitFourxOne is
begin
	fourmux: process(A,B,C,D,sel)
	begin
	  -- component instances
	  for i in 0 to 3 loop
		  if(sel="00") then
				Y(i) <= A(i);
			elsif (sel="01") then
				Y(i) <= B(i);
			elsif (sel="10") then
				Y(i) <= C(i);
			else
				Y(i) <= D(i);
			end if;
	  end loop;
	end process;
end Struct;