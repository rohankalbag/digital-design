-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(6 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;


architecture DutWrap of DUT is

component krypton is
port(inp:in std_logic_vector(4 downto 0);
        reset,clock:in std_logic;
        outp: out std_logic);
end component krypton;

begin
   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: krypton
			port map (
				reset => input_vector(1),
				clock => input_vector(0),
				inp => input_vector(6 downto 2),
				outp => output_vector(0)
				);
end DutWrap;

