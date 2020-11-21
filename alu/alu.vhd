library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity alu is
	port
	(
		A: in std_logic_vector(7 downto 0);
		B: in std_logic_vector(7 downto 0);
		AluOp: in std_logic_vector(2 downto 0);
		output: out std_logic_vector(7 downto 0)
	);
end alu;

architecture behavior of alu is
begin
	process(A, B, AluOp)
	begin
		case AluOp is
			when "000" =>
				output <= (A + B);
			when "001" =>
				output <= (A - B);
			when "010" =>
				output <= (A and B);
			when "011" => 
				output <= (A or B);
			when "100" => 
				output <= B;
			when "101" => 
				output <= A;
			when "110" =>
			when "111" =>
		end case;
	end process;
end behavior;