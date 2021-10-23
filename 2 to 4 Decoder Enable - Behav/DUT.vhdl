-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(2 downto 0);
       	output_vector: out std_logic_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is
	component TwotoFour  is
		port (A: std_logic_vector(1 downto 0); E: in std_logic; Y: out std_logic_vector(3 downto 0));
	end component;
begin
   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: TwotoFour 
			port map (
					A => input_vector(2 downto 1),
					E => input_vector(0),
					Y => output_vector);

end DutWrap;

