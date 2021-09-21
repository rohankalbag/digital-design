
library work;
use work.Gates.all;

library ieee;
use ieee.std_logic_1164.all;

entity NoteCounter is
  port (A: in std_logic_vector(0 to 7); A1: in std_logic_vector(0 to 7); A2: in std_logic_vector(0 to 7); 
  H1,H2,F1: out std_logic; Z: out std_logic_vector(0 to 5));
end entity;

architecture Struct of NoteCounter is
  signal q1,q2,r1: std_logic_vector(0 to 7);
  signal m1: std_logic_vector(0 to 5);
  signal m2: std_logic_vector(0 to 6);
  signal m3: std_logic_vector(0 to 1);
	component div is
		generic(
					N : integer:=8; -- operand width
					NN : integer:=16 -- result width
				  );
		port (
					Nu: in std_logic_vector(N-1 downto 0);-- Nu (read numerator) is dividend
					D: in std_logic_vector(N-1 downto 0);-- D (read Denominator) is divisor
					RQ: out std_logic_vector(NN-1 downto 0)--upper N bits of RQ will have remainder and lower N bits will have quotient
		) ;
	end component;
	
begin
  -- component instances
  div1: div port map(Nu(7 downto 0) => A(0 to 7), D(7 downto 0) => A1(0 to 7), RQ(15 downto 8) => R1(0 to 7), RQ(1) => H1, RQ(0) => H2, RQ(7 downto 2) => m1);
  div2: div port map(Nu(7 downto 0) => R1(0 to 7), D(7 downto 0) => A2(0 to 7),RQ(13 downto 8) => Z(0 to 5), RQ(0) => F1,RQ(7 downto 1) => m2, RQ(15 downto 14) => m3);
end Struct;
