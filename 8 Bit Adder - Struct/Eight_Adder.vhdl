 library ieee;
use ieee.std_logic_1164.all;

library work;

use work.Gates.all;
use work.Full_Adder_Pack.all;

library ieee;
use ieee.std_logic_1164.all;

entity Eight_Adder is
	port(A : in std_logic_vector(7 downto 0); B: in std_logic_vector(7 downto 0); Cout : out std_logic; S: out std_logic_vector(7 downto 0));
end entity Eight_Adder;

architecture Nature of Eight_Adder is
	signal Cdout: std_logic_vector(6 downto 0);
begin
	fa1: Full_Adder
			port map(A => A(0), B => B(0), Cin => '0', S => S(0), Cout => Cdout(0));
	fa2: Full_Adder
			port map(A => A(1), B => B(1), Cin => Cdout(0), S => S(1), Cout => Cdout(1));
	fa3: Full_Adder
			port map(A => A(2), B => B(2), Cin => Cdout(1), S => S(2), Cout => Cdout(2));
	fa4: Full_Adder
			port map(A => A(3), B => B(3), Cin => Cdout(2), S => S(3), Cout => Cdout(3));
	fa5: Full_Adder
			port map(A => A(4), B => B(4), Cin => Cdout(3), S => S(4), Cout => Cdout(4));
	fa6: Full_Adder
			port map(A => A(5), B => B(5), Cin => Cdout(4), S => S(5), Cout => Cdout(5));
	fa7: Full_Adder
			port map(A => A(6), B => B(6), Cin => Cdout(5), S => S(6), Cout => Cdout(6));
	fa8: Full_Adder
			port map(A => A(7), B => B(7), Cin => Cdout(6), S => S(7), Cout => Cout);
end Nature;