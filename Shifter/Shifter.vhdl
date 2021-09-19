
library work;
use work.Gates.all;

library ieee;
use ieee.std_logic_1164.all;

entity Reverser is
  port (A: in std_logic_vector(7 downto 0); L: in std_logic ; Y: out std_logic_vector(7 downto 0));
end entity;

architecture Struct of Reverser is
	component TwoxOne is
	  port (I0, I1, S: in std_logic; Y: out std_logic);
	end component TwoxOne;
begin
	 b1 : for i in 0 to 7 generate
			b2: TwoxOne port map(I0 => A(i), I1 => A(7-i), S => L, Y => Y(i));
    end generate; 
end Struct;

library work;
use work.Gates.all;

library ieee;
use ieee.std_logic_1164.all;

entity Shifter is
  port (A: in std_logic_vector(7 downto 0); B: in std_logic_vector(2 downto 0); L: in std_logic; Y: out std_logic_vector(7 downto 0));
end entity;

architecture Destruct of Shifter is
  signal A1,A2,A3,A4: std_logic_vector(7 downto 0);  
	component TwoxOne is
	  port (I0, I1, S: in std_logic; Y: out std_logic);
	end component TwoxOne;
	
	component Reverser is
		port (A: in std_logic_vector(7 downto 0); L: in std_logic ; Y: out std_logic_vector(7 downto 0));
	end component;

begin
		rev1: Reverser port map(A => A, L => L, Y => A1);
		n4_bit : for i in 0 to 7 generate

		  lsb: if i < 4 generate
				b2: TwoxOne port map(I0 => A1(i), I1 => A1(i+4), S => b(2), Y => A2(i));
		  end generate lsb;

		  msb: if i > 3 generate
				b2: TwoxOne port map(I0 => A1(i), I1 => '0', S => b(2), Y => A2(i));
		  end generate msb;

		end generate;

		n2_bit : for i in 0 to 7 generate

		  lsb: if i < 6 generate
				b2: TwoxOne port map(I0 => A2(i), I1 => A2(i+2), S => b(1), Y => A3(i));
		  end generate lsb;

		  msb: if i > 5 generate
				b2: TwoxOne port map(I0 => A2(i), I1 => '0', S => b(1), Y => A3(i));
		  end generate msb;

		end generate;

		n1_bit : for i in 0 to 7 generate

		  lsb: if i < 7 generate
				b2: TwoxOne port map(I0 => A3(i), I1 => A3(i+1), S => b(0), Y => A4(i));
		  end generate lsb;

		  msb: if i > 6 generate
				b2: TwoxOne port map(I0 => A3(i), I1 => '0', S => b(0), Y => A4(i));
		  end generate msb;

		end generate;
		rev2: Reverser port map(A => A4, L => L, Y => Y);
end Destruct;

