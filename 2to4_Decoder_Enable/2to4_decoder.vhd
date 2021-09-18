 library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity TwotoFour  is
  port (A1, A0, E: in std_logic; Y: out std_logic_vector(3 downto 0));
end entity;
architecture Struct of TwotoFour is
  signal k: std_logic_vector(4 downto 0);
begin
  -- component instances
  i1: INVERTER port map(A => A1 , Y => K(0));
  i2: INVERTER port map(A => A0 , Y => k(3));
  i3: INVERTER port map(A => A0 , Y => k(2));
  ag1: AND_2 port map (A => A1, B => E, Y => k(4));
  ag2: AND_2 port map (A => k(0), B => E, Y => k(1));
  ag3: AND_2 port map (A => k(1), B => A0, Y => Y(1));
  ag4: AND_2 port map (A => k(2), B => K(1), Y => Y(0));
  ag5: AND_2 port map (A => k(4), B => A0, Y => Y(3));
  ag6: AND_2 port map (A => k(3), B => k(4), Y => Y(2));
end Struct;
