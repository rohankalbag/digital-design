-- A DUT entity is used to wrap your design.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(17 downto 0);
       	output_vector: out std_logic_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is

	component FourbitFourxOne is
	  port (A: in std_logic_vector(3 downto 0);B: in std_logic_vector(3 downto 0);C: in std_logic_vector(3 downto 0);
	  D: in std_logic_vector(3 downto 0); sel: in std_logic_vector(1 downto 0); Y: out std_logic_vector(3 downto 0));
	end component FourbitFourxOne;

begin
   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: FourbitFourxOne
			port map(
					-- order of inputs
					D(3 downto 0) => input_vector(17 downto 14),
					C(3 downto 0) => input_vector(13 downto 10),
					B(3 downto 0) => input_vector(9 downto 6),
					A(3 downto 0) => input_vector(5 downto 2),
					sel(1 downto 0) => input_vector(1 downto 0),
				 -- order of outputs
					Y(3 downto 0) => output_vector(3 downto 0));
end DutWrap;

