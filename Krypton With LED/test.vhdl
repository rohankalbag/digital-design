
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all; 
use ieee.numeric_std.all;

entity test is
    port( clk_slow      : in std_logic;
          inp           : in std_logic_vector(4 downto 0);
          rst           : in  std_logic;
          detect        : out std_logic_vector(6 downto 0)
          );
end entity; 

architecture behave of test is

    
-- Component Declaration
    component krypton is
    port(   inp:in std_logic_vector(4 downto 0);
            reset,clock:in std_logic;
            outp: out std_logic_vector(6 downto 0));
    end component;

begin

    krypton_det_instance : krypton port map(
                    inp         => inp,
                    reset       => rst,
                    clock       => clk_slow,
                    outp        => detect);
end behave;






