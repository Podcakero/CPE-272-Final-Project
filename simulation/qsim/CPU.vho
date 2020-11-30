-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "11/30/2020 15:35:01"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CPU IS
    PORT (
	clk : IN std_logic;
	pcOut : BUFFER std_logic_vector(7 DOWNTO 0);
	marOut : BUFFER std_logic_vector(7 DOWNTO 0);
	irOutput : BUFFER std_logic_vector(7 DOWNTO 0);
	mdriOutput : BUFFER std_logic_vector(7 DOWNTO 0);
	mdroOutput : BUFFER std_logic_vector(7 DOWNTO 0);
	aOut : BUFFER std_logic_vector(7 DOWNTO 0);
	incrementOut : BUFFER std_logic
	);
END CPU;

-- Design Ports Information
-- pcOut[0]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcOut[1]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcOut[2]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcOut[3]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcOut[4]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcOut[5]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcOut[6]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcOut[7]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[0]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[1]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[2]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[3]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[4]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[5]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[6]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[7]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[0]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[1]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[2]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[3]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[4]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[5]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[6]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[7]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[0]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[1]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[3]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[4]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[5]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[6]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[7]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[1]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[3]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[4]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[5]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[6]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[7]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[0]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[1]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[4]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[5]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[6]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[7]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- incrementOut	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CPU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_pcOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_marOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_irOutput : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_mdriOutput : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_mdroOutput : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_aOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_incrementOut : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CU|current_state.staa_write_mem~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \pcOut[0]~output_o\ : std_logic;
SIGNAL \pcOut[1]~output_o\ : std_logic;
SIGNAL \pcOut[2]~output_o\ : std_logic;
SIGNAL \pcOut[3]~output_o\ : std_logic;
SIGNAL \pcOut[4]~output_o\ : std_logic;
SIGNAL \pcOut[5]~output_o\ : std_logic;
SIGNAL \pcOut[6]~output_o\ : std_logic;
SIGNAL \pcOut[7]~output_o\ : std_logic;
SIGNAL \marOut[0]~output_o\ : std_logic;
SIGNAL \marOut[1]~output_o\ : std_logic;
SIGNAL \marOut[2]~output_o\ : std_logic;
SIGNAL \marOut[3]~output_o\ : std_logic;
SIGNAL \marOut[4]~output_o\ : std_logic;
SIGNAL \marOut[5]~output_o\ : std_logic;
SIGNAL \marOut[6]~output_o\ : std_logic;
SIGNAL \marOut[7]~output_o\ : std_logic;
SIGNAL \irOutput[0]~output_o\ : std_logic;
SIGNAL \irOutput[1]~output_o\ : std_logic;
SIGNAL \irOutput[2]~output_o\ : std_logic;
SIGNAL \irOutput[3]~output_o\ : std_logic;
SIGNAL \irOutput[4]~output_o\ : std_logic;
SIGNAL \irOutput[5]~output_o\ : std_logic;
SIGNAL \irOutput[6]~output_o\ : std_logic;
SIGNAL \irOutput[7]~output_o\ : std_logic;
SIGNAL \mdriOutput[0]~output_o\ : std_logic;
SIGNAL \mdriOutput[1]~output_o\ : std_logic;
SIGNAL \mdriOutput[2]~output_o\ : std_logic;
SIGNAL \mdriOutput[3]~output_o\ : std_logic;
SIGNAL \mdriOutput[4]~output_o\ : std_logic;
SIGNAL \mdriOutput[5]~output_o\ : std_logic;
SIGNAL \mdriOutput[6]~output_o\ : std_logic;
SIGNAL \mdriOutput[7]~output_o\ : std_logic;
SIGNAL \mdroOutput[0]~output_o\ : std_logic;
SIGNAL \mdroOutput[1]~output_o\ : std_logic;
SIGNAL \mdroOutput[2]~output_o\ : std_logic;
SIGNAL \mdroOutput[3]~output_o\ : std_logic;
SIGNAL \mdroOutput[4]~output_o\ : std_logic;
SIGNAL \mdroOutput[5]~output_o\ : std_logic;
SIGNAL \mdroOutput[6]~output_o\ : std_logic;
SIGNAL \mdroOutput[7]~output_o\ : std_logic;
SIGNAL \aOut[0]~output_o\ : std_logic;
SIGNAL \aOut[1]~output_o\ : std_logic;
SIGNAL \aOut[2]~output_o\ : std_logic;
SIGNAL \aOut[3]~output_o\ : std_logic;
SIGNAL \aOut[4]~output_o\ : std_logic;
SIGNAL \aOut[5]~output_o\ : std_logic;
SIGNAL \aOut[6]~output_o\ : std_logic;
SIGNAL \aOut[7]~output_o\ : std_logic;
SIGNAL \incrementOut~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \PC|counter[1]~8_combout\ : std_logic;
SIGNAL \PC|counter[1]~9\ : std_logic;
SIGNAL \PC|counter[2]~10_combout\ : std_logic;
SIGNAL \PC|counter[2]~11\ : std_logic;
SIGNAL \PC|counter[3]~12_combout\ : std_logic;
SIGNAL \PC|counter[3]~13\ : std_logic;
SIGNAL \PC|counter[4]~14_combout\ : std_logic;
SIGNAL \memory|Z~27_combout\ : std_logic;
SIGNAL \memory|Z~28_combout\ : std_logic;
SIGNAL \MemoryDataInput|output[0]~feeder_combout\ : std_logic;
SIGNAL \memory|Z~23_combout\ : std_logic;
SIGNAL \memory|Z~24_combout\ : std_logic;
SIGNAL \instruction|output[7]~feeder_combout\ : std_logic;
SIGNAL \CU|current_state.load_mar~0_combout\ : std_logic;
SIGNAL \CU|current_state.load_mar~feeder_combout\ : std_logic;
SIGNAL \CU|current_state.load_mar~q\ : std_logic;
SIGNAL \CU|current_state.read_mem~0_combout\ : std_logic;
SIGNAL \CU|current_state.read_mem~q\ : std_logic;
SIGNAL \CU|current_state.load_mdri~feeder_combout\ : std_logic;
SIGNAL \CU|current_state.load_mdri~q\ : std_logic;
SIGNAL \CU|current_state.load_ir~feeder_combout\ : std_logic;
SIGNAL \CU|current_state.load_ir~q\ : std_logic;
SIGNAL \CU|current_state.staa_write_mem~clkctrl_outclk\ : std_logic;
SIGNAL \CU|ToIrLoad~combout\ : std_logic;
SIGNAL \memory|Z~22_combout\ : std_logic;
SIGNAL \instruction|output[6]~feeder_combout\ : std_logic;
SIGNAL \CU|Selector8~0_combout\ : std_logic;
SIGNAL \CU|Selector8~1_combout\ : std_logic;
SIGNAL \CU|current_state.decode~q\ : std_logic;
SIGNAL \CU|current_state~20_combout\ : std_logic;
SIGNAL \CU|current_state.adaa_load_mar~feeder_combout\ : std_logic;
SIGNAL \CU|current_state.adaa_load_mar~q\ : std_logic;
SIGNAL \CU|current_state.adaa_read_mem~q\ : std_logic;
SIGNAL \CU|current_state.adaa_load_mdri~q\ : std_logic;
SIGNAL \CU|current_state~19_combout\ : std_logic;
SIGNAL \CU|current_state.ldaa_load_mar~feeder_combout\ : std_logic;
SIGNAL \CU|current_state.ldaa_load_mar~q\ : std_logic;
SIGNAL \CU|current_state.ldaa_read_mem~q\ : std_logic;
SIGNAL \CU|current_state.ldaa_load_mdri~feeder_combout\ : std_logic;
SIGNAL \CU|current_state.ldaa_load_mdri~q\ : std_logic;
SIGNAL \CU|WideOr19~0_combout\ : std_logic;
SIGNAL \CU|ToMdriLoad~combout\ : std_logic;
SIGNAL \CU|ToMarMux~combout\ : std_logic;
SIGNAL \MARmux|output[0]~0_combout\ : std_logic;
SIGNAL \CU|WideOr17~0_combout\ : std_logic;
SIGNAL \CU|ToMarLoad~combout\ : std_logic;
SIGNAL \memory|Z~18_combout\ : std_logic;
SIGNAL \memory|Z~19_combout\ : std_logic;
SIGNAL \instruction|output[4]~feeder_combout\ : std_logic;
SIGNAL \MARmux|output[4]~4_combout\ : std_logic;
SIGNAL \memory|Z~14_combout\ : std_logic;
SIGNAL \memory|Z~15_combout\ : std_logic;
SIGNAL \instruction|output[1]~feeder_combout\ : std_logic;
SIGNAL \MARmux|output[1]~1_combout\ : std_logic;
SIGNAL \memory|Z~16_combout\ : std_logic;
SIGNAL \memory|Z~17_combout\ : std_logic;
SIGNAL \instruction|output[2]~feeder_combout\ : std_logic;
SIGNAL \MARmux|output[2]~2_combout\ : std_logic;
SIGNAL \memory|Z~25_combout\ : std_logic;
SIGNAL \memory|Z~26_combout\ : std_logic;
SIGNAL \MemoryDataInput|output[3]~feeder_combout\ : std_logic;
SIGNAL \instruction|output[3]~feeder_combout\ : std_logic;
SIGNAL \MARmux|output[3]~3_combout\ : std_logic;
SIGNAL \memory|Z~20_combout\ : std_logic;
SIGNAL \memory|Z~21_combout\ : std_logic;
SIGNAL \instruction|output[5]~feeder_combout\ : std_logic;
SIGNAL \CU|current_state~18_combout\ : std_logic;
SIGNAL \CU|current_state.staa_load_mdro~q\ : std_logic;
SIGNAL \CU|current_state.staa_write_mem~feeder_combout\ : std_logic;
SIGNAL \CU|current_state.staa_write_mem~q\ : std_logic;
SIGNAL \CU|current_state.adaa_store_load_a~q\ : std_logic;
SIGNAL \CU|current_state.ldaa_load_a~q\ : std_logic;
SIGNAL \CU|Selector16~0_combout\ : std_logic;
SIGNAL \CU|current_state.increment_pc~feeder_combout\ : std_logic;
SIGNAL \CU|current_state.increment_pc~q\ : std_logic;
SIGNAL \CU|ToPcIncrement~combout\ : std_logic;
SIGNAL \PC|counter[0]~7_combout\ : std_logic;
SIGNAL \PC|counter[4]~15\ : std_logic;
SIGNAL \PC|counter[5]~16_combout\ : std_logic;
SIGNAL \PC|counter[5]~17\ : std_logic;
SIGNAL \PC|counter[6]~18_combout\ : std_logic;
SIGNAL \PC|counter[6]~19\ : std_logic;
SIGNAL \PC|counter[7]~20_combout\ : std_logic;
SIGNAL \accumulator|output[0]~feeder_combout\ : std_logic;
SIGNAL \CU|ToALoad~0_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Add0~0_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Add0~2_combout\ : std_logic;
SIGNAL \accumulator|output[1]~feeder_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Add0~1\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Add0~3_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Add0~5_combout\ : std_logic;
SIGNAL \accumulator|output[2]~feeder_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Add0~4\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Add0~6_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Add0~8_combout\ : std_logic;
SIGNAL \accumulator|output[3]~feeder_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Add0~7\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Add0~9_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Add0~11_combout\ : std_logic;
SIGNAL \accumulator|output[4]~feeder_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Add0~10\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Add0~12_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Add0~14_combout\ : std_logic;
SIGNAL \accumulator|output[5]~feeder_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Add0~13\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Add0~15_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Add0~17_combout\ : std_logic;
SIGNAL \accumulator|output[6]~feeder_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Add0~16\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Add0~18_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Add0~20_combout\ : std_logic;
SIGNAL \accumulator|output[7]~feeder_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Add0~19\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Add0~21_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Add0~23_combout\ : std_logic;
SIGNAL \PC|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \memory|Data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MemoryAccess|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MemoryDataOuput|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \instruction|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MemoryDataInput|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \accumulator|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MemoryAccess|ALT_INV_output\ : std_logic_vector(1 DOWNTO 1);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
pcOut <= ww_pcOut;
marOut <= ww_marOut;
irOutput <= ww_irOutput;
mdriOutput <= ww_mdriOutput;
mdroOutput <= ww_mdroOutput;
aOut <= ww_aOut;
incrementOut <= ww_incrementOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CU|current_state.staa_write_mem~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CU|current_state.staa_write_mem~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\MemoryAccess|ALT_INV_output\(1) <= NOT \MemoryAccess|output\(1);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y51_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X0_Y34_N16
\pcOut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|counter\(0),
	devoe => ww_devoe,
	o => \pcOut[0]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\pcOut[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|counter\(1),
	devoe => ww_devoe,
	o => \pcOut[1]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\pcOut[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|counter\(2),
	devoe => ww_devoe,
	o => \pcOut[2]~output_o\);

-- Location: IOOBUF_X26_Y39_N2
\pcOut[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|counter\(3),
	devoe => ww_devoe,
	o => \pcOut[3]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\pcOut[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|counter\(4),
	devoe => ww_devoe,
	o => \pcOut[4]~output_o\);

-- Location: IOOBUF_X0_Y29_N9
\pcOut[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|counter\(5),
	devoe => ww_devoe,
	o => \pcOut[5]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\pcOut[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|counter\(6),
	devoe => ww_devoe,
	o => \pcOut[6]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\pcOut[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|counter\(7),
	devoe => ww_devoe,
	o => \pcOut[7]~output_o\);

-- Location: IOOBUF_X78_Y23_N23
\marOut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \marOut[0]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\marOut[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \marOut[1]~output_o\);

-- Location: IOOBUF_X78_Y24_N2
\marOut[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \marOut[2]~output_o\);

-- Location: IOOBUF_X20_Y39_N16
\marOut[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoryAccess|output\(0),
	devoe => ww_devoe,
	o => \marOut[3]~output_o\);

-- Location: IOOBUF_X24_Y39_N30
\marOut[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoryAccess|output\(1),
	devoe => ww_devoe,
	o => \marOut[4]~output_o\);

-- Location: IOOBUF_X20_Y39_N9
\marOut[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoryAccess|output\(2),
	devoe => ww_devoe,
	o => \marOut[5]~output_o\);

-- Location: IOOBUF_X20_Y39_N2
\marOut[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoryAccess|output\(3),
	devoe => ww_devoe,
	o => \marOut[6]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\marOut[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoryAccess|output\(4),
	devoe => ww_devoe,
	o => \marOut[7]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\irOutput[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction|output\(0),
	devoe => ww_devoe,
	o => \irOutput[0]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\irOutput[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction|output\(1),
	devoe => ww_devoe,
	o => \irOutput[1]~output_o\);

-- Location: IOOBUF_X24_Y39_N23
\irOutput[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction|output\(2),
	devoe => ww_devoe,
	o => \irOutput[2]~output_o\);

-- Location: IOOBUF_X22_Y39_N23
\irOutput[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction|output\(3),
	devoe => ww_devoe,
	o => \irOutput[3]~output_o\);

-- Location: IOOBUF_X22_Y39_N16
\irOutput[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction|output\(4),
	devoe => ww_devoe,
	o => \irOutput[4]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\irOutput[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction|output\(5),
	devoe => ww_devoe,
	o => \irOutput[5]~output_o\);

-- Location: IOOBUF_X26_Y39_N30
\irOutput[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction|output\(6),
	devoe => ww_devoe,
	o => \irOutput[6]~output_o\);

-- Location: IOOBUF_X22_Y39_N30
\irOutput[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction|output\(7),
	devoe => ww_devoe,
	o => \irOutput[7]~output_o\);

-- Location: IOOBUF_X29_Y39_N16
\mdriOutput[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoryDataInput|output\(0),
	devoe => ww_devoe,
	o => \mdriOutput[0]~output_o\);

-- Location: IOOBUF_X29_Y39_N2
\mdriOutput[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoryDataInput|output\(1),
	devoe => ww_devoe,
	o => \mdriOutput[1]~output_o\);

-- Location: IOOBUF_X31_Y39_N30
\mdriOutput[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoryDataInput|output\(2),
	devoe => ww_devoe,
	o => \mdriOutput[2]~output_o\);

-- Location: IOOBUF_X26_Y39_N16
\mdriOutput[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoryDataInput|output\(3),
	devoe => ww_devoe,
	o => \mdriOutput[3]~output_o\);

-- Location: IOOBUF_X29_Y39_N9
\mdriOutput[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoryDataInput|output\(4),
	devoe => ww_devoe,
	o => \mdriOutput[4]~output_o\);

-- Location: IOOBUF_X31_Y39_N23
\mdriOutput[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoryDataInput|output\(5),
	devoe => ww_devoe,
	o => \mdriOutput[5]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\mdriOutput[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoryDataInput|output\(6),
	devoe => ww_devoe,
	o => \mdriOutput[6]~output_o\);

-- Location: IOOBUF_X31_Y39_N9
\mdriOutput[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoryDataInput|output\(7),
	devoe => ww_devoe,
	o => \mdriOutput[7]~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\mdroOutput[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoryDataOuput|output\(0),
	devoe => ww_devoe,
	o => \mdroOutput[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N30
\mdroOutput[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoryDataOuput|output\(1),
	devoe => ww_devoe,
	o => \mdroOutput[1]~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\mdroOutput[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoryDataOuput|output\(2),
	devoe => ww_devoe,
	o => \mdroOutput[2]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\mdroOutput[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoryDataOuput|output\(3),
	devoe => ww_devoe,
	o => \mdroOutput[3]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\mdroOutput[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoryDataOuput|output\(4),
	devoe => ww_devoe,
	o => \mdroOutput[4]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\mdroOutput[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoryDataOuput|output\(5),
	devoe => ww_devoe,
	o => \mdroOutput[5]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\mdroOutput[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoryDataOuput|output\(6),
	devoe => ww_devoe,
	o => \mdroOutput[6]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\mdroOutput[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoryDataOuput|output\(7),
	devoe => ww_devoe,
	o => \mdroOutput[7]~output_o\);

-- Location: IOOBUF_X31_Y39_N2
\aOut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \accumulator|output\(0),
	devoe => ww_devoe,
	o => \aOut[0]~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\aOut[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \accumulator|output\(1),
	devoe => ww_devoe,
	o => \aOut[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\aOut[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \accumulator|output\(2),
	devoe => ww_devoe,
	o => \aOut[2]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\aOut[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \accumulator|output\(3),
	devoe => ww_devoe,
	o => \aOut[3]~output_o\);

-- Location: IOOBUF_X34_Y39_N16
\aOut[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \accumulator|output\(4),
	devoe => ww_devoe,
	o => \aOut[4]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\aOut[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \accumulator|output\(5),
	devoe => ww_devoe,
	o => \aOut[5]~output_o\);

-- Location: IOOBUF_X34_Y39_N2
\aOut[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \accumulator|output\(6),
	devoe => ww_devoe,
	o => \aOut[6]~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\aOut[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \accumulator|output\(7),
	devoe => ww_devoe,
	o => \aOut[7]~output_o\);

-- Location: IOOBUF_X26_Y39_N9
\incrementOut~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CU|ToPcIncrement~combout\,
	devoe => ww_devoe,
	o => \incrementOut~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X34_Y33_N8
\PC|counter[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|counter[1]~8_combout\ = (\PC|counter\(0) & (\PC|counter\(1) $ (VCC))) # (!\PC|counter\(0) & (\PC|counter\(1) & VCC))
-- \PC|counter[1]~9\ = CARRY((\PC|counter\(0) & \PC|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|counter\(0),
	datab => \PC|counter\(1),
	datad => VCC,
	combout => \PC|counter[1]~8_combout\,
	cout => \PC|counter[1]~9\);

-- Location: FF_X34_Y33_N9
\PC|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC|counter[1]~8_combout\,
	ena => \CU|ToPcIncrement~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|counter\(1));

-- Location: LCCOMB_X34_Y33_N10
\PC|counter[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|counter[2]~10_combout\ = (\PC|counter\(2) & (!\PC|counter[1]~9\)) # (!\PC|counter\(2) & ((\PC|counter[1]~9\) # (GND)))
-- \PC|counter[2]~11\ = CARRY((!\PC|counter[1]~9\) # (!\PC|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|counter\(2),
	datad => VCC,
	cin => \PC|counter[1]~9\,
	combout => \PC|counter[2]~10_combout\,
	cout => \PC|counter[2]~11\);

-- Location: FF_X34_Y33_N11
\PC|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC|counter[2]~10_combout\,
	ena => \CU|ToPcIncrement~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|counter\(2));

-- Location: LCCOMB_X34_Y33_N12
\PC|counter[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|counter[3]~12_combout\ = (\PC|counter\(3) & (\PC|counter[2]~11\ $ (GND))) # (!\PC|counter\(3) & (!\PC|counter[2]~11\ & VCC))
-- \PC|counter[3]~13\ = CARRY((\PC|counter\(3) & !\PC|counter[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|counter\(3),
	datad => VCC,
	cin => \PC|counter[2]~11\,
	combout => \PC|counter[3]~12_combout\,
	cout => \PC|counter[3]~13\);

-- Location: FF_X34_Y33_N13
\PC|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC|counter[3]~12_combout\,
	ena => \CU|ToPcIncrement~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|counter\(3));

-- Location: LCCOMB_X34_Y33_N14
\PC|counter[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|counter[4]~14_combout\ = (\PC|counter\(4) & (!\PC|counter[3]~13\)) # (!\PC|counter\(4) & ((\PC|counter[3]~13\) # (GND)))
-- \PC|counter[4]~15\ = CARRY((!\PC|counter[3]~13\) # (!\PC|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|counter\(4),
	datad => VCC,
	cin => \PC|counter[3]~13\,
	combout => \PC|counter[4]~14_combout\,
	cout => \PC|counter[4]~15\);

-- Location: FF_X34_Y33_N15
\PC|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC|counter[4]~14_combout\,
	ena => \CU|ToPcIncrement~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|counter\(4));

-- Location: LCCOMB_X29_Y33_N30
\memory|Z~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~27_combout\ = (\MemoryAccess|output\(3) & ((\MemoryAccess|output\(2)) # ((!\MemoryAccess|output\(1) & !\MemoryAccess|output\(4))))) # (!\MemoryAccess|output\(3) & ((\MemoryAccess|output\(4) $ (!\MemoryAccess|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \MemoryAccess|output\(1),
	datac => \MemoryAccess|output\(4),
	datad => \MemoryAccess|output\(2),
	combout => \memory|Z~27_combout\);

-- Location: LCCOMB_X29_Y33_N22
\memory|Z~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~28_combout\ = (\MemoryAccess|output\(0) & (\MemoryAccess|output\(1) & ((\MemoryAccess|output\(2)) # (\memory|Z~27_combout\)))) # (!\MemoryAccess|output\(0) & (((\memory|Z~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(2),
	datab => \MemoryAccess|output\(1),
	datac => \memory|Z~27_combout\,
	datad => \MemoryAccess|output\(0),
	combout => \memory|Z~28_combout\);

-- Location: FF_X29_Y33_N23
\memory|Data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Data_out\(0));

-- Location: LCCOMB_X35_Y33_N24
\MemoryDataInput|output[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryDataInput|output[0]~feeder_combout\ = \memory|Data_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory|Data_out\(0),
	combout => \MemoryDataInput|output[0]~feeder_combout\);

-- Location: LCCOMB_X29_Y35_N14
\memory|Z~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~23_combout\ = (\MemoryAccess|output\(3) & ((\MemoryAccess|output\(0) & ((!\MemoryAccess|output\(2)))) # (!\MemoryAccess|output\(0) & ((\MemoryAccess|output\(1)) # (\MemoryAccess|output\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \MemoryAccess|output\(3),
	datac => \MemoryAccess|output\(0),
	datad => \MemoryAccess|output\(2),
	combout => \memory|Z~23_combout\);

-- Location: LCCOMB_X29_Y33_N18
\memory|Z~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~24_combout\ = (\MemoryAccess|output\(4) & (((!\MemoryAccess|output\(0))) # (!\MemoryAccess|output\(2)))) # (!\MemoryAccess|output\(4) & (((\memory|Z~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(2),
	datab => \MemoryAccess|output\(0),
	datac => \MemoryAccess|output\(4),
	datad => \memory|Z~23_combout\,
	combout => \memory|Z~24_combout\);

-- Location: FF_X29_Y33_N19
\memory|Data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Data_out\(7));

-- Location: FF_X35_Y33_N19
\MemoryDataInput|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory|Data_out\(7),
	sload => VCC,
	ena => \CU|ToMdriLoad~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryDataInput|output\(7));

-- Location: LCCOMB_X30_Y35_N14
\instruction|output[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instruction|output[7]~feeder_combout\ = \MemoryDataInput|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataInput|output\(7),
	combout => \instruction|output[7]~feeder_combout\);

-- Location: LCCOMB_X30_Y35_N16
\CU|current_state.load_mar~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|current_state.load_mar~0_combout\ = !\CU|current_state.increment_pc~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|current_state.increment_pc~q\,
	combout => \CU|current_state.load_mar~0_combout\);

-- Location: LCCOMB_X29_Y35_N26
\CU|current_state.load_mar~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|current_state.load_mar~feeder_combout\ = \CU|current_state.load_mar~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CU|current_state.load_mar~0_combout\,
	combout => \CU|current_state.load_mar~feeder_combout\);

-- Location: FF_X29_Y35_N27
\CU|current_state.load_mar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|current_state.load_mar~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.load_mar~q\);

-- Location: LCCOMB_X34_Y33_N28
\CU|current_state.read_mem~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|current_state.read_mem~0_combout\ = !\CU|current_state.load_mar~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CU|current_state.load_mar~q\,
	combout => \CU|current_state.read_mem~0_combout\);

-- Location: FF_X34_Y33_N29
\CU|current_state.read_mem\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|current_state.read_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.read_mem~q\);

-- Location: LCCOMB_X35_Y33_N0
\CU|current_state.load_mdri~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|current_state.load_mdri~feeder_combout\ = \CU|current_state.read_mem~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CU|current_state.read_mem~q\,
	combout => \CU|current_state.load_mdri~feeder_combout\);

-- Location: FF_X35_Y33_N1
\CU|current_state.load_mdri\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|current_state.load_mdri~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.load_mdri~q\);

-- Location: LCCOMB_X30_Y35_N22
\CU|current_state.load_ir~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|current_state.load_ir~feeder_combout\ = \CU|current_state.load_mdri~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CU|current_state.load_mdri~q\,
	combout => \CU|current_state.load_ir~feeder_combout\);

-- Location: FF_X30_Y35_N23
\CU|current_state.load_ir\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|current_state.load_ir~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.load_ir~q\);

-- Location: CLKCTRL_G10
\CU|current_state.staa_write_mem~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CU|current_state.staa_write_mem~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CU|current_state.staa_write_mem~clkctrl_outclk\);

-- Location: LCCOMB_X30_Y35_N24
\CU|ToIrLoad\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|ToIrLoad~combout\ = (GLOBAL(\CU|current_state.staa_write_mem~clkctrl_outclk\) & ((\CU|ToIrLoad~combout\))) # (!GLOBAL(\CU|current_state.staa_write_mem~clkctrl_outclk\) & (\CU|current_state.load_ir~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.load_ir~q\,
	datab => \CU|ToIrLoad~combout\,
	datad => \CU|current_state.staa_write_mem~clkctrl_outclk\,
	combout => \CU|ToIrLoad~combout\);

-- Location: FF_X30_Y35_N15
\instruction|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instruction|output[7]~feeder_combout\,
	ena => \CU|ToIrLoad~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction|output\(7));

-- Location: LCCOMB_X29_Y33_N12
\memory|Z~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~22_combout\ = (\MemoryAccess|output\(0) & (((\MemoryAccess|output\(2))))) # (!\MemoryAccess|output\(0) & (!\MemoryAccess|output\(3) & (!\MemoryAccess|output\(4) & !\MemoryAccess|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(0),
	datab => \MemoryAccess|output\(3),
	datac => \MemoryAccess|output\(4),
	datad => \MemoryAccess|output\(2),
	combout => \memory|Z~22_combout\);

-- Location: FF_X29_Y33_N13
\memory|Data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~22_combout\,
	sclr => \MemoryAccess|ALT_INV_output\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Data_out\(6));

-- Location: FF_X35_Y33_N17
\MemoryDataInput|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory|Data_out\(6),
	sload => VCC,
	ena => \CU|ToMdriLoad~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryDataInput|output\(6));

-- Location: LCCOMB_X30_Y35_N4
\instruction|output[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instruction|output[6]~feeder_combout\ = \MemoryDataInput|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataInput|output\(6),
	combout => \instruction|output[6]~feeder_combout\);

-- Location: FF_X30_Y35_N5
\instruction|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instruction|output[6]~feeder_combout\,
	ena => \CU|ToIrLoad~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction|output\(6));

-- Location: LCCOMB_X30_Y35_N10
\CU|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|Selector8~0_combout\ = (\CU|current_state.decode~q\ & ((\instruction|output\(7)) # ((\instruction|output\(5) & \instruction|output\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction|output\(5),
	datab => \instruction|output\(7),
	datac => \instruction|output\(6),
	datad => \CU|current_state.decode~q\,
	combout => \CU|Selector8~0_combout\);

-- Location: LCCOMB_X30_Y35_N20
\CU|Selector8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|Selector8~1_combout\ = (\CU|current_state.load_ir~q\) # (\CU|Selector8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|current_state.load_ir~q\,
	datad => \CU|Selector8~0_combout\,
	combout => \CU|Selector8~1_combout\);

-- Location: FF_X30_Y35_N21
\CU|current_state.decode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.decode~q\);

-- Location: LCCOMB_X30_Y35_N12
\CU|current_state~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|current_state~20_combout\ = (\instruction|output\(5) & (!\instruction|output\(7) & (!\instruction|output\(6) & \CU|current_state.decode~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction|output\(5),
	datab => \instruction|output\(7),
	datac => \instruction|output\(6),
	datad => \CU|current_state.decode~q\,
	combout => \CU|current_state~20_combout\);

-- Location: LCCOMB_X29_Y35_N10
\CU|current_state.adaa_load_mar~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|current_state.adaa_load_mar~feeder_combout\ = \CU|current_state~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CU|current_state~20_combout\,
	combout => \CU|current_state.adaa_load_mar~feeder_combout\);

-- Location: FF_X29_Y35_N11
\CU|current_state.adaa_load_mar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|current_state.adaa_load_mar~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.adaa_load_mar~q\);

-- Location: FF_X34_Y33_N7
\CU|current_state.adaa_read_mem\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CU|current_state.adaa_load_mar~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.adaa_read_mem~q\);

-- Location: FF_X35_Y33_N31
\CU|current_state.adaa_load_mdri\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CU|current_state.adaa_read_mem~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.adaa_load_mdri~q\);

-- Location: LCCOMB_X30_Y35_N26
\CU|current_state~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|current_state~19_combout\ = (!\instruction|output\(5) & (!\instruction|output\(7) & (!\instruction|output\(6) & \CU|current_state.decode~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction|output\(5),
	datab => \instruction|output\(7),
	datac => \instruction|output\(6),
	datad => \CU|current_state.decode~q\,
	combout => \CU|current_state~19_combout\);

-- Location: LCCOMB_X29_Y35_N4
\CU|current_state.ldaa_load_mar~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|current_state.ldaa_load_mar~feeder_combout\ = \CU|current_state~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CU|current_state~19_combout\,
	combout => \CU|current_state.ldaa_load_mar~feeder_combout\);

-- Location: FF_X29_Y35_N5
\CU|current_state.ldaa_load_mar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|current_state.ldaa_load_mar~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.ldaa_load_mar~q\);

-- Location: FF_X35_Y33_N15
\CU|current_state.ldaa_read_mem\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CU|current_state.ldaa_load_mar~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.ldaa_read_mem~q\);

-- Location: LCCOMB_X35_Y33_N22
\CU|current_state.ldaa_load_mdri~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|current_state.ldaa_load_mdri~feeder_combout\ = \CU|current_state.ldaa_read_mem~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|current_state.ldaa_read_mem~q\,
	combout => \CU|current_state.ldaa_load_mdri~feeder_combout\);

-- Location: FF_X35_Y33_N23
\CU|current_state.ldaa_load_mdri\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|current_state.ldaa_load_mdri~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.ldaa_load_mdri~q\);

-- Location: LCCOMB_X35_Y33_N2
\CU|WideOr19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|WideOr19~0_combout\ = (\CU|current_state.adaa_load_mdri~q\) # ((\CU|current_state.load_mdri~q\) # (\CU|current_state.ldaa_load_mdri~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.adaa_load_mdri~q\,
	datab => \CU|current_state.load_mdri~q\,
	datad => \CU|current_state.ldaa_load_mdri~q\,
	combout => \CU|WideOr19~0_combout\);

-- Location: LCCOMB_X35_Y33_N28
\CU|ToMdriLoad\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|ToMdriLoad~combout\ = (GLOBAL(\CU|current_state.staa_write_mem~clkctrl_outclk\) & (\CU|ToMdriLoad~combout\)) # (!GLOBAL(\CU|current_state.staa_write_mem~clkctrl_outclk\) & ((\CU|WideOr19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ToMdriLoad~combout\,
	datab => \CU|WideOr19~0_combout\,
	datad => \CU|current_state.staa_write_mem~clkctrl_outclk\,
	combout => \CU|ToMdriLoad~combout\);

-- Location: FF_X35_Y33_N25
\MemoryDataInput|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemoryDataInput|output[0]~feeder_combout\,
	ena => \CU|ToMdriLoad~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryDataInput|output\(0));

-- Location: FF_X30_Y35_N25
\instruction|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataInput|output\(0),
	sload => VCC,
	ena => \CU|ToIrLoad~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction|output\(0));

-- Location: LCCOMB_X29_Y35_N16
\CU|ToMarMux\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|ToMarMux~combout\ = (GLOBAL(\CU|current_state.staa_write_mem~clkctrl_outclk\) & ((\CU|ToMarMux~combout\))) # (!GLOBAL(\CU|current_state.staa_write_mem~clkctrl_outclk\) & (!\CU|current_state.load_mar~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.load_mar~q\,
	datab => \CU|ToMarMux~combout\,
	datad => \CU|current_state.staa_write_mem~clkctrl_outclk\,
	combout => \CU|ToMarMux~combout\);

-- Location: LCCOMB_X29_Y35_N20
\MARmux|output[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MARmux|output[0]~0_combout\ = (\CU|ToMarMux~combout\ & (\PC|counter\(0))) # (!\CU|ToMarMux~combout\ & ((\instruction|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|counter\(0),
	datac => \instruction|output\(0),
	datad => \CU|ToMarMux~combout\,
	combout => \MARmux|output[0]~0_combout\);

-- Location: LCCOMB_X29_Y35_N12
\CU|WideOr17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|WideOr17~0_combout\ = (\CU|current_state.adaa_load_mar~q\) # ((\CU|current_state.ldaa_load_mar~q\) # (!\CU|current_state.load_mar~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|current_state.adaa_load_mar~q\,
	datac => \CU|current_state.ldaa_load_mar~q\,
	datad => \CU|current_state.load_mar~q\,
	combout => \CU|WideOr17~0_combout\);

