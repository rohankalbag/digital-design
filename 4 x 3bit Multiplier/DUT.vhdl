-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(6 downto 0);
       	output_vector: out std_logic_vector(6 downto 0));
end entity;

architecture DutWrap of DUT is
   component Four_Three_Multiplier is
		port(A : in std_logic_vector(3 downto 0); B: in std_logic_vector(2 downto 0);M: out std_logic_vector(6 downto 0));
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: Four_Three_Multiplier 
			port map (
					-- order of inputs
					A(3)  => input_vector(6),
					A(2)  => input_vector(5),
					A(1)  => input_vector(4),
					A(0)  => input_vector(3),
					B(2)  => input_vector(2),
					B(1)  => input_vector(1),
					B(0)  => input_vector(0),

				 -- order of outputs
				  M(6)  => output_vector(6),
				  M(5)  => output_vector(5),
				  M(4)  => output_vector(4),
				  M(3)  => output_vector(3),
				  M(2)  => output_vector(2),
				  M(1)  => output_vector(1),
				  M(0)  => output_vector(0));
end DutWrap;

