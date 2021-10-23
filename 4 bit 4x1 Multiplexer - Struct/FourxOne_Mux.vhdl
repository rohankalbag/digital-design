
library work;
use work.Gates.all;

library ieee;
use ieee.std_logic_1164.all;

entity FourxOne is
  port (I: in std_logic_vector(4 downto 1); S: in std_logic_vector(2 downto 1); Y: out std_logic);
end entity FourxOne;

architecture Struct of FourxOne is
	component TwoxOne is
		port (I0, I1, S: in std_logic; Y: out std_logic);
	end component TwoxOne;
  signal k1,k2: std_logic;
begin
  -- component instances
  m1: TwoxOne port map(I0 => I(1), I1 => I(2), S => S(1), Y => k1);
  m2: TwoxOne port map(I0 => I(3), I1 => I(4), S => S(1), Y => k2);
  m3: TwoxOne port map(I0 => k1, I1 => k2, S => S(2), Y => Y);
end Struct;