-- Location: LCCOMB_X29_Y35_N18
\CU|ToMarLoad\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|ToMarLoad~combout\ = (GLOBAL(\CU|current_state.staa_write_mem~clkctrl_outclk\) & ((\CU|ToMarLoad~combout\))) # (!GLOBAL(\CU|current_state.staa_write_mem~clkctrl_outclk\) & (\CU|WideOr17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr17~0_combout\,
	datac => \CU|ToMarLoad~combout\,
	datad => \CU|current_state.staa_write_mem~clkctrl_outclk\,
	combout => \CU|ToMarLoad~combout\);

-- Location: FF_X29_Y35_N21
\MemoryAccess|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MARmux|output[0]~0_combout\,
	ena => \CU|ToMarLoad~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryAccess|output\(0));

-- Location: LCCOMB_X29_Y33_N24
\memory|Z~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~18_combout\ = (\MemoryAccess|output\(4)) # (\MemoryAccess|output\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemoryAccess|output\(4),
	datad => \MemoryAccess|output\(3),
	combout => \memory|Z~18_combout\);

-- Location: LCCOMB_X29_Y33_N10
\memory|Z~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~19_combout\ = (\memory|Z~18_combout\ & (\MemoryAccess|output\(0) & (\MemoryAccess|output\(2) $ (!\MemoryAccess|output\(1))))) # (!\memory|Z~18_combout\ & (\MemoryAccess|output\(2) & ((\MemoryAccess|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(2),
	datab => \MemoryAccess|output\(0),
	datac => \memory|Z~18_combout\,
	datad => \MemoryAccess|output\(1),
	combout => \memory|Z~19_combout\);

