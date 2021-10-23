-- A DUT entity is used to wrap your design.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(3 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is

	component even_detect is
	port(a: in std_logic_vector(3 downto 0);
		  o: out std_logic);
	end component;

begin
   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: even_detect
			port map(
			a(3 downto 0) => input_vector(3 downto 0),
			o => output_vector(0));
end DutWrap;

