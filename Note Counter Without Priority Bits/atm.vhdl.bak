--///////////////////////////////////////////////////////////////////////////

-- @ Soumyajit Langal (WEL IITB)
-- The skeleton code for Mid-Semester EE214. 

--///////////////////////////////////////////////////////////////////////////


library work;
use work.Gates.all;

library ieee;
use ieee.std_logic_1164.all;

library ieee;
use ieee.std_logic_1164.all;

entity atm is
-- port declaration
	port (A: in std_logic_vector(0 to 7); A1: in std_logic_vector(0 to 7); A2: in std_logic_vector(0 to 7); 
		Y: out std_logic_vector(0 to 10));
end entity atm;

architecture struct of atm is

-- write code here
	signal H11,H22,F11: std_logic;
	signal Z1: std_logic_vector(0 to 5);
	component PriorityFinder is
		port (H1, H2, F1: in std_logic; Z: in std_logic_vector(0 to 5); P1,P2: out std_logic);
	end component;
	
	component NoteCounter is
		port (A: in std_logic_vector(0 to 7); A1: in std_logic_vector(0 to 7); A2: in std_logic_vector(0 to 7); 
		H1,H2,F1: out std_logic; Z: out std_logic_vector(0 to 5));
	end component;

begin
	nc1: NoteCounter port map(A => A, A1 => A1, A2 => A2, H1 => H11, H2 => H22, Z => Z1, F1 => F11);
	pf1: PriorityFinder port map(H1 => H11, H2 => H22, F1 => F11, Z => Z1, P1 => Y(0), P2 => Y(1));
	Y(2) <= H11;
	Y(3) <= H22; 
	Y(4) <= F11; 
	Y(5 to 10) <= Z1;
-- Write code here(don't worry about generic, just ignore it and do normal port mapping for div)

end struct;