-- Location: FF_X29_Y33_N11
\memory|Data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Data_out\(4));

-- Location: FF_X35_Y33_N13
\MemoryDataInput|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory|Data_out\(4),
	sload => VCC,
	ena => \CU|ToMdriLoad~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryDataInput|output\(4));

-- Location: LCCOMB_X30_Y35_N0
\instruction|output[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instruction|output[4]~feeder_combout\ = \MemoryDataInput|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataInput|output\(4),
	combout => \instruction|output[4]~feeder_combout\);

-- Location: FF_X30_Y35_N1
\instruction|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instruction|output[4]~feeder_combout\,
	ena => \CU|ToIrLoad~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction|output\(4));

-- Location: LCCOMB_X29_Y35_N28
\MARmux|output[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MARmux|output[4]~4_combout\ = (\CU|ToMarMux~combout\ & (\PC|counter\(4))) # (!\CU|ToMarMux~combout\ & ((\instruction|output\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|counter\(4),
	datac => \instruction|output\(4),
	datad => \CU|ToMarMux~combout\,
	combout => \MARmux|output[4]~4_combout\);

-- Location: FF_X29_Y35_N29
\MemoryAccess|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MARmux|output[4]~4_combout\,
	ena => \CU|ToMarLoad~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryAccess|output\(4));

