-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(7 downto 0);
       	output_vector: out std_logic_vector(10 downto 0));
end entity;

architecture DutWrap of DUT is

	component atm is
	-- port declaration
		port (A: in std_logic_vector(0 to 7); A1: in std_logic_vector(0 to 7); A2: in std_logic_vector(0 to 7); 
			Y: out std_logic_vector(0 to 10));
	end component atm;

begin
   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: atm 
			port map (
					A(0 to 7) => input_vector(7 downto 0),
					A1(0 to 7) => ('0','1','1','0','0','1','0','0'),
					A2(0 to 7) => ('0','0','1','1','0','0','1','0'),
					Y(0 to 10) => output_vector(10 downto 0));

end DutWrap;

