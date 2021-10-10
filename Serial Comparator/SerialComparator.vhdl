library ieee;
use ieee.std_logic_1164.all;

entity Serial_comparator is
port (reset, a,b: in std_logic; clock: in std_logic; g, l: out std_logic);
end entity;

architecture BHV of Serial_comparator is
    type state_type is (rst, gt, eq, lt);
    signal y_present,y_next : state_type;
	 signal y_out: std_logic_vector(1 downto 0);
    begin
        process(a, b, y_present, reset)
        begin
            case y_present is
				
				when rst =>
				if(a='1' and b='0') then
					y_next <= gt;
					y_out <= "10";
				elsif(a='0' and b='1') then
					y_next <= lt;
					y_out <= "01";
				else
					y_next <= eq;
					y_out <= "00";
				end if;
				
				when gt =>
				if(a='1' and b='0') then
					y_out <= "10";
				elsif(a='0' and b='1') then
					y_next <= lt;
					y_out <= "01";
				else
					y_out <= "10";
				end if;
				
				when eq =>
				if(a='1' and b='0') then
					y_out <= "10";
				elsif(a='0' and b='1') then
					y_next <= lt;
					y_out <= "01";
				else
					y_out <= "00";
				end if;	
				
				when lt =>
				if(a='1' and b='0') then
					y_next <= gt;
					y_out <= "10";
				elsif(a='0' and b='1') then
					y_out <= "01";
				else
					y_out <= "10";
				end if;	
				end case ;
		  end process;
      
        process(clock,reset)
        begin
            if(reset = '1') then
                y_present <= rst;
            elsif (clock' event and clock = '1') then
                y_present <= y_next;
            end if;
        end process;
        
			process(y_out)
			begin
				g <= y_out(1);
				l <= y_out(0);
			end process;
end BHV;