-- Location: LCCOMB_X29_Y33_N4
\memory|Z~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~14_combout\ = (\MemoryAccess|output\(4)) # ((\MemoryAccess|output\(3) & \MemoryAccess|output\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \MemoryAccess|output\(4),
	datad => \MemoryAccess|output\(0),
	combout => \memory|Z~14_combout\);

-- Location: LCCOMB_X29_Y33_N20
\memory|Z~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~15_combout\ = (\MemoryAccess|output\(1) & (!\MemoryAccess|output\(2))) # (!\MemoryAccess|output\(1) & ((\memory|Z~14_combout\ & (!\MemoryAccess|output\(2) & !\MemoryAccess|output\(0))) # (!\memory|Z~14_combout\ & ((\MemoryAccess|output\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(2),
	datab => \MemoryAccess|output\(1),
	datac => \memory|Z~14_combout\,
	datad => \MemoryAccess|output\(0),
	combout => \memory|Z~15_combout\);

-- Location: FF_X29_Y33_N21
\memory|Data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Data_out\(1));

-- Location: FF_X35_Y33_N21
\MemoryDataInput|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory|Data_out\(1),
	sload => VCC,
	ena => \CU|ToMdriLoad~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryDataInput|output\(1));

-- Location: LCCOMB_X30_Y35_N18
\instruction|output[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instruction|output[1]~feeder_combout\ = \MemoryDataInput|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataInput|output\(1),
	combout => \instruction|output[1]~feeder_combout\);

