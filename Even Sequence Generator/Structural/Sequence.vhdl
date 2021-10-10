library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all; 

entity sequence_generator_structural is
port (reset,clock: in std_logic;
y:out std_logic_vector(3 downto 0));
end entity sequence_generator_structural;

architecture struct of sequence_generator_structural is 
signal D3,D2,D1,D0 :std_logic;
signal Q:std_logic_vector(3 downto 0);
begin
-- write the equations here
D3 <= (Q(3) and (not Q(1)) and (not Q(0))) or (Q(1) and (not Q(0)) and (Q(3) xor Q(2))); 
D2 <= ((not Q(0)) and (Q(1) xor Q(2))); 
D1 <= Q(1) nor Q(0);
D0 <= '0';

y(3)<= Q(3);
y(2)<= Q(2);
y(1)<= Q(1);
y(0)<= Q(0);


-- Do the port mapping                          --asynchronous reset

--Q3
dff_3  : dff2 port map(D => d3, clk => clock, reset => reset, Q => Q(3));

--Q2
dff_2  : dff2 port map(D => d2, clk => clock, reset => reset, Q => Q(2));

--Q1
dff_1  : dff2 port map(D => d1, clk => clock, reset => reset, Q => Q(1));

--Q0
dff_0  : dff2 port map(D => d0, clk => clock, reset => reset, Q => Q(0));

end struct;