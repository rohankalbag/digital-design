 library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity Four_Adder_Subtracter is
  port (A: in std_logic_vector(3 downto 0); B: in std_logic_vector(3 downto 0); 
  M: in std_logic; S: out std_logic_vector(3 downto 0); Cout: out std_logic);
end entity;

architecture Struct of Four_Adder_Subtracter is
	component Full_Adder  is
		port (A, B, Cin: in std_logic; S, Cout: out std_logic);
	end component;
	signal K: std_logic_vector(3 downto 0);
	signal D: std_logic_vector(2 downto 0);
begin
  -- component instances
	x1: XOR_2 port map (A => M, B => B(0), Y => K(0));
	x2: XOR_2 port map (A => M, B => B(1), Y => K(1));
	x3: XOR_2 port map (A => M, B => B(2), Y => K(2));
	x4: XOR_2 port map (A => M, B => B(3), Y => K(3));
	fa1: Full_Adder 
		 port map (A => A(0), B => K(0), S => S(0), Cout => D(0), Cin => M);
	fa2: Full_Adder 
		 port map (A => A(1), B => K(1), S => S(1), Cout => D(1), Cin => D(0));
	fa3: Full_Adder 
       port map (A => A(2), B => K(2), S => S(2), Cout => D(2), Cin => D(1));
	fa4: Full_Adder 
       port map (A => A(3), B => K(3), S => S(3), Cout => Cout, Cin => D(2));
end Struct;