-- Location: FF_X30_Y35_N19
\instruction|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instruction|output[1]~feeder_combout\,
	ena => \CU|ToIrLoad~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction|output\(1));

-- Location: LCCOMB_X29_Y35_N6
\MARmux|output[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MARmux|output[1]~1_combout\ = (\CU|ToMarMux~combout\ & ((\PC|counter\(1)))) # (!\CU|ToMarMux~combout\ & (\instruction|output\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction|output\(1),
	datac => \PC|counter\(1),
	datad => \CU|ToMarMux~combout\,
	combout => \MARmux|output[1]~1_combout\);

-- Location: FF_X29_Y35_N7
\MemoryAccess|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MARmux|output[1]~1_combout\,
	ena => \CU|ToMarLoad~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryAccess|output\(1));

-- Location: LCCOMB_X29_Y33_N26
\memory|Z~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~16_combout\ = (\MemoryAccess|output\(3) & ((\MemoryAccess|output\(1)) # (!\MemoryAccess|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datac => \MemoryAccess|output\(1),
	datad => \MemoryAccess|output\(0),
	combout => \memory|Z~16_combout\);

-- Location: LCCOMB_X29_Y33_N14
\memory|Z~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~17_combout\ = (\MemoryAccess|output\(2) & (((\MemoryAccess|output\(1))))) # (!\MemoryAccess|output\(2) & ((\MemoryAccess|output\(4) & ((!\MemoryAccess|output\(1)))) # (!\MemoryAccess|output\(4) & (!\memory|Z~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~16_combout\,
	datab => \MemoryAccess|output\(1),
	datac => \MemoryAccess|output\(4),
	datad => \MemoryAccess|output\(2),
	combout => \memory|Z~17_combout\);

-- Location: FF_X29_Y33_N15
\memory|Data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Data_out\(2));

-- Location: FF_X35_Y33_N3
\MemoryDataInput|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory|Data_out\(2),
	sload => VCC,
	ena => \CU|ToMdriLoad~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryDataInput|output\(2));

-- Location: LCCOMB_X30_Y35_N8
\instruction|output[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instruction|output[2]~feeder_combout\ = \MemoryDataInput|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataInput|output\(2),
	combout => \instruction|output[2]~feeder_combout\);

-- Location: FF_X30_Y35_N9
\instruction|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instruction|output[2]~feeder_combout\,
	ena => \CU|ToIrLoad~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction|output\(2));

-- Location: LCCOMB_X29_Y35_N24
\MARmux|output[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MARmux|output[2]~2_combout\ = (\CU|ToMarMux~combout\ & (\PC|counter\(2))) # (!\CU|ToMarMux~combout\ & ((\instruction|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|counter\(2),
	datac => \instruction|output\(2),
	datad => \CU|ToMarMux~combout\,
	combout => \MARmux|output[2]~2_combout\);

-- Location: FF_X29_Y35_N25
\MemoryAccess|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MARmux|output[2]~2_combout\,
	ena => \CU|ToMarLoad~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryAccess|output\(2));

-- Location: LCCOMB_X29_Y33_N8
\memory|Z~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~25_combout\ = (\MemoryAccess|output\(4) & (((!\MemoryAccess|output\(2))))) # (!\MemoryAccess|output\(4) & ((\MemoryAccess|output\(3) & (\MemoryAccess|output\(1) & !\MemoryAccess|output\(2))) # (!\MemoryAccess|output\(3) & 
-- (!\MemoryAccess|output\(1) & \MemoryAccess|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \MemoryAccess|output\(1),
	datac => \MemoryAccess|output\(4),
	datad => \MemoryAccess|output\(2),
	combout => \memory|Z~25_combout\);

-- Location: LCCOMB_X29_Y33_N28
\memory|Z~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~26_combout\ = (\MemoryAccess|output\(2) & (!\MemoryAccess|output\(1) & ((\memory|Z~25_combout\) # (!\MemoryAccess|output\(0))))) # (!\MemoryAccess|output\(2) & (\memory|Z~25_combout\ & ((\MemoryAccess|output\(1)) # (!\MemoryAccess|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(2),
	datab => \MemoryAccess|output\(1),
	datac => \memory|Z~25_combout\,
	datad => \MemoryAccess|output\(0),
	combout => \memory|Z~26_combout\);

-- Location: FF_X29_Y33_N29
\memory|Data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Data_out\(3));

-- Location: LCCOMB_X35_Y33_N26
\MemoryDataInput|output[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryDataInput|output[3]~feeder_combout\ = \memory|Data_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory|Data_out\(3),
	combout => \MemoryDataInput|output[3]~feeder_combout\);

-- Location: FF_X35_Y33_N27
\MemoryDataInput|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemoryDataInput|output[3]~feeder_combout\,
	ena => \CU|ToMdriLoad~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryDataInput|output\(3));

-- Location: LCCOMB_X30_Y35_N6
\instruction|output[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instruction|output[3]~feeder_combout\ = \MemoryDataInput|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataInput|output\(3),
	combout => \instruction|output[3]~feeder_combout\);

-- Location: FF_X30_Y35_N7
\instruction|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instruction|output[3]~feeder_combout\,
	ena => \CU|ToIrLoad~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction|output\(3));

-- Location: LCCOMB_X29_Y35_N30
\MARmux|output[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MARmux|output[3]~3_combout\ = (\CU|ToMarMux~combout\ & ((\PC|counter\(3)))) # (!\CU|ToMarMux~combout\ & (\instruction|output\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction|output\(3),
	datac => \PC|counter\(3),
	datad => \CU|ToMarMux~combout\,
	combout => \MARmux|output[3]~3_combout\);

-- Location: FF_X29_Y35_N31
\MemoryAccess|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MARmux|output[3]~3_combout\,
	ena => \CU|ToMarLoad~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryAccess|output\(3));

