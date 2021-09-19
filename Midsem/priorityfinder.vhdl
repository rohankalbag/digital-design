
library work;
use work.Gates.all;

library ieee;
use ieee.std_logic_1164.all;

entity PriorityFinder is
  port (H1, H2, F1: in std_logic; Z: in std_logic_vector(0 to 5); P1,P2: out std_logic);
end entity;

architecture Struct of PriorityFinder is
  signal S1: std_logic_vector(0 to 2);
  signal S2: std_logic_vector(0 to 16);
begin
  -- component instances
  xor1: XOR_2 port map(A => H1, B => H2, Y => S1(0));
  nor1: NOR_2 port map(A => H1, B => H2, Y => S1(1));
  and1: AND_2 port map(A => S1(1), B => F1, Y => S1(2));
  or1: OR_2 port map(A => S1(0), B => S1(2), Y => P1);
  inv1: INVERTER port map(A => H1,Y =>S2(0));
  inv2: INVERTER port map(A => H2,Y =>S2(1));
  inv3: INVERTER port map(A => F1,Y =>S2(2));
  inv4: INVERTER port map(A => Z(0),Y =>S2(3));
  inv5: INVERTER port map(A => Z(1),Y =>S2(4));
  inv6: INVERTER port map(A => Z(2),Y =>S2(5));
  inv7: INVERTER port map(A => Z(3),Y =>S2(6));
  inv8: INVERTER port map(A => Z(4),Y =>S2(7));
  inv9: INVERTER port map(A => Z(5),Y =>S2(8));
  and2: AND_2 port map(A => S2(0), B => S2(1), Y => S2(9));
  and3: AND_2 port map(A => S2(2), B => S2(9), Y => S2(10));
  and4: AND_2 port map(A => S2(3), B => S2(10), Y => S2(11));
  and5: AND_2 port map(A => S2(4), B => S2(11), Y => S2(12));
  and6: AND_2 port map(A => S2(5), B => S2(12), Y => S2(13));
  and7: AND_2 port map(A => S2(6), B => S2(13), Y => S2(14));
  and8: AND_2 port map(A => S2(7), B => S2(14), Y => S2(15));
  and9: AND_2 port map(A => S2(8), B => S2(15), Y => S2(16));
  or2: OR_2 port map(A => S1(0), B => S2(16), Y => P2);
end Struct;
