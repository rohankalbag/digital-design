library ieee;
use ieee.std_logic_1164.all;

entity even_detect is
	port(a: in std_logic_vector(3 downto 0);
		  o: out std_logic);
end even_detect;

architecture behav of even_detect is
begin

process(a)
begin
	if(a="0000") then
		o <= '1';
	elsif(a="0010") then
		o <= '1';
	elsif(a="0100") then
		o <= '1';
	elsif(a="0110") then
		o <= '1';
	elsif(a="1000") then
		o <= '1';
	elsif(a="1010") then
		o <= '1';
	elsif(a="1100") then
		o <= '1';
	elsif(a="1110") then
		o <= '1';
	else
		o <= '0';
	end if;
end process;
end behav;