-- Location: LCCOMB_X29_Y33_N6
\memory|Z~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~20_combout\ = (\MemoryAccess|output\(1) & ((\MemoryAccess|output\(4)) # (!\MemoryAccess|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \MemoryAccess|output\(4),
	datac => \MemoryAccess|output\(1),
	combout => \memory|Z~20_combout\);

-- Location: LCCOMB_X29_Y33_N16
\memory|Z~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~21_combout\ = (\memory|Z~20_combout\ & (\MemoryAccess|output\(4) & (\MemoryAccess|output\(0) $ (\MemoryAccess|output\(2))))) # (!\memory|Z~20_combout\ & ((\MemoryAccess|output\(0) & ((!\MemoryAccess|output\(2)))) # (!\MemoryAccess|output\(0) & 
-- ((\MemoryAccess|output\(4)) # (\MemoryAccess|output\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~20_combout\,
	datab => \MemoryAccess|output\(0),
	datac => \MemoryAccess|output\(4),
	datad => \MemoryAccess|output\(2),
	combout => \memory|Z~21_combout\);

-- Location: FF_X29_Y33_N17
\memory|Data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Data_out\(5));

-- Location: FF_X35_Y33_N29
\MemoryDataInput|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory|Data_out\(5),
	sload => VCC,
	ena => \CU|ToMdriLoad~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryDataInput|output\(5));

-- Location: LCCOMB_X30_Y35_N30
\instruction|output[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instruction|output[5]~feeder_combout\ = \MemoryDataInput|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataInput|output\(5),
	combout => \instruction|output[5]~feeder_combout\);

-- Location: FF_X30_Y35_N31
\instruction|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instruction|output[5]~feeder_combout\,
	ena => \CU|ToIrLoad~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction|output\(5));

-- Location: LCCOMB_X30_Y35_N28
\CU|current_state~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|current_state~18_combout\ = (!\instruction|output\(5) & (!\instruction|output\(7) & (\instruction|output\(6) & \CU|current_state.decode~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction|output\(5),
	datab => \instruction|output\(7),
	datac => \instruction|output\(6),
	datad => \CU|current_state.decode~q\,
	combout => \CU|current_state~18_combout\);

-- Location: FF_X30_Y35_N29
\CU|current_state.staa_load_mdro\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|current_state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.staa_load_mdro~q\);

-- Location: LCCOMB_X39_Y35_N0
\CU|current_state.staa_write_mem~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|current_state.staa_write_mem~feeder_combout\ = \CU|current_state.staa_load_mdro~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|current_state.staa_load_mdro~q\,
	combout => \CU|current_state.staa_write_mem~feeder_combout\);

-- Location: FF_X39_Y35_N1
\CU|current_state.staa_write_mem\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|current_state.staa_write_mem~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.staa_write_mem~q\);

-- Location: FF_X35_Y33_N5
\CU|current_state.adaa_store_load_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CU|current_state.adaa_load_mdri~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.adaa_store_load_a~q\);

-- Location: FF_X35_Y33_N7
\CU|current_state.ldaa_load_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CU|current_state.ldaa_load_mdri~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.ldaa_load_a~q\);

-- Location: LCCOMB_X35_Y33_N30
\CU|Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|Selector16~0_combout\ = (\CU|current_state.staa_write_mem~q\) # ((\CU|current_state.adaa_store_load_a~q\) # (\CU|current_state.ldaa_load_a~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.staa_write_mem~q\,
	datab => \CU|current_state.adaa_store_load_a~q\,
	datad => \CU|current_state.ldaa_load_a~q\,
	combout => \CU|Selector16~0_combout\);

-- Location: LCCOMB_X34_Y33_N22
\CU|current_state.increment_pc~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|current_state.increment_pc~feeder_combout\ = \CU|Selector16~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|Selector16~0_combout\,
	combout => \CU|current_state.increment_pc~feeder_combout\);

-- Location: FF_X34_Y33_N23
\CU|current_state.increment_pc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|current_state.increment_pc~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.increment_pc~q\);

-- Location: LCCOMB_X34_Y33_N6
\CU|ToPcIncrement\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|ToPcIncrement~combout\ = (GLOBAL(\CU|current_state.staa_write_mem~clkctrl_outclk\) & (\CU|ToPcIncrement~combout\)) # (!GLOBAL(\CU|current_state.staa_write_mem~clkctrl_outclk\) & ((\CU|current_state.increment_pc~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ToPcIncrement~combout\,
	datab => \CU|current_state.increment_pc~q\,
	datad => \CU|current_state.staa_write_mem~clkctrl_outclk\,
	combout => \CU|ToPcIncrement~combout\);

-- Location: LCCOMB_X34_Y33_N24
\PC|counter[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|counter[0]~7_combout\ = \PC|counter\(0) $ (\CU|ToPcIncrement~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC|counter\(0),
	datad => \CU|ToPcIncrement~combout\,
	combout => \PC|counter[0]~7_combout\);

-- Location: FF_X34_Y33_N25
\PC|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC|counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|counter\(0));

-- Location: LCCOMB_X34_Y33_N16
\PC|counter[5]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|counter[5]~16_combout\ = (\PC|counter\(5) & (\PC|counter[4]~15\ $ (GND))) # (!\PC|counter\(5) & (!\PC|counter[4]~15\ & VCC))
-- \PC|counter[5]~17\ = CARRY((\PC|counter\(5) & !\PC|counter[4]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|counter\(5),
	datad => VCC,
	cin => \PC|counter[4]~15\,
	combout => \PC|counter[5]~16_combout\,
	cout => \PC|counter[5]~17\);

-- Location: FF_X34_Y33_N17
\PC|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC|counter[5]~16_combout\,
	ena => \CU|ToPcIncrement~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|counter\(5));

-- Location: LCCOMB_X34_Y33_N18
\PC|counter[6]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|counter[6]~18_combout\ = (\PC|counter\(6) & (!\PC|counter[5]~17\)) # (!\PC|counter\(6) & ((\PC|counter[5]~17\) # (GND)))
-- \PC|counter[6]~19\ = CARRY((!\PC|counter[5]~17\) # (!\PC|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|counter\(6),
	datad => VCC,
	cin => \PC|counter[5]~17\,
	combout => \PC|counter[6]~18_combout\,
	cout => \PC|counter[6]~19\);

-- Location: FF_X34_Y33_N19
\PC|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC|counter[6]~18_combout\,
	ena => \CU|ToPcIncrement~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|counter\(6));

-- Location: LCCOMB_X34_Y33_N20
\PC|counter[7]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|counter[7]~20_combout\ = \PC|counter[6]~19\ $ (!\PC|counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PC|counter\(7),
	cin => \PC|counter[6]~19\,
	combout => \PC|counter[7]~20_combout\);

-- Location: FF_X34_Y33_N21
\PC|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC|counter[7]~20_combout\,
	ena => \CU|ToPcIncrement~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|counter\(7));

-- Location: LCCOMB_X36_Y33_N12
\accumulator|output[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \accumulator|output[0]~feeder_combout\ = \ArithmeticLogicUnit|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ArithmeticLogicUnit|Add0~2_combout\,
	combout => \accumulator|output[0]~feeder_combout\);

-- Location: LCCOMB_X35_Y33_N20
\CU|ToALoad~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|ToALoad~0_combout\ = (\CU|current_state.adaa_store_load_a~q\) # (\CU|current_state.ldaa_load_a~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|current_state.adaa_store_load_a~q\,
	datad => \CU|current_state.ldaa_load_a~q\,
	combout => \CU|ToALoad~0_combout\);

-- Location: FF_X36_Y33_N13
\accumulator|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \accumulator|output[0]~feeder_combout\,
	ena => \CU|ToALoad~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulator|output\(0));

-- Location: LCCOMB_X35_Y33_N4
\ArithmeticLogicUnit|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Add0~0_combout\ = (\MemoryDataInput|output\(0) & (\accumulator|output\(0) $ (VCC))) # (!\MemoryDataInput|output\(0) & (\accumulator|output\(0) & VCC))
-- \ArithmeticLogicUnit|Add0~1\ = CARRY((\MemoryDataInput|output\(0) & \accumulator|output\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryDataInput|output\(0),
	datab => \accumulator|output\(0),
	datad => VCC,
	combout => \ArithmeticLogicUnit|Add0~0_combout\,
	cout => \ArithmeticLogicUnit|Add0~1\);

-- Location: LCCOMB_X36_Y33_N14
\ArithmeticLogicUnit|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Add0~2_combout\ = (\CU|current_state.ldaa_load_a~q\ & ((\MemoryDataInput|output\(0)))) # (!\CU|current_state.ldaa_load_a~q\ & (\ArithmeticLogicUnit|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.ldaa_load_a~q\,
	datab => \ArithmeticLogicUnit|Add0~0_combout\,
	datad => \MemoryDataInput|output\(0),
	combout => \ArithmeticLogicUnit|Add0~2_combout\);

-- Location: FF_X36_Y33_N5
\MemoryDataOuput|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ArithmeticLogicUnit|Add0~2_combout\,
	sload => VCC,
	ena => \CU|current_state.staa_load_mdro~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryDataOuput|output\(0));

-- Location: LCCOMB_X36_Y33_N6
\accumulator|output[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \accumulator|output[1]~feeder_combout\ = \ArithmeticLogicUnit|Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ArithmeticLogicUnit|Add0~5_combout\,
	combout => \accumulator|output[1]~feeder_combout\);

-- Location: FF_X36_Y33_N7
\accumulator|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \accumulator|output[1]~feeder_combout\,
	ena => \CU|ToALoad~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulator|output\(1));

