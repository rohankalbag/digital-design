
library work;
use work.Gates.all;

library ieee;
use ieee.std_logic_1164.all;

entity FourbitFourxOne is
  port (A: in std_logic_vector(3 downto 0);B: in std_logic_vector(3 downto 0);C: in std_logic_vector(3 downto 0);
  D: in std_logic_vector(3 downto 0); S1,S0: in std_logic; Y: out std_logic_vector(3 downto 0));
end entity FourbitFourxOne;

architecture Struct of FourbitFourxOne is

	component FourxOne is
		port (I: in std_logic_vector(4 downto 1); S: in std_logic_vector(2 downto 1); Y: out std_logic);
	end component FourxOne;
	
begin
  -- component instances
  m1: FourxOne port map(I(4 downto 1) => (D(0),C(0),B(0),A(0)), S(1) => S0, S(2) => S1, Y => Y(0));
  m2: FourxOne port map(I(4 downto 1) => (D(1),C(1),B(1),A(1)), S(1) => S0, S(2) => S1, Y => Y(1));
  m3: FourxOne port map(I(4 downto 1) => (D(2),C(2),B(2),A(2)), S(1) => S0, S(2) => S1, Y => Y(2));
  m4: FourxOne port map(I(4 downto 1) => (D(3),C(3),B(3),A(3)), S(1) => S0, S(2) => S1, Y => Y(3));
  
end Struct;