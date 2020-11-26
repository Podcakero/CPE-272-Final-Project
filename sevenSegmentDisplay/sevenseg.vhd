library ieee;

use ieee.std_logic_1164.all;

entity sevenseg is
	port 
	(
		i: in std_logic_vector(3 downto 0);
		o: out std_logic_vector(7 downto 0)
	);
end sevenseg

architecture behavior of sevenseg is
begin
	case i is
		when "0000" =>
			o <= "00000001";
		when "0001" =>
			o <= "01001111";
		when "0010" =>
			o <= "00010010";
		when "0011" =>
			o <= "00000110";
		when "0100" =>
			o <= "01001100";
		when "0101" =>
			o <= "00100100";
		when "0110" =>
			o <= "00100000";
		when "0111" =>
			o <= "00001111";
		when "1000" =>
			o <= "00000000";
		when "1001" =>
			o <= "00000100";
		when "1010" =>
			o <= "00001000";
		when "1011" =>
			o <= "0110000";
		when "1100" =>
			o <= "00110001";
		when "1101" =>
			o <= "01000010";
		when "1110" =>
			o <= "00110000";
		when "1111" =>
			o <= "00111000";
	end case;
end behavior;