-- Location: LCCOMB_X35_Y33_N6
\ArithmeticLogicUnit|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Add0~3_combout\ = (\accumulator|output\(1) & ((\MemoryDataInput|output\(1) & (\ArithmeticLogicUnit|Add0~1\ & VCC)) # (!\MemoryDataInput|output\(1) & (!\ArithmeticLogicUnit|Add0~1\)))) # (!\accumulator|output\(1) & 
-- ((\MemoryDataInput|output\(1) & (!\ArithmeticLogicUnit|Add0~1\)) # (!\MemoryDataInput|output\(1) & ((\ArithmeticLogicUnit|Add0~1\) # (GND)))))
-- \ArithmeticLogicUnit|Add0~4\ = CARRY((\accumulator|output\(1) & (!\MemoryDataInput|output\(1) & !\ArithmeticLogicUnit|Add0~1\)) # (!\accumulator|output\(1) & ((!\ArithmeticLogicUnit|Add0~1\) # (!\MemoryDataInput|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \accumulator|output\(1),
	datab => \MemoryDataInput|output\(1),
	datad => VCC,
	cin => \ArithmeticLogicUnit|Add0~1\,
	combout => \ArithmeticLogicUnit|Add0~3_combout\,
	cout => \ArithmeticLogicUnit|Add0~4\);

-- Location: LCCOMB_X36_Y33_N28
\ArithmeticLogicUnit|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Add0~5_combout\ = (\CU|current_state.ldaa_load_a~q\ & (\MemoryDataInput|output\(1))) # (!\CU|current_state.ldaa_load_a~q\ & ((\ArithmeticLogicUnit|Add0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.ldaa_load_a~q\,
	datab => \MemoryDataInput|output\(1),
	datad => \ArithmeticLogicUnit|Add0~3_combout\,
	combout => \ArithmeticLogicUnit|Add0~5_combout\);

-- Location: FF_X36_Y33_N31
\MemoryDataOuput|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ArithmeticLogicUnit|Add0~5_combout\,
	sload => VCC,
	ena => \CU|current_state.staa_load_mdro~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryDataOuput|output\(1));

-- Location: LCCOMB_X36_Y33_N20
\accumulator|output[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \accumulator|output[2]~feeder_combout\ = \ArithmeticLogicUnit|Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ArithmeticLogicUnit|Add0~8_combout\,
	combout => \accumulator|output[2]~feeder_combout\);

-- Location: FF_X36_Y33_N21
\accumulator|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \accumulator|output[2]~feeder_combout\,
	ena => \CU|ToALoad~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulator|output\(2));

-- Location: LCCOMB_X35_Y33_N8
\ArithmeticLogicUnit|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Add0~6_combout\ = ((\accumulator|output\(2) $ (\MemoryDataInput|output\(2) $ (!\ArithmeticLogicUnit|Add0~4\)))) # (GND)
-- \ArithmeticLogicUnit|Add0~7\ = CARRY((\accumulator|output\(2) & ((\MemoryDataInput|output\(2)) # (!\ArithmeticLogicUnit|Add0~4\))) # (!\accumulator|output\(2) & (\MemoryDataInput|output\(2) & !\ArithmeticLogicUnit|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \accumulator|output\(2),
	datab => \MemoryDataInput|output\(2),
	datad => VCC,
	cin => \ArithmeticLogicUnit|Add0~4\,
	combout => \ArithmeticLogicUnit|Add0~6_combout\,
	cout => \ArithmeticLogicUnit|Add0~7\);

-- Location: LCCOMB_X36_Y33_N16
\ArithmeticLogicUnit|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Add0~8_combout\ = (\CU|current_state.ldaa_load_a~q\ & (\MemoryDataInput|output\(2))) # (!\CU|current_state.ldaa_load_a~q\ & ((\ArithmeticLogicUnit|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryDataInput|output\(2),
	datab => \CU|current_state.ldaa_load_a~q\,
	datad => \ArithmeticLogicUnit|Add0~6_combout\,
	combout => \ArithmeticLogicUnit|Add0~8_combout\);

-- Location: FF_X36_Y33_N9
\MemoryDataOuput|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ArithmeticLogicUnit|Add0~8_combout\,
	sload => VCC,
	ena => \CU|current_state.staa_load_mdro~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryDataOuput|output\(2));

-- Location: LCCOMB_X36_Y33_N18
\accumulator|output[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \accumulator|output[3]~feeder_combout\ = \ArithmeticLogicUnit|Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ArithmeticLogicUnit|Add0~11_combout\,
	combout => \accumulator|output[3]~feeder_combout\);

-- Location: FF_X36_Y33_N19
\accumulator|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \accumulator|output[3]~feeder_combout\,
	ena => \CU|ToALoad~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulator|output\(3));

-- Location: LCCOMB_X35_Y33_N10
\ArithmeticLogicUnit|Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Add0~9_combout\ = (\MemoryDataInput|output\(3) & ((\accumulator|output\(3) & (\ArithmeticLogicUnit|Add0~7\ & VCC)) # (!\accumulator|output\(3) & (!\ArithmeticLogicUnit|Add0~7\)))) # (!\MemoryDataInput|output\(3) & 
-- ((\accumulator|output\(3) & (!\ArithmeticLogicUnit|Add0~7\)) # (!\accumulator|output\(3) & ((\ArithmeticLogicUnit|Add0~7\) # (GND)))))
-- \ArithmeticLogicUnit|Add0~10\ = CARRY((\MemoryDataInput|output\(3) & (!\accumulator|output\(3) & !\ArithmeticLogicUnit|Add0~7\)) # (!\MemoryDataInput|output\(3) & ((!\ArithmeticLogicUnit|Add0~7\) # (!\accumulator|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryDataInput|output\(3),
	datab => \accumulator|output\(3),
	datad => VCC,
	cin => \ArithmeticLogicUnit|Add0~7\,
	combout => \ArithmeticLogicUnit|Add0~9_combout\,
	cout => \ArithmeticLogicUnit|Add0~10\);

-- Location: LCCOMB_X36_Y33_N30
\ArithmeticLogicUnit|Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Add0~11_combout\ = (\CU|current_state.ldaa_load_a~q\ & (\MemoryDataInput|output\(3))) # (!\CU|current_state.ldaa_load_a~q\ & ((\ArithmeticLogicUnit|Add0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryDataInput|output\(3),
	datab => \CU|current_state.ldaa_load_a~q\,
	datad => \ArithmeticLogicUnit|Add0~9_combout\,
	combout => \ArithmeticLogicUnit|Add0~11_combout\);

-- Location: FF_X36_Y33_N23
\MemoryDataOuput|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ArithmeticLogicUnit|Add0~11_combout\,
	sload => VCC,
	ena => \CU|current_state.staa_load_mdro~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryDataOuput|output\(3));

-- Location: LCCOMB_X36_Y33_N0
\accumulator|output[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \accumulator|output[4]~feeder_combout\ = \ArithmeticLogicUnit|Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ArithmeticLogicUnit|Add0~14_combout\,
	combout => \accumulator|output[4]~feeder_combout\);

-- Location: FF_X36_Y33_N1
\accumulator|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \accumulator|output[4]~feeder_combout\,
	ena => \CU|ToALoad~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulator|output\(4));

-- Location: LCCOMB_X35_Y33_N12
\ArithmeticLogicUnit|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Add0~12_combout\ = ((\MemoryDataInput|output\(4) $ (\accumulator|output\(4) $ (!\ArithmeticLogicUnit|Add0~10\)))) # (GND)
-- \ArithmeticLogicUnit|Add0~13\ = CARRY((\MemoryDataInput|output\(4) & ((\accumulator|output\(4)) # (!\ArithmeticLogicUnit|Add0~10\))) # (!\MemoryDataInput|output\(4) & (\accumulator|output\(4) & !\ArithmeticLogicUnit|Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryDataInput|output\(4),
	datab => \accumulator|output\(4),
	datad => VCC,
	cin => \ArithmeticLogicUnit|Add0~10\,
	combout => \ArithmeticLogicUnit|Add0~12_combout\,
	cout => \ArithmeticLogicUnit|Add0~13\);

-- Location: LCCOMB_X36_Y33_N8
\ArithmeticLogicUnit|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Add0~14_combout\ = (\CU|current_state.ldaa_load_a~q\ & (\MemoryDataInput|output\(4))) # (!\CU|current_state.ldaa_load_a~q\ & ((\ArithmeticLogicUnit|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryDataInput|output\(4),
	datab => \CU|current_state.ldaa_load_a~q\,
	datad => \ArithmeticLogicUnit|Add0~12_combout\,
	combout => \ArithmeticLogicUnit|Add0~14_combout\);

-- Location: FF_X36_Y33_N17
\MemoryDataOuput|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ArithmeticLogicUnit|Add0~14_combout\,
	sload => VCC,
	ena => \CU|current_state.staa_load_mdro~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryDataOuput|output\(4));

-- Location: LCCOMB_X36_Y33_N2
\accumulator|output[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \accumulator|output[5]~feeder_combout\ = \ArithmeticLogicUnit|Add0~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ArithmeticLogicUnit|Add0~17_combout\,
	combout => \accumulator|output[5]~feeder_combout\);

-- Location: FF_X36_Y33_N3
\accumulator|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \accumulator|output[5]~feeder_combout\,
	ena => \CU|ToALoad~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulator|output\(5));

