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
		ToRamWriteEnable: out std_logic;
		ToAluOp: out std_logic_vector(2 downto 0)
	);
end ControlUnit;

architecture behavior of COntrolUnit is

type cu_state_type is (load_mar, read_mem, load_mdri, load_ir, decode, ldaa_load_mar, ldaa_read_mem, ldaa_load_mdri, ldaa_load_a, adaa_load_mar, adaa_read_mem, adaa_load_mdri, adaa_store_load_a, staa_load_mdro, staa_write_mem, increment_pc);

signal current_state: cu_state_type := increment_pc;

begin

	process(clk)
	begin
		if (clk'event and clk='1') then
			case current_state is
				when increment_pc =>
					current_state <= load_mar;
				when load_mar =>
					current_state <= read_mem;
				when read_mem =>
					current_state <= load_mdri;
				when load_mdri =>
					current_state <= load_ir;
				when load_ir =>
					current_state <= decode;
				when decode =>
					--Decode OpCode
					case OpCode is
						when "000" =>
							current_state <= ldaa_load_mar;
						when "001" =>
							current_state <= adaa_load_mar;
						when "010" =>
							current_state <= staa_load_mdro;
						when "011" =>
						when "100" => 
						when "101" =>
						when "110" =>
						when "111" => 
					end case;
				when ldaa_load_mar =>
					current_state <= ldaa_read_mem;
				when ldaa_read_mem =>
					current_state <= ldaa_load_mdri;
				when ldaa_load_mdri =>
					current_state <= ldaa_load_a;
				when ldaa_load_a =>
					current_state <= increment_pc;
				when adaa_load_mar =>
					current_state <= adaa_read_mem;
				when adaa_read_mem =>
					current_state <= adaa_load_mdri;
				when adaa_load_mdri =>
					current_state <= adaa_store_load_a;
				when adaa_store_load_a =>
					current_state <= increment_pc;
				when staa_load_mdro =>
					current_state <= staa_write_mem;
				when staa_write_mem =>
					current_state <= increment_pc;
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
				ToALoad <= '0';
				ToPcIncrement <= '0';
				ToMarMux <= '0';
				ToMarLoad <= '1';
				ToRamWriteEnable <= '0';
				ToMdriLoad <= '0';
				ToIrLoad <= '0';
				ToMdroLoad <= '0';
				ToAluOp <= "000";
			when read_mem =>
				ToALoad <= '0';
				ToPcIncrement <= '0';
				ToMarMux <= '0';
				ToMarLoad <= '0';
				ToRamWriteEnable <= '0';
				ToMdriLoad <= '0';
				ToIrLoad <= '0';
				ToMdroLoad <= '0';
				ToAluOp <= "000";
			when load_mdri =>
				ToALoad <= '0';
				ToPcIncrement <= '0';
				ToMarMux <= '0';
				ToMarLoad <= '0';
				ToRamWriteEnable <= '0';
				ToMdriLoad <= '1';
				ToIrLoad <= '0';
				ToMdroLoad <= '0';
				ToAluOp <= "000";
			when load_ir =>
				ToALoad <= '0';
				ToPcIncrement <= '0';
				ToMarMux <= '0';
				ToMarLoad <= '0';
				ToRamWriteEnable <= '0';
				ToMdriLoad <= '0';
				ToIrLoad <= '1';
				ToMdroLoad <= '0';
				ToAluOp <= "000";
			when decode =>
				ToALoad <= '0';
				ToPcIncrement <= '0';
				ToMarMux <= '0';
				ToMarLoad <= '0';
				ToRamWriteEnable <= '0';
				ToMdriLoad <= '0';
				ToIrLoad <= '0';
				ToMdroLoad <= '0';
				ToAluOp <= "000";
			when ldaa_load_mar =>
				ToALoad <= '0';
				ToPcIncrement <= '0';
				ToMarMux <= '1';
				ToMarLoad <= '1';
				ToRamWriteEnable <= '0';
				ToMdriLoad <= '0';
				ToIrLoad <= '0';
				ToMdroLoad <= '0';
				ToAluOp <= "000";
			when ldaa_read_mem =>
				ToALoad <= '0';
				ToPcIncrement <= '0';
				ToMarMux <= '0';
				ToMarLoad <= '0';
				ToRamWriteEnable <= '0';
				ToMdriLoad <= '0';
				ToIrLoad <= '0';
				ToMdroLoad <= '0';
				ToAluOp <= "000";
			when ldaa_load_mdri =>
				ToALoad <= '0';
				ToPcIncrement <= '0';
				ToMarMux <= '0';
				ToMarLoad <= '0';
				ToRamWriteEnable <= '0';
				ToMdriLoad <= '1';
				ToIrLoad <= '0';
				ToMdroLoad <= '0';
				ToAluOp <= "000";
			when ldaa_load_a =>
				ToALoad <= '1';
				ToPcIncrement <= '0';
				ToMarMux <= '0';
				ToMarLoad <= '0';
				ToRamWriteEnable <= '0';
				ToMdriLoad <= '0';
				ToIrLoad <= '0';
				ToMdroLoad <= '0';
				ToAluOp <= "101";
			when adaa_load_mar =>
				ToALoad <= '0';
				ToPcIncrement <= '0';
				ToMarMux <= '1';
				ToMarLoad <= '1';
				ToRamWriteEnable <= '0';
				ToMdriLoad <= '0';
				ToIrLoad <= '0';
				ToMdroLoad <= '0';
				ToAluOp <= "000";
			when adaa_read_mem =>
				ToALoad <= '0';
				ToPcIncrement <= '0';
				ToMarMux <= '0';
				ToMarLoad <= '0';
				ToRamWriteEnable <= '0';
				ToMdriLoad <= '0';
				ToIrLoad <= '0';
				ToMdroLoad <= '0';
				ToAluOp <= "000";
			when adaa_load_mdri =>
				ToALoad <= '0';
				ToPcIncrement <= '0';
				ToMarMux <= '0';
				ToMarLoad <= '0';
				ToRamWriteEnable <= '0';
				ToMdriLoad <= '1';
				ToIrLoad <= '0';
				ToMdroLoad <= '0';
				ToAluOp <= "000";
			when adaa_store_load_a =>
				ToALoad <= '1';
				ToPcIncrement <= '0';
				ToMarMux <= '0';
				ToMarLoad <= '0';
				ToRamWriteEnable <= '0';
				ToMdriLoad <= '0';
				ToIrLoad <= '0';
				ToMdroLoad <= '0';
				ToAluOp <= "000";
			when staa_load_mdro =>
				ToALoad <= '0';
				ToPcIncrement <= '0';
				ToMarMux <= '1';
				ToMarLoad <= '1';
				ToRamWriteEnable <= '0';
				ToMdriLoad <= '0';
				ToIrLoad <= '0';
				ToMdroLoad <= '1';
				ToAluOp <= "000";
			when staa_write_mem =>
				ToALoad <= '0';
				ToPcIncrement <= '0';
				ToMarMux <= '0';
				ToMarLoad <= '0';
				ToRamWriteEnable <= '1';
				ToMdriLoad <= '0';
				ToIrLoad <= '0';
				ToMdroLoad <= '0';
				ToAluOp <= "000";
		end case;
	end process;
end behavior;
	
					