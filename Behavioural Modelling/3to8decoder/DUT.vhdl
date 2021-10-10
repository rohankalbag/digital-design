-- A DUT entity is used to wrap your design.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(3 downto 0);
       	output_vector: out std_logic_vector(7 downto 0));
end entity;

architecture DutWrap of DUT is
	component ThreeToEight is
		port (A: in std_logic_vector(3 downto 0); Y: out std_logic_vector(7 downto 0));
	end component ThreeToEight;
begin
   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: ThreeToEight
			port map(
			A => input_vector,
			Y => output_vector
			);
end DutWrap;

