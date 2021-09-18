
library work;
use work.Gates.all;

library ieee;
use ieee.std_logic_1164.all;

entity TwoxOne is
  port (I0, I1, S: in std_logic; Y: out std_logic);
end entity TwoxOne;

architecture Struct of TwoxOne is
  signal k1,h1,h2: std_logic;
begin
  -- component instances
  inv1: INVERTER port map(A => S, Y => k1);
  a1: AND_2 port map (A => I0, B => k1, Y => h1);
  a2: AND_2 port map(A => S, B => I1, Y => h2);
  o1: OR_2  port map (A => h1, B => h2, Y => Y);
end Struct;
