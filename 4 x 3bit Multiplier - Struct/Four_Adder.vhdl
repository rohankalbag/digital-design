 library ieee;
use ieee.std_logic_1164.all;

library work;

use work.Gates.all;
library ieee;
use ieee.std_logic_1164.all;

entity Four_Adder is
	port(A : in std_logic_vector(3 downto 0); B: in std_logic_vector(3 downto 0); Cout : out std_logic; S: out std_logic_vector(3 downto 0));
end entity Four_Adder;

architecture Nature of Four_Adder is
	signal Cdout: std_logic_vector(6 downto 0);
	component Full_Adder  is
		port (A, B, Cin: in std_logic; S, Cout: out std_logic);
	end component Full_Adder;
begin
	fa1: Full_Adder
			port map(A => A(0), B => B(0), Cin => '0', S => S(0), Cout => Cdout(0));
	fa2: Full_Adder
			port map(A => A(1), B => B(1), Cin => Cdout(0), S => S(1), Cout => Cdout(1));
	fa3: Full_Adder
			port map(A => A(2), B => B(2), Cin => Cdout(1), S => S(2), Cout => Cdout(2));
	fa4: Full_Adder
			port map(A => A(3), B => B(3), Cin => Cdout(2), S => S(3), Cout => Cout);
end Nature;