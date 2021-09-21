
library ieee;
use ieee.std_logic_1164.all;

entity alu_beh is
    generic(
        operand_width : integer:=4;
        sel_line : integer:=2
        );
    port (
        A: in std_logic_vector(operand_width-1 downto 0);
        B: in std_logic_vector(operand_width-1 downto 0);
        sel: in std_logic_vector(sel_line-1 downto 0);
        op: out std_logic_vector((operand_width*2)-1 downto 0)
    ) ;
end alu_beh;

architecture a1 of alu_beh is
    function add(A: in std_logic_vector(operand_width-1 downto 0); B: in std_logic_vector(operand_width-1 downto 0))
        return std_logic_vector is
			variable sum: std_logic_vector(operand_width downto 0) := (others => '0');
			variable carry: std_logic_vector(operand_width downto 0) := (others => '0');
		  begin
            -- write logic for addition
            -- Hint: Use for loop
				carry(0) := '0';
				for i in 0 to operand_width-1 loop
					carry(i+1) := (A(i) and B(i)) or (carry(i) and (A(i) xor B(i)));
					sum(i) := A(i) xor B(i) xor carry(i);
				end loop;
				sum(4) := carry(4);
            return sum;
    end add;
	 
	 function xor_finder(A: in std_logic_vector(operand_width-1 downto 0); B: in std_logic_vector(operand_width-1 downto 0))
        return std_logic_vector is
			variable xor_vector: std_logic_vector(operand_width - 1 downto 0) := (others => '0');
		  begin
				for i in 0 to operand_width - 1 loop
					xor_vector(i) := A(i) xor B(i);
				end loop;
            return xor_vector;
    end xor_finder;
begin
alu : process( A, B, sel )
begin
   -- complete VHDL code for various outputs of ALU based on select lines
   -- Hint: use if/else statement
   --
	if(sel(0)='1' and sel(1)='0') then
		op <= "000"&add(A,B);
	elsif (sel(0)='0' and sel(1)='0') then
		op <= A&B;
	elsif (sel(0)='0' and sel(1)='1') then
		op <= "0000"&xor_finder(A,B);
	else
		op <= "000"&A&'0';
	end if;
   -- add function usage :
   --   signal_name <= add(A,B)
   --   variable_name := add(A,B)
   --
   -- concatenate operator usage:
   --    "0000"&A 
end process ; -- alu
end a1 ; -- a1
