 library ieee;
use ieee.std_logic_1164.all;

library work;

use work.Gates.all;

library ieee;
use ieee.std_logic_1164.all;

entity Four_Three_Multiplier is
	port(A : in std_logic_vector(3 downto 0); B: in std_logic_vector(2 downto 0);M: out std_logic_vector(6 downto 0));
end entity Four_Three_Multiplier;

architecture Multiplier_Nature of Four_Three_Multiplier is
	component Four_Adder is
		port(A : in std_logic_vector(3 downto 0); B: in std_logic_vector(3 downto 0); Cout : out std_logic; S: out std_logic_vector(3 downto 0));
	end component Four_Adder;
	
	signal C: std_logic_vector(10 downto 0);
	signal H: std_logic_vector(3 downto 0);
begin
	ag1: AND_2
			port map(A => A(0), B => B(0), Y => M(0));
	ag2: AND_2
			port map(A => A(1), B => B(0), Y => C(0));
	ag3: AND_2
			port map(A => A(2), B => B(0), Y => C(1));
	ag4: AND_2
			port map(A => A(3), B => B(0), Y => C(2));
	ag5: AND_2
			port map(A => A(0), B => B(1), Y => C(3));
	ag6: AND_2
			port map(A => A(1), B => B(1), Y => C(4));
	ag7: AND_2
			port map(A => A(2), B => B(1), Y => C(5));
	ag8: AND_2
			port map(A => A(3), B => B(1), Y => C(6));
	ag9: AND_2
			port map(A => A(0), B => B(2), Y => C(7));
	ag10: AND_2
			port map(A => A(1), B => B(2), Y => C(8));
	ag11: AND_2
			port map(A => A(2), B => B(2), Y => C(9));
	ag12: AND_2
			port map(A => A(3), B => B(2), Y => C(10));
	fa1: Four_Adder
			port map(A(0) => C(0), A(1) => C(1), A(2) => C(2), A(3) => '0', B(0) => C(3), B(1) => C(4), B(2) => C(5), 
			B(3) => C(6), S(0) => M(1), S(1) => H(0), S(2) => H(1), S(3) => H(2), Cout => H(3));
	fa2: Four_Adder
			port map(A(0) => H(0), A(1) => H(1), A(2) => H(2), A(3) => H(3), B(0) => C(7), B(1) => C(8), B(2) => C(9), 
			B(3) => C(10), S(0) => M(2),S(1) => M(3), S(2) => M(4), S(3) => M(5), Cout => M(6));
end Multiplier_Nature;