-- Location: LCCOMB_X35_Y33_N14
\ArithmeticLogicUnit|Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Add0~15_combout\ = (\accumulator|output\(5) & ((\MemoryDataInput|output\(5) & (\ArithmeticLogicUnit|Add0~13\ & VCC)) # (!\MemoryDataInput|output\(5) & (!\ArithmeticLogicUnit|Add0~13\)))) # (!\accumulator|output\(5) & 
-- ((\MemoryDataInput|output\(5) & (!\ArithmeticLogicUnit|Add0~13\)) # (!\MemoryDataInput|output\(5) & ((\ArithmeticLogicUnit|Add0~13\) # (GND)))))
-- \ArithmeticLogicUnit|Add0~16\ = CARRY((\accumulator|output\(5) & (!\MemoryDataInput|output\(5) & !\ArithmeticLogicUnit|Add0~13\)) # (!\accumulator|output\(5) & ((!\ArithmeticLogicUnit|Add0~13\) # (!\MemoryDataInput|output\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \accumulator|output\(5),
	datab => \MemoryDataInput|output\(5),
	datad => VCC,
	cin => \ArithmeticLogicUnit|Add0~13\,
	combout => \ArithmeticLogicUnit|Add0~15_combout\,
	cout => \ArithmeticLogicUnit|Add0~16\);

-- Location: LCCOMB_X36_Y33_N4
\ArithmeticLogicUnit|Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Add0~17_combout\ = (\CU|current_state.ldaa_load_a~q\ & (\MemoryDataInput|output\(5))) # (!\CU|current_state.ldaa_load_a~q\ & ((\ArithmeticLogicUnit|Add0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryDataInput|output\(5),
	datab => \CU|current_state.ldaa_load_a~q\,
	datad => \ArithmeticLogicUnit|Add0~15_combout\,
	combout => \ArithmeticLogicUnit|Add0~17_combout\);

-- Location: FF_X36_Y33_N27
\MemoryDataOuput|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ArithmeticLogicUnit|Add0~17_combout\,
	sload => VCC,
	ena => \CU|current_state.staa_load_mdro~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryDataOuput|output\(5));

-- Location: LCCOMB_X36_Y33_N24
\accumulator|output[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \accumulator|output[6]~feeder_combout\ = \ArithmeticLogicUnit|Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ArithmeticLogicUnit|Add0~20_combout\,
	combout => \accumulator|output[6]~feeder_combout\);

-- Location: FF_X36_Y33_N25
\accumulator|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \accumulator|output[6]~feeder_combout\,
	ena => \CU|ToALoad~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulator|output\(6));

-- Location: LCCOMB_X35_Y33_N16
\ArithmeticLogicUnit|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Add0~18_combout\ = ((\MemoryDataInput|output\(6) $ (\accumulator|output\(6) $ (!\ArithmeticLogicUnit|Add0~16\)))) # (GND)
-- \ArithmeticLogicUnit|Add0~19\ = CARRY((\MemoryDataInput|output\(6) & ((\accumulator|output\(6)) # (!\ArithmeticLogicUnit|Add0~16\))) # (!\MemoryDataInput|output\(6) & (\accumulator|output\(6) & !\ArithmeticLogicUnit|Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryDataInput|output\(6),
	datab => \accumulator|output\(6),
	datad => VCC,
	cin => \ArithmeticLogicUnit|Add0~16\,
	combout => \ArithmeticLogicUnit|Add0~18_combout\,
	cout => \ArithmeticLogicUnit|Add0~19\);

-- Location: LCCOMB_X36_Y33_N22
\ArithmeticLogicUnit|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Add0~20_combout\ = (\CU|current_state.ldaa_load_a~q\ & (\MemoryDataInput|output\(6))) # (!\CU|current_state.ldaa_load_a~q\ & ((\ArithmeticLogicUnit|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.ldaa_load_a~q\,
	datab => \MemoryDataInput|output\(6),
	datad => \ArithmeticLogicUnit|Add0~18_combout\,
	combout => \ArithmeticLogicUnit|Add0~20_combout\);

-- Location: FF_X36_Y33_N29
\MemoryDataOuput|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ArithmeticLogicUnit|Add0~20_combout\,
	sload => VCC,
	ena => \CU|current_state.staa_load_mdro~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryDataOuput|output\(6));

-- Location: LCCOMB_X36_Y33_N10
\accumulator|output[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \accumulator|output[7]~feeder_combout\ = \ArithmeticLogicUnit|Add0~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ArithmeticLogicUnit|Add0~23_combout\,
	combout => \accumulator|output[7]~feeder_combout\);

-- Location: FF_X36_Y33_N11
\accumulator|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \accumulator|output[7]~feeder_combout\,
	ena => \CU|ToALoad~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulator|output\(7));

-- Location: LCCOMB_X35_Y33_N18
\ArithmeticLogicUnit|Add0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Add0~21_combout\ = \MemoryDataInput|output\(7) $ (\ArithmeticLogicUnit|Add0~19\ $ (\accumulator|output\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MemoryDataInput|output\(7),
	datad => \accumulator|output\(7),
	cin => \ArithmeticLogicUnit|Add0~19\,
	combout => \ArithmeticLogicUnit|Add0~21_combout\);

-- Location: LCCOMB_X36_Y33_N26
\ArithmeticLogicUnit|Add0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Add0~23_combout\ = (\CU|current_state.ldaa_load_a~q\ & (\MemoryDataInput|output\(7))) # (!\CU|current_state.ldaa_load_a~q\ & ((\ArithmeticLogicUnit|Add0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryDataInput|output\(7),
	datab => \CU|current_state.ldaa_load_a~q\,
	datad => \ArithmeticLogicUnit|Add0~21_combout\,
	combout => \ArithmeticLogicUnit|Add0~23_combout\);

-- Location: FF_X36_Y33_N15
\MemoryDataOuput|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ArithmeticLogicUnit|Add0~23_combout\,
	sload => VCC,
	ena => \CU|current_state.staa_load_mdro~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryDataOuput|output\(7));

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_pcOut(0) <= \pcOut[0]~output_o\;

ww_pcOut(1) <= \pcOut[1]~output_o\;

ww_pcOut(2) <= \pcOut[2]~output_o\;

ww_pcOut(3) <= \pcOut[3]~output_o\;

ww_pcOut(4) <= \pcOut[4]~output_o\;

ww_pcOut(5) <= \pcOut[5]~output_o\;

ww_pcOut(6) <= \pcOut[6]~output_o\;

ww_pcOut(7) <= \pcOut[7]~output_o\;

ww_marOut(0) <= \marOut[0]~output_o\;

ww_marOut(1) <= \marOut[1]~output_o\;

ww_marOut(2) <= \marOut[2]~output_o\;

ww_marOut(3) <= \marOut[3]~output_o\;

ww_marOut(4) <= \marOut[4]~output_o\;

ww_marOut(5) <= \marOut[5]~output_o\;

ww_marOut(6) <= \marOut[6]~output_o\;

ww_marOut(7) <= \marOut[7]~output_o\;

ww_irOutput(0) <= \irOutput[0]~output_o\;

ww_irOutput(1) <= \irOutput[1]~output_o\;

ww_irOutput(2) <= \irOutput[2]~output_o\;

ww_irOutput(3) <= \irOutput[3]~output_o\;

ww_irOutput(4) <= \irOutput[4]~output_o\;

ww_irOutput(5) <= \irOutput[5]~output_o\;

ww_irOutput(6) <= \irOutput[6]~output_o\;

ww_irOutput(7) <= \irOutput[7]~output_o\;

ww_mdriOutput(0) <= \mdriOutput[0]~output_o\;

ww_mdriOutput(1) <= \mdriOutput[1]~output_o\;

ww_mdriOutput(2) <= \mdriOutput[2]~output_o\;

ww_mdriOutput(3) <= \mdriOutput[3]~output_o\;

ww_mdriOutput(4) <= \mdriOutput[4]~output_o\;

ww_mdriOutput(5) <= \mdriOutput[5]~output_o\;

ww_mdriOutput(6) <= \mdriOutput[6]~output_o\;

ww_mdriOutput(7) <= \mdriOutput[7]~output_o\;

ww_mdroOutput(0) <= \mdroOutput[0]~output_o\;

ww_mdroOutput(1) <= \mdroOutput[1]~output_o\;

ww_mdroOutput(2) <= \mdroOutput[2]~output_o\;

ww_mdroOutput(3) <= \mdroOutput[3]~output_o\;

ww_mdroOutput(4) <= \mdroOutput[4]~output_o\;

ww_mdroOutput(5) <= \mdroOutput[5]~output_o\;

ww_mdroOutput(6) <= \mdroOutput[6]~output_o\;

ww_mdroOutput(7) <= \mdroOutput[7]~output_o\;

ww_aOut(0) <= \aOut[0]~output_o\;

ww_aOut(1) <= \aOut[1]~output_o\;

ww_aOut(2) <= \aOut[2]~output_o\;

ww_aOut(3) <= \aOut[3]~output_o\;

ww_aOut(4) <= \aOut[4]~output_o\;

ww_aOut(5) <= \aOut[5]~output_o\;

ww_aOut(6) <= \aOut[6]~output_o\;

ww_aOut(7) <= \aOut[7]~output_o\;

ww_incrementOut <= \incrementOut~output_o\;
END structure;


