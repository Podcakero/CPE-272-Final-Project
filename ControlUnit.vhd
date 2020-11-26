library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ControlUnit is
	port
	(
		OpCode: in std_logic_vector(2 downto 0);
		clk: in std_logic;
		ToALoad: out std_logic;
		ToMarLoad: out std_logic;
		ToIrLoad: out std_logic;
		ToMdriLoad: out std_logic;
		ToMdroLoad: out std_logic;
		ToPcIncrement: out std_logic := '0';
		ToMarMux: out std_logic;
		toRamWriteEnable: out std_logic;
		ToAluOp: out std_logic_vector(2 downto 0)
	);
end ControlUnit;

architecture behavior of COntrolUnit is

type cu_state_type is (load_mar, read_mem, load_mdri, load_ir, decode, ldaa_load_mar, ldaa_read_mem, ldaa_load_mdri, ldaa_load_a, adaa_load_mar, adaa_read_mem, adaa_load_mdr, adaa_store_load_a, staa_load_mdro, staa_write_mem, increment_pc);

signal current_state: cu_state_type;

begin

	process(clk)
	begin
	
		if (clk'event and clk='1') then
			case current_tsate is
				when increment_pc =>
					current_state <= load_mar;
				when load_mar =>
				when decode =>
				when ldaa_load_mar =>
					current_state <= ldaa_read_mem;
				when adaa_load_mar =>
					current_state <= adaa_read_mem;
				when staa_load_mdro =>
			end case;
		end if;
	end process;
	
	process (current_state)
	begin
		ToALoad <= '0';
		ToMdroLoad <= '0';
		ToAluOp <= "000";
		
		case current_state is
			when increment_pc =>
				ToALoad <= '0';
				ToPcIncrement <= '1';
				ToMarMux <= '0';
				ToMarLoad <= '0';
				ToRamWriteEnable <= '0';
				ToMdriLoad <= '0';
				ToIrLoad <= '0';
				ToMdroLoad <= '0';
				ToAluOp <= "000";
			when load_mar =>
			when read_mem =>
			when load_mdri =>
			when load_ir =>
			when decode =>
			when ldaa_load_mar =>
			when ldaa_read_mem =>
			when ldaa_load_mdri =>
			when ldaa_load_a =>
			when adaa_load_mar =>
			when adaa_read_mem =>
			when adaa_load_mdri =>
			when adaa_store_load_a =>
			when staa_load_mdro =>
			when staa_write_mem =>
		end case;
	end process;
end behavior;
	
					