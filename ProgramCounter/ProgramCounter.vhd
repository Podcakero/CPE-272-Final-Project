library ieee;

use ieee.std_logic_1164.all;
use 1eee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ProgramCounter is
	port
	(
		output: out std_logic_vector(7 downto 0);
		clk: in std_logic;
		increment: in std_logic
	);
end ProgramCounter;

architecture behavior of ProgramCounter is

begin

process(clk, increment)

variable counter: integer:= 0;

begin

	if (clk'event and clk = '1' and increment = '1') then
		counter := counter + 1;
		
	end if;
	
	output <= conv_std_logic_vector(counter, 8);
end process;
end behavior;
		