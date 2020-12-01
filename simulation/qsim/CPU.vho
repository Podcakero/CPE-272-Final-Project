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

-- DATE "11/30/2020 20:04:31"

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
	incrementOut : BUFFER std_logic;
	test : BUFFER std_logic
	);
END CPU;

-- Design Ports Information
-- pcOut[0]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcOut[1]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcOut[2]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcOut[3]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcOut[4]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcOut[5]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcOut[6]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcOut[7]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[2]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[3]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[4]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[5]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[6]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[7]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[1]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[2]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[3]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[4]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[5]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[6]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[7]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[0]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[1]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[2]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[3]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[4]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[5]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[6]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[7]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[1]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[2]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[3]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[4]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[5]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[6]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[7]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[0]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[1]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[2]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[3]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[4]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[5]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[6]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[7]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- incrementOut	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_test : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
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
SIGNAL \test~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \accumulator|output[1]~11\ : std_logic;
SIGNAL \accumulator|output[2]~12_combout\ : std_logic;
SIGNAL \CU|current_state.load_mar~0_combout\ : std_logic;
SIGNAL \CU|current_state.load_mar~q\ : std_logic;
SIGNAL \CU|current_state.read_mem~0_combout\ : std_logic;
SIGNAL \CU|current_state.read_mem~q\ : std_logic;
SIGNAL \CU|current_state.load_mdri~feeder_combout\ : std_logic;
SIGNAL \CU|current_state.load_mdri~q\ : std_logic;
SIGNAL \CU|current_state.load_ir~feeder_combout\ : std_logic;
SIGNAL \CU|current_state.load_ir~q\ : std_logic;
SIGNAL \instruction|output[2]~feeder_combout\ : std_logic;
SIGNAL \PC|counter[1]~8_combout\ : std_logic;
SIGNAL \PC|counter[1]~9\ : std_logic;
SIGNAL \PC|counter[2]~10_combout\ : std_logic;
SIGNAL \accumulator|output[3]~15\ : std_logic;
SIGNAL \accumulator|output[4]~16_combout\ : std_logic;
SIGNAL \CU|ToALoad~0_combout\ : std_logic;
SIGNAL \accumulator|output[4]~17\ : std_logic;
SIGNAL \accumulator|output[5]~18_combout\ : std_logic;
SIGNAL \accumulator|output[5]~19\ : std_logic;
SIGNAL \accumulator|output[6]~20_combout\ : std_logic;
SIGNAL \MemoryDataOuput|output[6]~feeder_combout\ : std_logic;
SIGNAL \memory|Z~567_combout\ : std_logic;
SIGNAL \CU|current_state.staa_write_mem~feeder_combout\ : std_logic;
SIGNAL \CU|current_state.staa_write_mem~q\ : std_logic;
SIGNAL \instruction|output[0]~feeder_combout\ : std_logic;
SIGNAL \MARmux|output[0]~0_combout\ : std_logic;
SIGNAL \CU|WideOr15~combout\ : std_logic;
SIGNAL \memory|Z~468_combout\ : std_logic;
SIGNAL \memory|Z~469_combout\ : std_logic;
SIGNAL \memory|Z~268_q\ : std_logic;
SIGNAL \memory|Z~462_combout\ : std_logic;
SIGNAL \memory|Z~463_combout\ : std_logic;
SIGNAL \memory|Z~236_q\ : std_logic;
SIGNAL \memory|Z~566_combout\ : std_logic;
SIGNAL \memory|Z~464_combout\ : std_logic;
SIGNAL \memory|Z~465_combout\ : std_logic;
SIGNAL \memory|Z~204_q\ : std_logic;
SIGNAL \memory|Z~466_combout\ : std_logic;
SIGNAL \memory|Z~467_combout\ : std_logic;
SIGNAL \memory|Z~172_q\ : std_logic;
SIGNAL \memory|Z~403_combout\ : std_logic;
SIGNAL \memory|Z~404_combout\ : std_logic;
SIGNAL \memory|Z~444_combout\ : std_logic;
SIGNAL \memory|Z~445_combout\ : std_logic;
SIGNAL \memory|Z~260_q\ : std_logic;
SIGNAL \memory|Z~438_combout\ : std_logic;
SIGNAL \memory|Z~439_combout\ : std_logic;
SIGNAL \memory|Z~196_q\ : std_logic;
SIGNAL \memory|Z~228feeder_combout\ : std_logic;
SIGNAL \memory|Z~440_combout\ : std_logic;
SIGNAL \memory|Z~441_combout\ : std_logic;
SIGNAL \memory|Z~228_q\ : std_logic;
SIGNAL \memory|Z~442_combout\ : std_logic;
SIGNAL \memory|Z~443_combout\ : std_logic;
SIGNAL \memory|Z~164_q\ : std_logic;
SIGNAL \memory|Z~396_combout\ : std_logic;
SIGNAL \memory|Z~397_combout\ : std_logic;
SIGNAL \memory|Z~220feeder_combout\ : std_logic;
SIGNAL \memory|Z~446_combout\ : std_logic;
SIGNAL \memory|Z~447_combout\ : std_logic;
SIGNAL \memory|Z~220_q\ : std_logic;
SIGNAL \memory|Z~452_combout\ : std_logic;
SIGNAL \memory|Z~453_combout\ : std_logic;
SIGNAL \memory|Z~252_q\ : std_logic;
SIGNAL \memory|Z~188feeder_combout\ : std_logic;
SIGNAL \memory|Z~448_combout\ : std_logic;
SIGNAL \memory|Z~449_combout\ : std_logic;
SIGNAL \memory|Z~188_q\ : std_logic;
SIGNAL \memory|Z~450_combout\ : std_logic;
SIGNAL \memory|Z~451_combout\ : std_logic;
SIGNAL \memory|Z~156_q\ : std_logic;
SIGNAL \memory|Z~398_combout\ : std_logic;
SIGNAL \memory|Z~399_combout\ : std_logic;
SIGNAL \memory|Z~454_combout\ : std_logic;
SIGNAL \memory|Z~455_combout\ : std_logic;
SIGNAL \memory|Z~180_q\ : std_logic;
SIGNAL \memory|Z~460_combout\ : std_logic;
SIGNAL \memory|Z~461_combout\ : std_logic;
SIGNAL \memory|Z~244_q\ : std_logic;
SIGNAL \memory|Z~212feeder_combout\ : std_logic;
SIGNAL \memory|Z~456_combout\ : std_logic;
SIGNAL \memory|Z~457_combout\ : std_logic;
SIGNAL \memory|Z~212_q\ : std_logic;
SIGNAL \memory|Z~458_combout\ : std_logic;
SIGNAL \memory|Z~459_combout\ : std_logic;
SIGNAL \memory|Z~148_q\ : std_logic;
SIGNAL \memory|Z~400_combout\ : std_logic;
SIGNAL \memory|Z~401_combout\ : std_logic;
SIGNAL \memory|Z~402_combout\ : std_logic;
SIGNAL \memory|Z~405_combout\ : std_logic;
SIGNAL \memory|Z~108feeder_combout\ : std_logic;
SIGNAL \memory|Z~473_combout\ : std_logic;
SIGNAL \memory|Z~108_q\ : std_logic;
SIGNAL \memory|Z~470_combout\ : std_logic;
SIGNAL \memory|Z~100_q\ : std_logic;
SIGNAL \memory|Z~471_combout\ : std_logic;
SIGNAL \memory|Z~92_q\ : std_logic;
SIGNAL \memory|Z~472_combout\ : std_logic;
SIGNAL \memory|Z~84_q\ : std_logic;
SIGNAL \memory|Z~406_combout\ : std_logic;
SIGNAL \memory|Z~407_combout\ : std_logic;
SIGNAL \memory|Z~570_combout\ : std_logic;
SIGNAL \memory|Z~485_combout\ : std_logic;
SIGNAL \memory|Z~140_q\ : std_logic;
SIGNAL \memory|Z~482_combout\ : std_logic;
SIGNAL \memory|Z~124_q\ : std_logic;
SIGNAL \memory|Z~484_combout\ : std_logic;
SIGNAL \memory|Z~116_q\ : std_logic;
SIGNAL \memory|Z~483_combout\ : std_logic;
SIGNAL \memory|Z~132_q\ : std_logic;
SIGNAL \memory|Z~413_combout\ : std_logic;
SIGNAL \memory|Z~414_combout\ : std_logic;
SIGNAL \memory|Z~568_combout\ : std_logic;
SIGNAL \memory|Z~477_combout\ : std_logic;
SIGNAL \memory|Z~76_q\ : std_logic;
SIGNAL \memory|Z~474_combout\ : std_logic;
SIGNAL \memory|Z~60_q\ : std_logic;
SIGNAL \memory|Z~68feeder_combout\ : std_logic;
SIGNAL \memory|Z~475_combout\ : std_logic;
SIGNAL \memory|Z~68_q\ : std_logic;
SIGNAL \memory|Z~476_combout\ : std_logic;
SIGNAL \memory|Z~52_q\ : std_logic;
SIGNAL \memory|Z~408_combout\ : std_logic;
SIGNAL \memory|Z~409_combout\ : std_logic;
SIGNAL \memory|Z~569_combout\ : std_logic;
SIGNAL \memory|Z~478_combout\ : std_logic;
SIGNAL \memory|Z~36_q\ : std_logic;
SIGNAL \memory|Z~481_combout\ : std_logic;
SIGNAL \memory|Z~44_q\ : std_logic;
SIGNAL \memory|Z~28feeder_combout\ : std_logic;
SIGNAL \memory|Z~479_combout\ : std_logic;
SIGNAL \memory|Z~28_q\ : std_logic;
SIGNAL \memory|Z~480_combout\ : std_logic;
SIGNAL \memory|Z~20_q\ : std_logic;
SIGNAL \memory|Z~410_combout\ : std_logic;
SIGNAL \memory|Z~411_combout\ : std_logic;
SIGNAL \memory|Z~412_combout\ : std_logic;
SIGNAL \memory|Z~415_combout\ : std_logic;
SIGNAL \memory|Z~416_combout\ : std_logic;
SIGNAL \MemoryDataInput|output[6]~feeder_combout\ : std_logic;
SIGNAL \CU|WideOr16~0_combout\ : std_logic;
SIGNAL \instruction|output[6]~feeder_combout\ : std_logic;
SIGNAL \CU|current_state~20_combout\ : std_logic;
SIGNAL \CU|current_state.staa_load_mdro~q\ : std_logic;
SIGNAL \CU|WideOr14~0_combout\ : std_logic;
SIGNAL \MARmux|output[2]~2_combout\ : std_logic;
SIGNAL \accumulator|output[6]~21\ : std_logic;
SIGNAL \accumulator|output[7]~22_combout\ : std_logic;
SIGNAL \MemoryDataOuput|output[7]~feeder_combout\ : std_logic;
SIGNAL \memory|Z~77feeder_combout\ : std_logic;
SIGNAL \memory|Z~77_q\ : std_logic;
SIGNAL \memory|Z~69_q\ : std_logic;
SIGNAL \memory|Z~61feeder_combout\ : std_logic;
SIGNAL \memory|Z~61_q\ : std_logic;
SIGNAL \memory|Z~53_q\ : std_logic;
SIGNAL \memory|Z~427_combout\ : std_logic;
SIGNAL \memory|Z~428_combout\ : std_logic;
SIGNAL \memory|Z~583_combout\ : std_logic;
SIGNAL \memory|Z~93_q\ : std_logic;
SIGNAL \memory|Z~585_combout\ : std_logic;
SIGNAL \memory|Z~109_q\ : std_logic;
SIGNAL \memory|Z~584_combout\ : std_logic;
SIGNAL \memory|Z~101_q\ : std_logic;
SIGNAL \memory|Z~85_q\ : std_logic;
SIGNAL \memory|Z~429_combout\ : std_logic;
SIGNAL \memory|Z~430_combout\ : std_logic;
SIGNAL \memory|Z~45feeder_combout\ : std_logic;
SIGNAL \memory|Z~45_q\ : std_logic;
SIGNAL \memory|Z~29feeder_combout\ : std_logic;
SIGNAL \memory|Z~29_q\ : std_logic;
SIGNAL \memory|Z~21_q\ : std_logic;
SIGNAL \memory|Z~37feeder_combout\ : std_logic;
SIGNAL \memory|Z~37_q\ : std_logic;
SIGNAL \memory|Z~431_combout\ : std_logic;
SIGNAL \memory|Z~432_combout\ : std_logic;
SIGNAL \memory|Z~433_combout\ : std_logic;
SIGNAL \memory|Z~586_combout\ : std_logic;
SIGNAL \memory|Z~133_q\ : std_logic;
SIGNAL \memory|Z~141_q\ : std_logic;
SIGNAL \memory|Z~587_combout\ : std_logic;
SIGNAL \memory|Z~117_q\ : std_logic;
SIGNAL \memory|Z~125_q\ : std_logic;
SIGNAL \memory|Z~434_combout\ : std_logic;
SIGNAL \memory|Z~435_combout\ : std_logic;
SIGNAL \memory|Z~436_combout\ : std_logic;
SIGNAL \memory|Z~253feeder_combout\ : std_logic;
SIGNAL \memory|Z~253_q\ : std_logic;
SIGNAL \memory|Z~189_q\ : std_logic;
SIGNAL \memory|Z~571_combout\ : std_logic;
SIGNAL \memory|Z~221_q\ : std_logic;
SIGNAL \memory|Z~572_combout\ : std_logic;
SIGNAL \memory|Z~157_q\ : std_logic;
SIGNAL \memory|Z~417_combout\ : std_logic;
SIGNAL \memory|Z~418_combout\ : std_logic;
SIGNAL \memory|Z~269feeder_combout\ : std_logic;
SIGNAL \memory|Z~269_q\ : std_logic;
SIGNAL \memory|Z~205feeder_combout\ : std_logic;
SIGNAL \memory|Z~205_q\ : std_logic;
SIGNAL \memory|Z~581_combout\ : std_logic;
SIGNAL \memory|Z~237_q\ : std_logic;
SIGNAL \memory|Z~582_combout\ : std_logic;
SIGNAL \memory|Z~173_q\ : std_logic;
SIGNAL \memory|Z~424_combout\ : std_logic;
SIGNAL \memory|Z~425_combout\ : std_logic;
SIGNAL \memory|Z~573_combout\ : std_logic;
SIGNAL \memory|Z~229_q\ : std_logic;
SIGNAL \memory|Z~576_combout\ : std_logic;
SIGNAL \memory|Z~261_q\ : std_logic;
SIGNAL \memory|Z~575_combout\ : std_logic;
SIGNAL \memory|Z~165_q\ : std_logic;
SIGNAL \memory|Z~574_combout\ : std_logic;
SIGNAL \memory|Z~197_q\ : std_logic;
SIGNAL \memory|Z~419_combout\ : std_logic;
SIGNAL \memory|Z~420_combout\ : std_logic;
SIGNAL \memory|Z~580_combout\ : std_logic;
SIGNAL \memory|Z~245_q\ : std_logic;
SIGNAL \memory|Z~577_combout\ : std_logic;
SIGNAL \memory|Z~213_q\ : std_logic;
SIGNAL \memory|Z~578_combout\ : std_logic;
SIGNAL \memory|Z~181_q\ : std_logic;
SIGNAL \memory|Z~579_combout\ : std_logic;
SIGNAL \memory|Z~149_q\ : std_logic;
SIGNAL \memory|Z~421_combout\ : std_logic;
SIGNAL \memory|Z~422_combout\ : std_logic;
SIGNAL \memory|Z~423_combout\ : std_logic;
SIGNAL \memory|Z~426_combout\ : std_logic;
SIGNAL \memory|Z~437_combout\ : std_logic;
SIGNAL \MemoryDataInput|output[7]~feeder_combout\ : std_logic;
SIGNAL \instruction|output[7]~feeder_combout\ : std_logic;
SIGNAL \CU|Selector4~0_combout\ : std_logic;
SIGNAL \CU|Selector4~1_combout\ : std_logic;
SIGNAL \CU|current_state.decode~q\ : std_logic;
SIGNAL \CU|current_state~18_combout\ : std_logic;
SIGNAL \CU|current_state.ldaa_load_mar~q\ : std_logic;
SIGNAL \CU|current_state.ldaa_read_mem~feeder_combout\ : std_logic;
SIGNAL \CU|current_state.ldaa_read_mem~q\ : std_logic;
SIGNAL \CU|current_state.ldaa_load_mdri~feeder_combout\ : std_logic;
SIGNAL \CU|current_state.ldaa_load_mdri~q\ : std_logic;
SIGNAL \CU|current_state.ldaa_load_a~feeder_combout\ : std_logic;
SIGNAL \CU|current_state.ldaa_load_a~q\ : std_logic;
SIGNAL \MemoryDataOuput|output[2]~feeder_combout\ : std_logic;
SIGNAL \memory|Z~519_combout\ : std_logic;
SIGNAL \memory|Z~264_q\ : std_logic;
SIGNAL \memory|Z~232_q\ : std_logic;
SIGNAL \memory|Z~168_q\ : std_logic;
SIGNAL \memory|Z~518_combout\ : std_logic;
SIGNAL \memory|Z~200_q\ : std_logic;
SIGNAL \memory|Z~319_combout\ : std_logic;
SIGNAL \memory|Z~320_combout\ : std_logic;
SIGNAL \memory|Z~512_combout\ : std_logic;
SIGNAL \memory|Z~192_q\ : std_logic;
SIGNAL \memory|Z~513_combout\ : std_logic;
SIGNAL \memory|Z~256_q\ : std_logic;
SIGNAL \memory|Z~224_q\ : std_logic;
SIGNAL \memory|Z~160_q\ : std_logic;
SIGNAL \memory|Z~312_combout\ : std_logic;
SIGNAL \memory|Z~313_combout\ : std_logic;
SIGNAL \memory|Z~176feeder_combout\ : std_logic;
SIGNAL \memory|Z~176_q\ : std_logic;
SIGNAL \memory|Z~240_q\ : std_logic;
SIGNAL \memory|Z~517_combout\ : std_logic;
SIGNAL \memory|Z~144_q\ : std_logic;
SIGNAL \memory|Z~516_combout\ : std_logic;
SIGNAL \memory|Z~208_q\ : std_logic;
SIGNAL \memory|Z~316_combout\ : std_logic;
SIGNAL \memory|Z~317_combout\ : std_logic;
SIGNAL \memory|Z~514_combout\ : std_logic;
SIGNAL \memory|Z~216feeder_combout\ : std_logic;
SIGNAL \memory|Z~216_q\ : std_logic;
SIGNAL \memory|Z~248_q\ : std_logic;
SIGNAL \memory|Z~515_combout\ : std_logic;
SIGNAL \memory|Z~152_q\ : std_logic;
SIGNAL \memory|Z~184_q\ : std_logic;
SIGNAL \memory|Z~314_combout\ : std_logic;
SIGNAL \memory|Z~315_combout\ : std_logic;
SIGNAL \memory|Z~318_combout\ : std_logic;
SIGNAL \memory|Z~321_combout\ : std_logic;
SIGNAL \memory|Z~104_q\ : std_logic;
SIGNAL \memory|Z~96_q\ : std_logic;
SIGNAL \memory|Z~520_combout\ : std_logic;
SIGNAL \memory|Z~88_q\ : std_logic;
SIGNAL \memory|Z~80_q\ : std_logic;
SIGNAL \memory|Z~322_combout\ : std_logic;
SIGNAL \memory|Z~323_combout\ : std_logic;
SIGNAL \memory|Z~56feeder_combout\ : std_logic;
SIGNAL \memory|Z~56_q\ : std_logic;
SIGNAL \memory|Z~522_combout\ : std_logic;
SIGNAL \memory|Z~72_q\ : std_logic;
SIGNAL \memory|Z~521_combout\ : std_logic;
SIGNAL \memory|Z~64_q\ : std_logic;
SIGNAL \memory|Z~48_q\ : std_logic;
SIGNAL \memory|Z~324_combout\ : std_logic;
SIGNAL \memory|Z~325_combout\ : std_logic;
SIGNAL \memory|Z~523_combout\ : std_logic;
SIGNAL \memory|Z~32_q\ : std_logic;
SIGNAL \memory|Z~526_combout\ : std_logic;
SIGNAL \memory|Z~40_q\ : std_logic;
SIGNAL \memory|Z~525_combout\ : std_logic;
SIGNAL \memory|Z~16_q\ : std_logic;
SIGNAL \memory|Z~524_combout\ : std_logic;
SIGNAL \memory|Z~24_q\ : std_logic;
SIGNAL \memory|Z~326_combout\ : std_logic;
SIGNAL \memory|Z~327_combout\ : std_logic;
SIGNAL \memory|Z~328_combout\ : std_logic;
SIGNAL \memory|Z~528_combout\ : std_logic;
SIGNAL \memory|Z~136_q\ : std_logic;
SIGNAL \memory|Z~120_q\ : std_logic;
SIGNAL \memory|Z~527_combout\ : std_logic;
SIGNAL \memory|Z~128_q\ : std_logic;
SIGNAL \memory|Z~112_q\ : std_logic;
SIGNAL \memory|Z~329_combout\ : std_logic;
SIGNAL \memory|Z~330_combout\ : std_logic;
SIGNAL \memory|Z~331_combout\ : std_logic;
SIGNAL \memory|Z~332_combout\ : std_logic;
SIGNAL \MemoryDataInput|output[2]~feeder_combout\ : std_logic;
SIGNAL \accumulator|output[2]~13\ : std_logic;
SIGNAL \accumulator|output[3]~14_combout\ : std_logic;
SIGNAL \MemoryDataOuput|output[3]~feeder_combout\ : std_logic;
SIGNAL \memory|Z~73feeder_combout\ : std_logic;
SIGNAL \memory|Z~73_q\ : std_logic;
SIGNAL \memory|Z~65_q\ : std_logic;
SIGNAL \memory|Z~538_combout\ : std_logic;
SIGNAL \memory|Z~49_q\ : std_logic;
SIGNAL \memory|Z~537_combout\ : std_logic;
SIGNAL \memory|Z~57_q\ : std_logic;
SIGNAL \memory|Z~343_combout\ : std_logic;
SIGNAL \memory|Z~344_combout\ : std_logic;
SIGNAL \memory|Z~129_q\ : std_logic;
SIGNAL \memory|Z~137_q\ : std_logic;
SIGNAL \memory|Z~541_combout\ : std_logic;
SIGNAL \memory|Z~113_q\ : std_logic;
SIGNAL \memory|Z~121_q\ : std_logic;
SIGNAL \memory|Z~350_combout\ : std_logic;
SIGNAL \memory|Z~351_combout\ : std_logic;
SIGNAL \memory|Z~25feeder_combout\ : std_logic;
SIGNAL \memory|Z~25_q\ : std_logic;
SIGNAL \memory|Z~41_q\ : std_logic;
SIGNAL \memory|Z~33feeder_combout\ : std_logic;
SIGNAL \memory|Z~33_q\ : std_logic;
SIGNAL \memory|Z~17_q\ : std_logic;
SIGNAL \memory|Z~347_combout\ : std_logic;
SIGNAL \memory|Z~348_combout\ : std_logic;
SIGNAL \memory|Z~540_combout\ : std_logic;
SIGNAL \memory|Z~105_q\ : std_logic;
SIGNAL \memory|Z~89_q\ : std_logic;
SIGNAL \memory|Z~539_combout\ : std_logic;
SIGNAL \memory|Z~97_q\ : std_logic;
SIGNAL \memory|Z~81_q\ : std_logic;
SIGNAL \memory|Z~345_combout\ : std_logic;
SIGNAL \memory|Z~346_combout\ : std_logic;
SIGNAL \memory|Z~349_combout\ : std_logic;
SIGNAL \memory|Z~352_combout\ : std_logic;
SIGNAL \memory|Z~201feeder_combout\ : std_logic;
SIGNAL \memory|Z~201_q\ : std_logic;
SIGNAL \memory|Z~265feeder_combout\ : std_logic;
SIGNAL \memory|Z~265_q\ : std_logic;
SIGNAL \memory|Z~535_combout\ : std_logic;
SIGNAL \memory|Z~233_q\ : std_logic;
SIGNAL \memory|Z~536_combout\ : std_logic;
SIGNAL \memory|Z~169feeder_combout\ : std_logic;
SIGNAL \memory|Z~169_q\ : std_logic;
SIGNAL \memory|Z~340_combout\ : std_logic;
SIGNAL \memory|Z~341_combout\ : std_logic;
SIGNAL \memory|Z~185feeder_combout\ : std_logic;
SIGNAL \memory|Z~185_q\ : std_logic;
SIGNAL \memory|Z~249_q\ : std_logic;
SIGNAL \memory|Z~217feeder_combout\ : std_logic;
SIGNAL \memory|Z~217_q\ : std_logic;
SIGNAL \memory|Z~153_q\ : std_logic;
SIGNAL \memory|Z~333_combout\ : std_logic;
SIGNAL \memory|Z~334_combout\ : std_logic;
SIGNAL \memory|Z~531_combout\ : std_logic;
SIGNAL \memory|Z~209_q\ : std_logic;
SIGNAL \memory|Z~534_combout\ : std_logic;
SIGNAL \memory|Z~241_q\ : std_logic;
SIGNAL \memory|Z~532_combout\ : std_logic;
SIGNAL \memory|Z~177_q\ : std_logic;
SIGNAL \memory|Z~533_combout\ : std_logic;
SIGNAL \memory|Z~145_q\ : std_logic;
SIGNAL \memory|Z~337_combout\ : std_logic;
SIGNAL \memory|Z~338_combout\ : std_logic;
SIGNAL \memory|Z~529_combout\ : std_logic;
SIGNAL \memory|Z~225_q\ : std_logic;
SIGNAL \memory|Z~257_q\ : std_logic;
SIGNAL \memory|Z~530_combout\ : std_logic;
SIGNAL \memory|Z~161_q\ : std_logic;
SIGNAL \memory|Z~193_q\ : std_logic;
SIGNAL \memory|Z~335_combout\ : std_logic;
SIGNAL \memory|Z~336_combout\ : std_logic;
SIGNAL \memory|Z~339_combout\ : std_logic;
SIGNAL \memory|Z~342_combout\ : std_logic;
SIGNAL \memory|Z~353_combout\ : std_logic;
SIGNAL \MemoryDataInput|output[3]~feeder_combout\ : std_logic;
SIGNAL \instruction|output[3]~feeder_combout\ : std_logic;
SIGNAL \PC|counter[2]~11\ : std_logic;
SIGNAL \PC|counter[3]~12_combout\ : std_logic;
SIGNAL \MARmux|output[3]~3_combout\ : std_logic;
SIGNAL \accumulator|output[0]~8_combout\ : std_logic;
SIGNAL \MemoryDataOuput|output[0]~feeder_combout\ : std_logic;
SIGNAL \memory|Z~491_combout\ : std_logic;
SIGNAL \memory|Z~262_q\ : std_logic;
SIGNAL \memory|Z~230_q\ : std_logic;
SIGNAL \memory|Z~166_q\ : std_logic;
SIGNAL \memory|Z~490_combout\ : std_logic;
SIGNAL \memory|Z~198_q\ : std_logic;
SIGNAL \memory|Z~277_combout\ : std_logic;
SIGNAL \memory|Z~278_combout\ : std_logic;
SIGNAL \memory|Z~486_combout\ : std_logic;
SIGNAL \memory|Z~190_q\ : std_logic;
SIGNAL \memory|Z~487_combout\ : std_logic;
SIGNAL \memory|Z~254_q\ : std_logic;
SIGNAL \memory|Z~222_q\ : std_logic;
SIGNAL \memory|Z~158_q\ : std_logic;
SIGNAL \memory|Z~270_combout\ : std_logic;
SIGNAL \memory|Z~271_combout\ : std_logic;
SIGNAL \memory|Z~489_combout\ : std_logic;
SIGNAL \memory|Z~238_q\ : std_logic;
SIGNAL \memory|Z~488_combout\ : std_logic;
SIGNAL \memory|Z~174_q\ : std_logic;
SIGNAL \memory|Z~206_q\ : std_logic;
SIGNAL \memory|Z~142_q\ : std_logic;
SIGNAL \memory|Z~274_combout\ : std_logic;
SIGNAL \memory|Z~275_combout\ : std_logic;
SIGNAL \memory|Z~214feeder_combout\ : std_logic;
SIGNAL \memory|Z~214_q\ : std_logic;
SIGNAL \memory|Z~246_q\ : std_logic;
SIGNAL \memory|Z~182feeder_combout\ : std_logic;
SIGNAL \memory|Z~182_q\ : std_logic;
SIGNAL \memory|Z~150_q\ : std_logic;
SIGNAL \memory|Z~272_combout\ : std_logic;
SIGNAL \memory|Z~273_combout\ : std_logic;
SIGNAL \memory|Z~276_combout\ : std_logic;
SIGNAL \memory|Z~279_combout\ : std_logic;
SIGNAL \memory|Z~102feeder_combout\ : std_logic;
SIGNAL \memory|Z~102_q\ : std_logic;
SIGNAL \memory|Z~94_q\ : std_logic;
SIGNAL \memory|Z~492_combout\ : std_logic;
SIGNAL \memory|Z~78_q\ : std_logic;
SIGNAL \memory|Z~86_q\ : std_logic;
SIGNAL \memory|Z~280_combout\ : std_logic;
SIGNAL \memory|Z~281_combout\ : std_logic;
SIGNAL \memory|Z~493_combout\ : std_logic;
SIGNAL \memory|Z~70_q\ : std_logic;
SIGNAL \memory|Z~54_q\ : std_logic;
SIGNAL \memory|Z~62feeder_combout\ : std_logic;
SIGNAL \memory|Z~62_q\ : std_logic;
SIGNAL \memory|Z~46_q\ : std_logic;
SIGNAL \memory|Z~282_combout\ : std_logic;
SIGNAL \memory|Z~283_combout\ : std_logic;
SIGNAL \memory|Z~494_combout\ : std_logic;
SIGNAL \memory|Z~30_q\ : std_logic;
SIGNAL \memory|Z~496_combout\ : std_logic;
SIGNAL \memory|Z~38_q\ : std_logic;
SIGNAL \memory|Z~495_combout\ : std_logic;
SIGNAL \memory|Z~14_q\ : std_logic;
SIGNAL \memory|Z~22_q\ : std_logic;
SIGNAL \memory|Z~284_combout\ : std_logic;
SIGNAL \memory|Z~285_combout\ : std_logic;
SIGNAL \memory|Z~286_combout\ : std_logic;
SIGNAL \memory|Z~499_combout\ : std_logic;
SIGNAL \memory|Z~134_q\ : std_logic;
SIGNAL \memory|Z~118_q\ : std_logic;
SIGNAL \memory|Z~498_combout\ : std_logic;
SIGNAL \memory|Z~110_q\ : std_logic;
SIGNAL \memory|Z~497_combout\ : std_logic;
SIGNAL \memory|Z~126_q\ : std_logic;
SIGNAL \memory|Z~287_combout\ : std_logic;
SIGNAL \memory|Z~288_combout\ : std_logic;
SIGNAL \memory|Z~289_combout\ : std_logic;
SIGNAL \memory|Z~290_combout\ : std_logic;
SIGNAL \MemoryDataInput|output[0]~feeder_combout\ : std_logic;
SIGNAL \accumulator|output[0]~9\ : std_logic;
SIGNAL \accumulator|output[1]~10_combout\ : std_logic;
SIGNAL \MemoryDataOuput|output[1]~feeder_combout\ : std_logic;
SIGNAL \memory|Z~263_q\ : std_logic;
SIGNAL \memory|Z~199_q\ : std_logic;
SIGNAL \memory|Z~505_combout\ : std_logic;
SIGNAL \memory|Z~167_q\ : std_logic;
SIGNAL \memory|Z~504_combout\ : std_logic;
SIGNAL \memory|Z~231_q\ : std_logic;
SIGNAL \memory|Z~298_combout\ : std_logic;
SIGNAL \memory|Z~299_combout\ : std_logic;
SIGNAL \memory|Z~247feeder_combout\ : std_logic;
SIGNAL \memory|Z~247_q\ : std_logic;
SIGNAL \memory|Z~183feeder_combout\ : std_logic;
SIGNAL \memory|Z~183_q\ : std_logic;
SIGNAL \memory|Z~215feeder_combout\ : std_logic;
SIGNAL \memory|Z~215_q\ : std_logic;
SIGNAL \memory|Z~151_q\ : std_logic;
SIGNAL \memory|Z~291_combout\ : std_logic;
SIGNAL \memory|Z~292_combout\ : std_logic;
SIGNAL \memory|Z~239feeder_combout\ : std_logic;
SIGNAL \memory|Z~239_q\ : std_logic;
SIGNAL \memory|Z~502_combout\ : std_logic;
SIGNAL \memory|Z~207_q\ : std_logic;
SIGNAL \memory|Z~175_q\ : std_logic;
SIGNAL \memory|Z~503_combout\ : std_logic;
SIGNAL \memory|Z~143_q\ : std_logic;
SIGNAL \memory|Z~295_combout\ : std_logic;
SIGNAL \memory|Z~296_combout\ : std_logic;
SIGNAL \memory|Z~500_combout\ : std_logic;
SIGNAL \memory|Z~223_q\ : std_logic;
SIGNAL \memory|Z~255_q\ : std_logic;
SIGNAL \memory|Z~501_combout\ : std_logic;
SIGNAL \memory|Z~159_q\ : std_logic;
SIGNAL \memory|Z~191_q\ : std_logic;
SIGNAL \memory|Z~293_combout\ : std_logic;
SIGNAL \memory|Z~294_combout\ : std_logic;
SIGNAL \memory|Z~297_combout\ : std_logic;
SIGNAL \memory|Z~300_combout\ : std_logic;
SIGNAL \memory|Z~127feeder_combout\ : std_logic;
SIGNAL \memory|Z~127_q\ : std_logic;
SIGNAL \memory|Z~135_q\ : std_logic;
SIGNAL \memory|Z~119feeder_combout\ : std_logic;
SIGNAL \memory|Z~119_q\ : std_logic;
SIGNAL \memory|Z~111_q\ : std_logic;
SIGNAL \memory|Z~308_combout\ : std_logic;
SIGNAL \memory|Z~309_combout\ : std_logic;
SIGNAL \memory|Z~71feeder_combout\ : std_logic;
SIGNAL \memory|Z~71_q\ : std_logic;
SIGNAL \memory|Z~63_q\ : std_logic;
SIGNAL \memory|Z~506_combout\ : std_logic;
SIGNAL \memory|Z~55_q\ : std_logic;
SIGNAL \memory|Z~47_q\ : std_logic;
SIGNAL \memory|Z~301_combout\ : std_logic;
SIGNAL \memory|Z~302_combout\ : std_logic;
SIGNAL \memory|Z~509_combout\ : std_logic;
SIGNAL \memory|Z~23_q\ : std_logic;
SIGNAL \memory|Z~511_combout\ : std_logic;
SIGNAL \memory|Z~39feeder_combout\ : std_logic;
SIGNAL \memory|Z~39_q\ : std_logic;
SIGNAL \memory|Z~510_combout\ : std_logic;
SIGNAL \memory|Z~31_q\ : std_logic;
SIGNAL \memory|Z~15_q\ : std_logic;
SIGNAL \memory|Z~305_combout\ : std_logic;
SIGNAL \memory|Z~306_combout\ : std_logic;
SIGNAL \memory|Z~508_combout\ : std_logic;
SIGNAL \memory|Z~103_q\ : std_logic;
SIGNAL \memory|Z~87_q\ : std_logic;
SIGNAL \memory|Z~507_combout\ : std_logic;
SIGNAL \memory|Z~95_q\ : std_logic;
SIGNAL \memory|Z~79_q\ : std_logic;
SIGNAL \memory|Z~303_combout\ : std_logic;
SIGNAL \memory|Z~304_combout\ : std_logic;
SIGNAL \memory|Z~307_combout\ : std_logic;
SIGNAL \memory|Z~310_combout\ : std_logic;
SIGNAL \memory|Z~311_combout\ : std_logic;
SIGNAL \MemoryDataInput|output[1]~feeder_combout\ : std_logic;
SIGNAL \instruction|output[1]~feeder_combout\ : std_logic;
SIGNAL \MARmux|output[1]~1_combout\ : std_logic;
SIGNAL \MemoryDataOuput|output[4]~feeder_combout\ : std_logic;
SIGNAL \memory|Z~106_q\ : std_logic;
SIGNAL \memory|Z~98_q\ : std_logic;
SIGNAL \memory|Z~546_combout\ : std_logic;
SIGNAL \memory|Z~90_q\ : std_logic;
SIGNAL \memory|Z~82_q\ : std_logic;
SIGNAL \memory|Z~364_combout\ : std_logic;
SIGNAL \memory|Z~365_combout\ : std_logic;
SIGNAL \memory|Z~549_combout\ : std_logic;
SIGNAL \memory|Z~138_q\ : std_logic;
SIGNAL \memory|Z~122_q\ : std_logic;
SIGNAL \memory|Z~130feeder_combout\ : std_logic;
SIGNAL \memory|Z~130_q\ : std_logic;
SIGNAL \memory|Z~114_q\ : std_logic;
SIGNAL \memory|Z~371_combout\ : std_logic;
SIGNAL \memory|Z~372_combout\ : std_logic;
SIGNAL \memory|Z~34feeder_combout\ : std_logic;
SIGNAL \memory|Z~34_q\ : std_logic;
SIGNAL \memory|Z~42_q\ : std_logic;
SIGNAL \memory|Z~26feeder_combout\ : std_logic;
SIGNAL \memory|Z~26_q\ : std_logic;
SIGNAL \memory|Z~18_q\ : std_logic;
SIGNAL \memory|Z~368_combout\ : std_logic;
SIGNAL \memory|Z~369_combout\ : std_logic;
SIGNAL \memory|Z~548_combout\ : std_logic;
SIGNAL \memory|Z~74_q\ : std_logic;
SIGNAL \memory|Z~58_q\ : std_logic;
SIGNAL \memory|Z~547_combout\ : std_logic;
SIGNAL \memory|Z~66_q\ : std_logic;
SIGNAL \memory|Z~50_q\ : std_logic;
SIGNAL \memory|Z~366_combout\ : std_logic;
SIGNAL \memory|Z~367_combout\ : std_logic;
SIGNAL \memory|Z~370_combout\ : std_logic;
SIGNAL \memory|Z~373_combout\ : std_logic;
SIGNAL \memory|Z~545_combout\ : std_logic;
SIGNAL \memory|Z~266_q\ : std_logic;
SIGNAL \memory|Z~234_q\ : std_logic;
SIGNAL \memory|Z~544_combout\ : std_logic;
SIGNAL \memory|Z~202_q\ : std_logic;
SIGNAL \memory|Z~170_q\ : std_logic;
SIGNAL \memory|Z~361_combout\ : std_logic;
SIGNAL \memory|Z~362_combout\ : std_logic;
SIGNAL \memory|Z~258_q\ : std_logic;
SIGNAL \memory|Z~194_q\ : std_logic;
SIGNAL \memory|Z~226feeder_combout\ : std_logic;
SIGNAL \memory|Z~226_q\ : std_logic;
SIGNAL \memory|Z~162_q\ : std_logic;
SIGNAL \memory|Z~354_combout\ : std_logic;
SIGNAL \memory|Z~355_combout\ : std_logic;
SIGNAL \memory|Z~542_combout\ : std_logic;
SIGNAL \memory|Z~218_q\ : std_logic;
SIGNAL \memory|Z~250_q\ : std_logic;
SIGNAL \memory|Z~543_combout\ : std_logic;
SIGNAL \memory|Z~154_q\ : std_logic;
SIGNAL \memory|Z~186_q\ : std_logic;
SIGNAL \memory|Z~356_combout\ : std_logic;
SIGNAL \memory|Z~357_combout\ : std_logic;
SIGNAL \memory|Z~178_q\ : std_logic;
SIGNAL \memory|Z~242_q\ : std_logic;
SIGNAL \memory|Z~210_q\ : std_logic;
SIGNAL \memory|Z~146_q\ : std_logic;
SIGNAL \memory|Z~358_combout\ : std_logic;
SIGNAL \memory|Z~359_combout\ : std_logic;
SIGNAL \memory|Z~360_combout\ : std_logic;
SIGNAL \memory|Z~363_combout\ : std_logic;
SIGNAL \memory|Z~374_combout\ : std_logic;
SIGNAL \MemoryDataInput|output[4]~feeder_combout\ : std_logic;
SIGNAL \instruction|output[4]~feeder_combout\ : std_logic;
SIGNAL \PC|counter[3]~13\ : std_logic;
SIGNAL \PC|counter[4]~14_combout\ : std_logic;
SIGNAL \MARmux|output[4]~4_combout\ : std_logic;
SIGNAL \MemoryDataOuput|output[5]~feeder_combout\ : std_logic;
SIGNAL \memory|Z~564_combout\ : std_logic;
SIGNAL \memory|Z~131_q\ : std_logic;
SIGNAL \memory|Z~139_q\ : std_logic;
SIGNAL \memory|Z~565_combout\ : std_logic;
SIGNAL \memory|Z~115_q\ : std_logic;
SIGNAL \memory|Z~123_q\ : std_logic;
SIGNAL \memory|Z~392_combout\ : std_logic;
SIGNAL \memory|Z~393_combout\ : std_logic;
SIGNAL \memory|Z~75feeder_combout\ : std_logic;
SIGNAL \memory|Z~75_q\ : std_logic;
SIGNAL \memory|Z~67_q\ : std_logic;
SIGNAL \memory|Z~59feeder_combout\ : std_logic;
SIGNAL \memory|Z~59_q\ : std_logic;
SIGNAL \memory|Z~560_combout\ : std_logic;
SIGNAL \memory|Z~51_q\ : std_logic;
SIGNAL \memory|Z~385_combout\ : std_logic;
SIGNAL \memory|Z~386_combout\ : std_logic;
SIGNAL \memory|Z~563_combout\ : std_logic;
SIGNAL \memory|Z~27_q\ : std_logic;
SIGNAL \memory|Z~43_q\ : std_logic;
SIGNAL \memory|Z~35feeder_combout\ : std_logic;
SIGNAL \memory|Z~35_q\ : std_logic;
SIGNAL \memory|Z~19_q\ : std_logic;
SIGNAL \memory|Z~389_combout\ : std_logic;
SIGNAL \memory|Z~390_combout\ : std_logic;
SIGNAL \memory|Z~562_combout\ : std_logic;
SIGNAL \memory|Z~107_q\ : std_logic;
SIGNAL \memory|Z~561_combout\ : std_logic;
SIGNAL \memory|Z~91_q\ : std_logic;
SIGNAL \memory|Z~99feeder_combout\ : std_logic;
SIGNAL \memory|Z~99_q\ : std_logic;
SIGNAL \memory|Z~83_q\ : std_logic;
SIGNAL \memory|Z~387_combout\ : std_logic;
SIGNAL \memory|Z~388_combout\ : std_logic;
SIGNAL \memory|Z~391_combout\ : std_logic;
SIGNAL \memory|Z~394_combout\ : std_logic;
SIGNAL \memory|Z~203feeder_combout\ : std_logic;
SIGNAL \memory|Z~203_q\ : std_logic;
SIGNAL \memory|Z~267feeder_combout\ : std_logic;
SIGNAL \memory|Z~267_q\ : std_logic;
SIGNAL \memory|Z~559_combout\ : std_logic;
SIGNAL \memory|Z~171_q\ : std_logic;
SIGNAL \memory|Z~558_combout\ : std_logic;
SIGNAL \memory|Z~235_q\ : std_logic;
SIGNAL \memory|Z~382_combout\ : std_logic;
SIGNAL \memory|Z~383_combout\ : std_logic;
SIGNAL \memory|Z~187_q\ : std_logic;
SIGNAL \memory|Z~251feeder_combout\ : std_logic;
SIGNAL \memory|Z~251_q\ : std_logic;
SIGNAL \memory|Z~550_combout\ : std_logic;
SIGNAL \memory|Z~219_q\ : std_logic;
SIGNAL \memory|Z~551_combout\ : std_logic;
SIGNAL \memory|Z~155_q\ : std_logic;
SIGNAL \memory|Z~375_combout\ : std_logic;
SIGNAL \memory|Z~376_combout\ : std_logic;
SIGNAL \memory|Z~557_combout\ : std_logic;
SIGNAL \memory|Z~243_q\ : std_logic;
SIGNAL \memory|Z~554_combout\ : std_logic;
SIGNAL \memory|Z~211_q\ : std_logic;
SIGNAL \memory|Z~555_combout\ : std_logic;
SIGNAL \memory|Z~179_q\ : std_logic;
SIGNAL \memory|Z~556_combout\ : std_logic;
SIGNAL \memory|Z~147_q\ : std_logic;
SIGNAL \memory|Z~379_combout\ : std_logic;
SIGNAL \memory|Z~380_combout\ : std_logic;
SIGNAL \memory|Z~553_combout\ : std_logic;
SIGNAL \memory|Z~259_q\ : std_logic;
SIGNAL \memory|Z~227_q\ : std_logic;
SIGNAL \memory|Z~552_combout\ : std_logic;
SIGNAL \memory|Z~195_q\ : std_logic;
SIGNAL \memory|Z~163_q\ : std_logic;
SIGNAL \memory|Z~377_combout\ : std_logic;
SIGNAL \memory|Z~378_combout\ : std_logic;
SIGNAL \memory|Z~381_combout\ : std_logic;
SIGNAL \memory|Z~384_combout\ : std_logic;
SIGNAL \memory|Z~395_combout\ : std_logic;
SIGNAL \MemoryDataInput|output[5]~feeder_combout\ : std_logic;
SIGNAL \instruction|output[5]~feeder_combout\ : std_logic;
SIGNAL \CU|current_state~19_combout\ : std_logic;
SIGNAL \CU|current_state.adaa_load_mar~q\ : std_logic;
SIGNAL \CU|current_state.adaa_read_mem~feeder_combout\ : std_logic;
SIGNAL \CU|current_state.adaa_read_mem~q\ : std_logic;
SIGNAL \CU|current_state.adaa_load_mdri~q\ : std_logic;
SIGNAL \CU|current_state.adaa_store_load_a~q\ : std_logic;
SIGNAL \CU|Selector12~0_combout\ : std_logic;
SIGNAL \CU|current_state.increment_pc~q\ : std_logic;
SIGNAL \PC|counter[0]~7_combout\ : std_logic;
SIGNAL \PC|counter[4]~15\ : std_logic;
SIGNAL \PC|counter[5]~16_combout\ : std_logic;
SIGNAL \PC|counter[5]~17\ : std_logic;
SIGNAL \PC|counter[6]~18_combout\ : std_logic;
SIGNAL \PC|counter[6]~19\ : std_logic;
SIGNAL \PC|counter[7]~20_combout\ : std_logic;
SIGNAL \PC|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \accumulator|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MemoryAccess|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MemoryDataOuput|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \instruction|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MemoryDataInput|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \memory|Data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CU|ALT_INV_WideOr14~0_combout\ : std_logic;
SIGNAL \CU|ALT_INV_current_state.staa_write_mem~q\ : std_logic;

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
test <= ww_test;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\CU|ALT_INV_WideOr14~0_combout\ <= NOT \CU|WideOr14~0_combout\;
\CU|ALT_INV_current_state.staa_write_mem~q\ <= NOT \CU|current_state.staa_write_mem~q\;
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

-- Location: IOOBUF_X24_Y39_N16
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

-- Location: IOOBUF_X24_Y39_N30
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

-- Location: IOOBUF_X0_Y35_N23
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

-- Location: IOOBUF_X0_Y35_N16
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

-- Location: IOOBUF_X0_Y35_N2
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

-- Location: IOOBUF_X22_Y39_N16
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

-- Location: IOOBUF_X20_Y39_N2
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

-- Location: IOOBUF_X24_Y39_N23
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

-- Location: IOOBUF_X36_Y39_N23
\marOut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoryAccess|output\(0),
	devoe => ww_devoe,
	o => \marOut[0]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\marOut[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoryAccess|output\(1),
	devoe => ww_devoe,
	o => \marOut[1]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\marOut[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoryAccess|output\(2),
	devoe => ww_devoe,
	o => \marOut[2]~output_o\);

-- Location: IOOBUF_X34_Y39_N16
\marOut[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoryAccess|output\(3),
	devoe => ww_devoe,
	o => \marOut[3]~output_o\);

-- Location: IOOBUF_X31_Y39_N9
\marOut[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemoryAccess|output\(4),
	devoe => ww_devoe,
	o => \marOut[4]~output_o\);

-- Location: IOOBUF_X78_Y36_N2
\marOut[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \marOut[5]~output_o\);

-- Location: IOOBUF_X78_Y23_N9
\marOut[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \marOut[6]~output_o\);

-- Location: IOOBUF_X78_Y20_N9
\marOut[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \marOut[7]~output_o\);

-- Location: IOOBUF_X29_Y39_N9
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

-- Location: IOOBUF_X46_Y54_N30
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

-- Location: IOOBUF_X34_Y39_N2
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

-- Location: IOOBUF_X34_Y0_N30
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

-- Location: IOOBUF_X26_Y39_N23
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

-- Location: IOOBUF_X26_Y0_N23
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

-- Location: IOOBUF_X26_Y39_N2
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

-- Location: IOOBUF_X26_Y39_N9
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

-- Location: IOOBUF_X46_Y54_N16
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

-- Location: IOOBUF_X22_Y39_N23
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

-- Location: IOOBUF_X20_Y39_N16
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

-- Location: IOOBUF_X20_Y39_N9
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

-- Location: IOOBUF_X24_Y39_N9
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

-- Location: IOOBUF_X78_Y35_N23
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

-- Location: IOOBUF_X24_Y39_N2
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

-- Location: IOOBUF_X31_Y39_N30
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

-- Location: IOOBUF_X78_Y33_N2
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

-- Location: IOOBUF_X36_Y39_N30
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

-- Location: IOOBUF_X31_Y39_N23
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

-- Location: IOOBUF_X34_Y39_N30
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

-- Location: IOOBUF_X31_Y39_N16
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

-- Location: IOOBUF_X31_Y39_N2
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

-- Location: IOOBUF_X34_Y39_N9
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

-- Location: IOOBUF_X0_Y34_N9
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

-- Location: IOOBUF_X29_Y0_N9
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

-- Location: IOOBUF_X31_Y0_N30
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

-- Location: IOOBUF_X0_Y34_N16
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

-- Location: IOOBUF_X26_Y39_N16
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

-- Location: IOOBUF_X29_Y39_N16
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

-- Location: IOOBUF_X0_Y34_N23
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

-- Location: IOOBUF_X29_Y39_N2
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

-- Location: IOOBUF_X22_Y39_N30
\incrementOut~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CU|current_state.increment_pc~q\,
	devoe => ww_devoe,
	o => \incrementOut~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\test~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CU|ALT_INV_WideOr14~0_combout\,
	devoe => ww_devoe,
	o => \test~output_o\);

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

-- Location: LCCOMB_X29_Y35_N10
\accumulator|output[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \accumulator|output[1]~10_combout\ = (\accumulator|output\(1) & ((\MemoryDataInput|output\(1) & (\accumulator|output[0]~9\ & VCC)) # (!\MemoryDataInput|output\(1) & (!\accumulator|output[0]~9\)))) # (!\accumulator|output\(1) & 
-- ((\MemoryDataInput|output\(1) & (!\accumulator|output[0]~9\)) # (!\MemoryDataInput|output\(1) & ((\accumulator|output[0]~9\) # (GND)))))
-- \accumulator|output[1]~11\ = CARRY((\accumulator|output\(1) & (!\MemoryDataInput|output\(1) & !\accumulator|output[0]~9\)) # (!\accumulator|output\(1) & ((!\accumulator|output[0]~9\) # (!\MemoryDataInput|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \accumulator|output\(1),
	datab => \MemoryDataInput|output\(1),
	datad => VCC,
	cin => \accumulator|output[0]~9\,
	combout => \accumulator|output[1]~10_combout\,
	cout => \accumulator|output[1]~11\);

-- Location: LCCOMB_X29_Y35_N12
\accumulator|output[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \accumulator|output[2]~12_combout\ = ((\MemoryDataInput|output\(2) $ (\accumulator|output\(2) $ (!\accumulator|output[1]~11\)))) # (GND)
-- \accumulator|output[2]~13\ = CARRY((\MemoryDataInput|output\(2) & ((\accumulator|output\(2)) # (!\accumulator|output[1]~11\))) # (!\MemoryDataInput|output\(2) & (\accumulator|output\(2) & !\accumulator|output[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryDataInput|output\(2),
	datab => \accumulator|output\(2),
	datad => VCC,
	cin => \accumulator|output[1]~11\,
	combout => \accumulator|output[2]~12_combout\,
	cout => \accumulator|output[2]~13\);

-- Location: LCCOMB_X30_Y35_N12
\CU|current_state.load_mar~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|current_state.load_mar~0_combout\ = !\CU|current_state.increment_pc~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CU|current_state.increment_pc~q\,
	combout => \CU|current_state.load_mar~0_combout\);

-- Location: FF_X30_Y35_N13
\CU|current_state.load_mar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|current_state.load_mar~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.load_mar~q\);

-- Location: LCCOMB_X30_Y35_N16
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

-- Location: FF_X30_Y35_N17
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

-- Location: LCCOMB_X30_Y35_N10
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

-- Location: FF_X30_Y35_N11
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

-- Location: LCCOMB_X30_Y35_N8
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

-- Location: FF_X30_Y35_N9
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

-- Location: LCCOMB_X27_Y35_N6
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

-- Location: FF_X27_Y35_N7
\instruction|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instruction|output[2]~feeder_combout\,
	ena => \CU|current_state.load_ir~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction|output\(2));

-- Location: LCCOMB_X24_Y35_N16
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

-- Location: FF_X24_Y35_N17
\PC|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC|counter[1]~8_combout\,
	ena => \CU|current_state.increment_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|counter\(1));

-- Location: LCCOMB_X24_Y35_N18
\PC|counter[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|counter[2]~10_combout\ = (\PC|counter\(2) & (!\PC|counter[1]~9\)) # (!\PC|counter\(2) & ((\PC|counter[1]~9\) # (GND)))
-- \PC|counter[2]~11\ = CARRY((!\PC|counter[1]~9\) # (!\PC|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|counter\(2),
	datad => VCC,
	cin => \PC|counter[1]~9\,
	combout => \PC|counter[2]~10_combout\,
	cout => \PC|counter[2]~11\);

-- Location: FF_X24_Y35_N19
\PC|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC|counter[2]~10_combout\,
	ena => \CU|current_state.increment_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|counter\(2));

-- Location: LCCOMB_X29_Y35_N14
\accumulator|output[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \accumulator|output[3]~14_combout\ = (\accumulator|output\(3) & ((\MemoryDataInput|output\(3) & (\accumulator|output[2]~13\ & VCC)) # (!\MemoryDataInput|output\(3) & (!\accumulator|output[2]~13\)))) # (!\accumulator|output\(3) & 
-- ((\MemoryDataInput|output\(3) & (!\accumulator|output[2]~13\)) # (!\MemoryDataInput|output\(3) & ((\accumulator|output[2]~13\) # (GND)))))
-- \accumulator|output[3]~15\ = CARRY((\accumulator|output\(3) & (!\MemoryDataInput|output\(3) & !\accumulator|output[2]~13\)) # (!\accumulator|output\(3) & ((!\accumulator|output[2]~13\) # (!\MemoryDataInput|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \accumulator|output\(3),
	datab => \MemoryDataInput|output\(3),
	datad => VCC,
	cin => \accumulator|output[2]~13\,
	combout => \accumulator|output[3]~14_combout\,
	cout => \accumulator|output[3]~15\);

-- Location: LCCOMB_X29_Y35_N16
\accumulator|output[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \accumulator|output[4]~16_combout\ = ((\MemoryDataInput|output\(4) $ (\accumulator|output\(4) $ (!\accumulator|output[3]~15\)))) # (GND)
-- \accumulator|output[4]~17\ = CARRY((\MemoryDataInput|output\(4) & ((\accumulator|output\(4)) # (!\accumulator|output[3]~15\))) # (!\MemoryDataInput|output\(4) & (\accumulator|output\(4) & !\accumulator|output[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryDataInput|output\(4),
	datab => \accumulator|output\(4),
	datad => VCC,
	cin => \accumulator|output[3]~15\,
	combout => \accumulator|output[4]~16_combout\,
	cout => \accumulator|output[4]~17\);

-- Location: LCCOMB_X30_Y35_N22
\CU|ToALoad~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|ToALoad~0_combout\ = (\CU|current_state.adaa_store_load_a~q\) # (\CU|current_state.ldaa_load_a~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|current_state.adaa_store_load_a~q\,
	datad => \CU|current_state.ldaa_load_a~q\,
	combout => \CU|ToALoad~0_combout\);

-- Location: FF_X29_Y35_N17
\accumulator|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \accumulator|output[4]~16_combout\,
	asdata => \MemoryDataInput|output\(4),
	sload => \CU|current_state.ldaa_load_a~q\,
	ena => \CU|ToALoad~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulator|output\(4));

-- Location: LCCOMB_X29_Y35_N18
\accumulator|output[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \accumulator|output[5]~18_combout\ = (\accumulator|output\(5) & ((\MemoryDataInput|output\(5) & (\accumulator|output[4]~17\ & VCC)) # (!\MemoryDataInput|output\(5) & (!\accumulator|output[4]~17\)))) # (!\accumulator|output\(5) & 
-- ((\MemoryDataInput|output\(5) & (!\accumulator|output[4]~17\)) # (!\MemoryDataInput|output\(5) & ((\accumulator|output[4]~17\) # (GND)))))
-- \accumulator|output[5]~19\ = CARRY((\accumulator|output\(5) & (!\MemoryDataInput|output\(5) & !\accumulator|output[4]~17\)) # (!\accumulator|output\(5) & ((!\accumulator|output[4]~17\) # (!\MemoryDataInput|output\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \accumulator|output\(5),
	datab => \MemoryDataInput|output\(5),
	datad => VCC,
	cin => \accumulator|output[4]~17\,
	combout => \accumulator|output[5]~18_combout\,
	cout => \accumulator|output[5]~19\);

-- Location: FF_X29_Y35_N19
\accumulator|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \accumulator|output[5]~18_combout\,
	asdata => \MemoryDataInput|output\(5),
	sload => \CU|current_state.ldaa_load_a~q\,
	ena => \CU|ToALoad~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulator|output\(5));

-- Location: LCCOMB_X29_Y35_N20
\accumulator|output[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \accumulator|output[6]~20_combout\ = ((\MemoryDataInput|output\(6) $ (\accumulator|output\(6) $ (!\accumulator|output[5]~19\)))) # (GND)
-- \accumulator|output[6]~21\ = CARRY((\MemoryDataInput|output\(6) & ((\accumulator|output\(6)) # (!\accumulator|output[5]~19\))) # (!\MemoryDataInput|output\(6) & (\accumulator|output\(6) & !\accumulator|output[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryDataInput|output\(6),
	datab => \accumulator|output\(6),
	datad => VCC,
	cin => \accumulator|output[5]~19\,
	combout => \accumulator|output[6]~20_combout\,
	cout => \accumulator|output[6]~21\);

-- Location: FF_X29_Y35_N21
\accumulator|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \accumulator|output[6]~20_combout\,
	asdata => \MemoryDataInput|output\(6),
	sload => \CU|current_state.ldaa_load_a~q\,
	ena => \CU|ToALoad~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulator|output\(6));

-- Location: LCCOMB_X31_Y34_N14
\MemoryDataOuput|output[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryDataOuput|output[6]~feeder_combout\ = \accumulator|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \accumulator|output\(6),
	combout => \MemoryDataOuput|output[6]~feeder_combout\);

-- Location: FF_X31_Y34_N15
\MemoryDataOuput|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemoryDataOuput|output[6]~feeder_combout\,
	ena => \CU|current_state.staa_load_mdro~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryDataOuput|output\(6));

-- Location: LCCOMB_X34_Y33_N6
\memory|Z~567\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~567_combout\ = !\MemoryDataOuput|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(6),
	combout => \memory|Z~567_combout\);

-- Location: LCCOMB_X35_Y33_N12
\CU|current_state.staa_write_mem~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|current_state.staa_write_mem~feeder_combout\ = \CU|current_state.staa_load_mdro~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CU|current_state.staa_load_mdro~q\,
	combout => \CU|current_state.staa_write_mem~feeder_combout\);

-- Location: FF_X35_Y33_N13
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

-- Location: LCCOMB_X27_Y35_N24
\instruction|output[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instruction|output[0]~feeder_combout\ = \MemoryDataInput|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataInput|output\(0),
	combout => \instruction|output[0]~feeder_combout\);

-- Location: FF_X27_Y35_N25
\instruction|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instruction|output[0]~feeder_combout\,
	ena => \CU|current_state.load_ir~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction|output\(0));

-- Location: LCCOMB_X35_Y35_N24
\MARmux|output[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MARmux|output[0]~0_combout\ = (\CU|WideOr14~0_combout\ & (\PC|counter\(0))) # (!\CU|WideOr14~0_combout\ & ((\instruction|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|counter\(0),
	datab => \instruction|output\(0),
	datad => \CU|WideOr14~0_combout\,
	combout => \MARmux|output[0]~0_combout\);

-- Location: LCCOMB_X30_Y35_N2
\CU|WideOr15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|WideOr15~combout\ = (\CU|current_state.staa_load_mdro~q\) # ((\CU|current_state.adaa_load_mar~q\) # ((\CU|current_state.ldaa_load_mar~q\) # (!\CU|current_state.load_mar~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.staa_load_mdro~q\,
	datab => \CU|current_state.adaa_load_mar~q\,
	datac => \CU|current_state.ldaa_load_mar~q\,
	datad => \CU|current_state.load_mar~q\,
	combout => \CU|WideOr15~combout\);

-- Location: FF_X35_Y35_N25
\MemoryAccess|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MARmux|output[0]~0_combout\,
	ena => \CU|WideOr15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryAccess|output\(0));

-- Location: LCCOMB_X35_Y35_N30
\memory|Z~468\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~468_combout\ = (\MemoryAccess|output\(3) & (\MemoryAccess|output\(0) & (\MemoryAccess|output\(1) & \MemoryAccess|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \MemoryAccess|output\(0),
	datac => \MemoryAccess|output\(1),
	datad => \MemoryAccess|output\(2),
	combout => \memory|Z~468_combout\);

-- Location: LCCOMB_X34_Y33_N14
\memory|Z~469\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~469_combout\ = (\CU|current_state.staa_write_mem~q\ & (\MemoryAccess|output\(4) & \memory|Z~468_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.staa_write_mem~q\,
	datab => \MemoryAccess|output\(4),
	datad => \memory|Z~468_combout\,
	combout => \memory|Z~469_combout\);

-- Location: FF_X34_Y33_N7
\memory|Z~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~567_combout\,
	ena => \memory|Z~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~268_q\);

-- Location: LCCOMB_X37_Y35_N22
\memory|Z~462\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~462_combout\ = (!\MemoryAccess|output\(2) & (\MemoryAccess|output\(1) & (\MemoryAccess|output\(3) & \MemoryAccess|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(2),
	datab => \MemoryAccess|output\(1),
	datac => \MemoryAccess|output\(3),
	datad => \MemoryAccess|output\(0),
	combout => \memory|Z~462_combout\);

-- Location: LCCOMB_X34_Y35_N6
\memory|Z~463\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~463_combout\ = (\CU|current_state.staa_write_mem~q\ & (\MemoryAccess|output\(4) & \memory|Z~462_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.staa_write_mem~q\,
	datab => \MemoryAccess|output\(4),
	datad => \memory|Z~462_combout\,
	combout => \memory|Z~463_combout\);

-- Location: FF_X34_Y35_N15
\memory|Z~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(6),
	sload => VCC,
	ena => \memory|Z~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~236_q\);

-- Location: LCCOMB_X34_Y33_N20
\memory|Z~566\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~566_combout\ = !\MemoryDataOuput|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(6),
	combout => \memory|Z~566_combout\);

-- Location: LCCOMB_X35_Y33_N30
\memory|Z~464\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~464_combout\ = (\MemoryAccess|output\(0) & (\MemoryAccess|output\(1) & (!\MemoryAccess|output\(3) & \MemoryAccess|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(0),
	datab => \MemoryAccess|output\(1),
	datac => \MemoryAccess|output\(3),
	datad => \MemoryAccess|output\(2),
	combout => \memory|Z~464_combout\);

-- Location: LCCOMB_X35_Y33_N24
\memory|Z~465\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~465_combout\ = (\CU|current_state.staa_write_mem~q\ & (\memory|Z~464_combout\ & \MemoryAccess|output\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.staa_write_mem~q\,
	datac => \memory|Z~464_combout\,
	datad => \MemoryAccess|output\(4),
	combout => \memory|Z~465_combout\);

-- Location: FF_X34_Y33_N21
\memory|Z~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~566_combout\,
	ena => \memory|Z~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~204_q\);

-- Location: LCCOMB_X35_Y34_N28
\memory|Z~466\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~466_combout\ = (\MemoryAccess|output\(1) & (\MemoryAccess|output\(0) & (!\MemoryAccess|output\(2) & !\MemoryAccess|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \MemoryAccess|output\(0),
	datac => \MemoryAccess|output\(2),
	datad => \MemoryAccess|output\(3),
	combout => \memory|Z~466_combout\);

-- Location: LCCOMB_X35_Y33_N22
\memory|Z~467\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~467_combout\ = (\CU|current_state.staa_write_mem~q\ & (\MemoryAccess|output\(4) & \memory|Z~466_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.staa_write_mem~q\,
	datab => \MemoryAccess|output\(4),
	datad => \memory|Z~466_combout\,
	combout => \memory|Z~467_combout\);

-- Location: FF_X34_Y35_N13
\memory|Z~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(6),
	sload => VCC,
	ena => \memory|Z~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~172_q\);

-- Location: LCCOMB_X34_Y35_N12
\memory|Z~403\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~403_combout\ = (\MemoryAccess|output\(2) & (((\MemoryAccess|output\(3))) # (!\memory|Z~204_q\))) # (!\MemoryAccess|output\(2) & (((\memory|Z~172_q\ & !\MemoryAccess|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~204_q\,
	datab => \MemoryAccess|output\(2),
	datac => \memory|Z~172_q\,
	datad => \MemoryAccess|output\(3),
	combout => \memory|Z~403_combout\);

-- Location: LCCOMB_X34_Y35_N14
\memory|Z~404\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~404_combout\ = (\MemoryAccess|output\(3) & ((\memory|Z~403_combout\ & (!\memory|Z~268_q\)) # (!\memory|Z~403_combout\ & ((\memory|Z~236_q\))))) # (!\MemoryAccess|output\(3) & (((\memory|Z~403_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \memory|Z~268_q\,
	datac => \memory|Z~236_q\,
	datad => \memory|Z~403_combout\,
	combout => \memory|Z~404_combout\);

-- Location: LCCOMB_X35_Y35_N4
\memory|Z~444\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~444_combout\ = (\MemoryAccess|output\(3) & (!\MemoryAccess|output\(0) & (\MemoryAccess|output\(1) & \MemoryAccess|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \MemoryAccess|output\(0),
	datac => \MemoryAccess|output\(1),
	datad => \MemoryAccess|output\(2),
	combout => \memory|Z~444_combout\);

-- Location: LCCOMB_X38_Y34_N4
\memory|Z~445\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~445_combout\ = (\CU|current_state.staa_write_mem~q\ & (\MemoryAccess|output\(4) & \memory|Z~444_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.staa_write_mem~q\,
	datab => \MemoryAccess|output\(4),
	datad => \memory|Z~444_combout\,
	combout => \memory|Z~445_combout\);

-- Location: FF_X38_Y34_N9
\memory|Z~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(6),
	sload => VCC,
	ena => \memory|Z~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~260_q\);

-- Location: LCCOMB_X36_Y35_N28
\memory|Z~438\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~438_combout\ = (\MemoryAccess|output\(2) & (!\MemoryAccess|output\(3) & (\MemoryAccess|output\(1) & !\MemoryAccess|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(2),
	datab => \MemoryAccess|output\(3),
	datac => \MemoryAccess|output\(1),
	datad => \MemoryAccess|output\(0),
	combout => \memory|Z~438_combout\);

-- Location: LCCOMB_X38_Y34_N8
\memory|Z~439\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~439_combout\ = (\memory|Z~438_combout\ & (\MemoryAccess|output\(4) & \CU|current_state.staa_write_mem~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~438_combout\,
	datab => \MemoryAccess|output\(4),
	datad => \CU|current_state.staa_write_mem~q\,
	combout => \memory|Z~439_combout\);

-- Location: FF_X38_Y34_N7
\memory|Z~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(6),
	sload => VCC,
	ena => \memory|Z~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~196_q\);

-- Location: LCCOMB_X39_Y34_N20
\memory|Z~228feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~228feeder_combout\ = \MemoryDataOuput|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(6),
	combout => \memory|Z~228feeder_combout\);

-- Location: LCCOMB_X38_Y36_N28
\memory|Z~440\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~440_combout\ = (!\MemoryAccess|output\(2) & (\MemoryAccess|output\(1) & (\MemoryAccess|output\(3) & !\MemoryAccess|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(2),
	datab => \MemoryAccess|output\(1),
	datac => \MemoryAccess|output\(3),
	datad => \MemoryAccess|output\(0),
	combout => \memory|Z~440_combout\);

-- Location: LCCOMB_X39_Y34_N8
\memory|Z~441\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~441_combout\ = (\MemoryAccess|output\(4) & (\CU|current_state.staa_write_mem~q\ & \memory|Z~440_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(4),
	datab => \CU|current_state.staa_write_mem~q\,
	datad => \memory|Z~440_combout\,
	combout => \memory|Z~441_combout\);

-- Location: FF_X39_Y34_N21
\memory|Z~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~228feeder_combout\,
	ena => \memory|Z~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~228_q\);

-- Location: LCCOMB_X34_Y34_N20
\memory|Z~442\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~442_combout\ = (!\MemoryAccess|output\(2) & (\MemoryAccess|output\(1) & (!\MemoryAccess|output\(3) & !\MemoryAccess|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(2),
	datab => \MemoryAccess|output\(1),
	datac => \MemoryAccess|output\(3),
	datad => \MemoryAccess|output\(0),
	combout => \memory|Z~442_combout\);

-- Location: LCCOMB_X39_Y34_N24
\memory|Z~443\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~443_combout\ = (\MemoryAccess|output\(4) & (\CU|current_state.staa_write_mem~q\ & \memory|Z~442_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(4),
	datab => \CU|current_state.staa_write_mem~q\,
	datad => \memory|Z~442_combout\,
	combout => \memory|Z~443_combout\);

-- Location: FF_X39_Y34_N27
\memory|Z~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(6),
	sload => VCC,
	ena => \memory|Z~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~164_q\);

-- Location: LCCOMB_X39_Y34_N26
\memory|Z~396\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~396_combout\ = (\MemoryAccess|output\(3) & ((\memory|Z~228_q\) # ((\MemoryAccess|output\(2))))) # (!\MemoryAccess|output\(3) & (((\memory|Z~164_q\ & !\MemoryAccess|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \memory|Z~228_q\,
	datac => \memory|Z~164_q\,
	datad => \MemoryAccess|output\(2),
	combout => \memory|Z~396_combout\);

-- Location: LCCOMB_X38_Y34_N6
\memory|Z~397\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~397_combout\ = (\MemoryAccess|output\(2) & ((\memory|Z~396_combout\ & (\memory|Z~260_q\)) # (!\memory|Z~396_combout\ & ((\memory|Z~196_q\))))) # (!\MemoryAccess|output\(2) & (((\memory|Z~396_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(2),
	datab => \memory|Z~260_q\,
	datac => \memory|Z~196_q\,
	datad => \memory|Z~396_combout\,
	combout => \memory|Z~397_combout\);

-- Location: LCCOMB_X35_Y37_N20
\memory|Z~220feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~220feeder_combout\ = \MemoryDataOuput|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(6),
	combout => \memory|Z~220feeder_combout\);

-- Location: LCCOMB_X35_Y37_N4
\memory|Z~446\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~446_combout\ = (!\MemoryAccess|output\(1) & (\MemoryAccess|output\(0) & (!\MemoryAccess|output\(2) & \MemoryAccess|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \MemoryAccess|output\(0),
	datac => \MemoryAccess|output\(2),
	datad => \MemoryAccess|output\(3),
	combout => \memory|Z~446_combout\);

-- Location: LCCOMB_X35_Y37_N22
\memory|Z~447\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~447_combout\ = (\CU|current_state.staa_write_mem~q\ & (\memory|Z~446_combout\ & \MemoryAccess|output\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|current_state.staa_write_mem~q\,
	datac => \memory|Z~446_combout\,
	datad => \MemoryAccess|output\(4),
	combout => \memory|Z~447_combout\);

-- Location: FF_X35_Y37_N21
\memory|Z~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~220feeder_combout\,
	ena => \memory|Z~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~220_q\);

-- Location: LCCOMB_X35_Y35_N14
\memory|Z~452\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~452_combout\ = (\MemoryAccess|output\(3) & (\MemoryAccess|output\(0) & (!\MemoryAccess|output\(1) & \MemoryAccess|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \MemoryAccess|output\(0),
	datac => \MemoryAccess|output\(1),
	datad => \MemoryAccess|output\(2),
	combout => \memory|Z~452_combout\);

-- Location: LCCOMB_X35_Y36_N26
\memory|Z~453\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~453_combout\ = (\MemoryAccess|output\(4) & (\CU|current_state.staa_write_mem~q\ & \memory|Z~452_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(4),
	datac => \CU|current_state.staa_write_mem~q\,
	datad => \memory|Z~452_combout\,
	combout => \memory|Z~453_combout\);

-- Location: FF_X36_Y37_N23
\memory|Z~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(6),
	sload => VCC,
	ena => \memory|Z~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~252_q\);

-- Location: LCCOMB_X36_Y37_N4
\memory|Z~188feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~188feeder_combout\ = \MemoryDataOuput|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(6),
	combout => \memory|Z~188feeder_combout\);

-- Location: LCCOMB_X35_Y36_N24
\memory|Z~448\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~448_combout\ = (\MemoryAccess|output\(2) & (!\MemoryAccess|output\(1) & (\MemoryAccess|output\(0) & !\MemoryAccess|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(2),
	datab => \MemoryAccess|output\(1),
	datac => \MemoryAccess|output\(0),
	datad => \MemoryAccess|output\(3),
	combout => \memory|Z~448_combout\);

-- Location: LCCOMB_X36_Y37_N26
\memory|Z~449\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~449_combout\ = (\memory|Z~448_combout\ & (\CU|current_state.staa_write_mem~q\ & \MemoryAccess|output\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~448_combout\,
	datab => \CU|current_state.staa_write_mem~q\,
	datad => \MemoryAccess|output\(4),
	combout => \memory|Z~449_combout\);

-- Location: FF_X36_Y37_N5
\memory|Z~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~188feeder_combout\,
	ena => \memory|Z~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~188_q\);

-- Location: LCCOMB_X36_Y35_N14
\memory|Z~450\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~450_combout\ = (!\MemoryAccess|output\(1) & (\MemoryAccess|output\(0) & (!\MemoryAccess|output\(3) & !\MemoryAccess|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \MemoryAccess|output\(0),
	datac => \MemoryAccess|output\(3),
	datad => \MemoryAccess|output\(2),
	combout => \memory|Z~450_combout\);

-- Location: LCCOMB_X36_Y37_N6
\memory|Z~451\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~451_combout\ = (\MemoryAccess|output\(4) & (\CU|current_state.staa_write_mem~q\ & \memory|Z~450_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemoryAccess|output\(4),
	datac => \CU|current_state.staa_write_mem~q\,
	datad => \memory|Z~450_combout\,
	combout => \memory|Z~451_combout\);

-- Location: FF_X35_Y37_N15
\memory|Z~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(6),
	sload => VCC,
	ena => \memory|Z~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~156_q\);

-- Location: LCCOMB_X35_Y37_N14
\memory|Z~398\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~398_combout\ = (\MemoryAccess|output\(3) & (((\MemoryAccess|output\(2))))) # (!\MemoryAccess|output\(3) & ((\MemoryAccess|output\(2) & (\memory|Z~188_q\)) # (!\MemoryAccess|output\(2) & ((\memory|Z~156_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~188_q\,
	datab => \MemoryAccess|output\(3),
	datac => \memory|Z~156_q\,
	datad => \MemoryAccess|output\(2),
	combout => \memory|Z~398_combout\);

-- Location: LCCOMB_X36_Y37_N22
\memory|Z~399\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~399_combout\ = (\MemoryAccess|output\(3) & ((\memory|Z~398_combout\ & ((\memory|Z~252_q\))) # (!\memory|Z~398_combout\ & (\memory|Z~220_q\)))) # (!\MemoryAccess|output\(3) & (((\memory|Z~398_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \memory|Z~220_q\,
	datac => \memory|Z~252_q\,
	datad => \memory|Z~398_combout\,
	combout => \memory|Z~399_combout\);

-- Location: LCCOMB_X35_Y33_N6
\memory|Z~454\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~454_combout\ = (!\MemoryAccess|output\(0) & (!\MemoryAccess|output\(1) & (!\MemoryAccess|output\(3) & \MemoryAccess|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(0),
	datab => \MemoryAccess|output\(1),
	datac => \MemoryAccess|output\(3),
	datad => \MemoryAccess|output\(2),
	combout => \memory|Z~454_combout\);

-- Location: LCCOMB_X35_Y33_N16
\memory|Z~455\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~455_combout\ = (\CU|current_state.staa_write_mem~q\ & (\MemoryAccess|output\(4) & \memory|Z~454_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.staa_write_mem~q\,
	datab => \MemoryAccess|output\(4),
	datad => \memory|Z~454_combout\,
	combout => \memory|Z~455_combout\);

-- Location: FF_X35_Y35_N9
\memory|Z~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(6),
	sload => VCC,
	ena => \memory|Z~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~180_q\);

-- Location: LCCOMB_X36_Y35_N24
\memory|Z~460\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~460_combout\ = (!\MemoryAccess|output\(1) & (!\MemoryAccess|output\(0) & (\MemoryAccess|output\(3) & \MemoryAccess|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \MemoryAccess|output\(0),
	datac => \MemoryAccess|output\(3),
	datad => \MemoryAccess|output\(2),
	combout => \memory|Z~460_combout\);

-- Location: LCCOMB_X36_Y35_N22
\memory|Z~461\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~461_combout\ = (\MemoryAccess|output\(4) & (\CU|current_state.staa_write_mem~q\ & \memory|Z~460_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(4),
	datac => \CU|current_state.staa_write_mem~q\,
	datad => \memory|Z~460_combout\,
	combout => \memory|Z~461_combout\);

-- Location: FF_X37_Y35_N21
\memory|Z~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(6),
	sload => VCC,
	ena => \memory|Z~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~244_q\);

-- Location: LCCOMB_X36_Y33_N28
\memory|Z~212feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~212feeder_combout\ = \MemoryDataOuput|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(6),
	combout => \memory|Z~212feeder_combout\);

-- Location: LCCOMB_X36_Y34_N30
\memory|Z~456\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~456_combout\ = (\MemoryAccess|output\(3) & (!\MemoryAccess|output\(1) & (!\MemoryAccess|output\(2) & !\MemoryAccess|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \MemoryAccess|output\(1),
	datac => \MemoryAccess|output\(2),
	datad => \MemoryAccess|output\(0),
	combout => \memory|Z~456_combout\);

-- Location: LCCOMB_X36_Y33_N24
\memory|Z~457\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~457_combout\ = (\memory|Z~456_combout\ & (\MemoryAccess|output\(4) & \CU|current_state.staa_write_mem~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~456_combout\,
	datab => \MemoryAccess|output\(4),
	datad => \CU|current_state.staa_write_mem~q\,
	combout => \memory|Z~457_combout\);

-- Location: FF_X36_Y33_N29
\memory|Z~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~212feeder_combout\,
	ena => \memory|Z~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~212_q\);

-- Location: LCCOMB_X35_Y35_N28
\memory|Z~458\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~458_combout\ = (!\MemoryAccess|output\(1) & (!\MemoryAccess|output\(2) & (!\MemoryAccess|output\(0) & !\MemoryAccess|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \MemoryAccess|output\(2),
	datac => \MemoryAccess|output\(0),
	datad => \MemoryAccess|output\(3),
	combout => \memory|Z~458_combout\);

-- Location: LCCOMB_X36_Y33_N8
\memory|Z~459\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~459_combout\ = (\CU|current_state.staa_write_mem~q\ & (\MemoryAccess|output\(4) & \memory|Z~458_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.staa_write_mem~q\,
	datab => \MemoryAccess|output\(4),
	datad => \memory|Z~458_combout\,
	combout => \memory|Z~459_combout\);

-- Location: FF_X36_Y33_N19
\memory|Z~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(6),
	sload => VCC,
	ena => \memory|Z~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~148_q\);

-- Location: LCCOMB_X36_Y33_N18
\memory|Z~400\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~400_combout\ = (\MemoryAccess|output\(3) & ((\memory|Z~212_q\) # ((\MemoryAccess|output\(2))))) # (!\MemoryAccess|output\(3) & (((\memory|Z~148_q\ & !\MemoryAccess|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \memory|Z~212_q\,
	datac => \memory|Z~148_q\,
	datad => \MemoryAccess|output\(2),
	combout => \memory|Z~400_combout\);

-- Location: LCCOMB_X37_Y35_N20
\memory|Z~401\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~401_combout\ = (\MemoryAccess|output\(2) & ((\memory|Z~400_combout\ & ((\memory|Z~244_q\))) # (!\memory|Z~400_combout\ & (\memory|Z~180_q\)))) # (!\MemoryAccess|output\(2) & (((\memory|Z~400_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(2),
	datab => \memory|Z~180_q\,
	datac => \memory|Z~244_q\,
	datad => \memory|Z~400_combout\,
	combout => \memory|Z~401_combout\);

-- Location: LCCOMB_X37_Y35_N10
\memory|Z~402\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~402_combout\ = (\MemoryAccess|output\(1) & (\MemoryAccess|output\(0))) # (!\MemoryAccess|output\(1) & ((\MemoryAccess|output\(0) & (\memory|Z~399_combout\)) # (!\MemoryAccess|output\(0) & ((\memory|Z~401_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \MemoryAccess|output\(0),
	datac => \memory|Z~399_combout\,
	datad => \memory|Z~401_combout\,
	combout => \memory|Z~402_combout\);

-- Location: LCCOMB_X37_Y35_N8
\memory|Z~405\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~405_combout\ = (\MemoryAccess|output\(1) & ((\memory|Z~402_combout\ & (\memory|Z~404_combout\)) # (!\memory|Z~402_combout\ & ((\memory|Z~397_combout\))))) # (!\MemoryAccess|output\(1) & (((\memory|Z~402_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \memory|Z~404_combout\,
	datac => \memory|Z~397_combout\,
	datad => \memory|Z~402_combout\,
	combout => \memory|Z~405_combout\);

-- Location: LCCOMB_X37_Y36_N6
\memory|Z~108feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~108feeder_combout\ = \MemoryDataOuput|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(6),
	combout => \memory|Z~108feeder_combout\);

-- Location: LCCOMB_X37_Y36_N22
\memory|Z~473\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~473_combout\ = (!\MemoryAccess|output\(4) & (\CU|current_state.staa_write_mem~q\ & \memory|Z~462_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(4),
	datab => \CU|current_state.staa_write_mem~q\,
	datad => \memory|Z~462_combout\,
	combout => \memory|Z~473_combout\);

-- Location: FF_X37_Y36_N7
\memory|Z~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~108feeder_combout\,
	ena => \memory|Z~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~108_q\);

-- Location: LCCOMB_X37_Y36_N30
\memory|Z~470\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~470_combout\ = (!\MemoryAccess|output\(4) & (\CU|current_state.staa_write_mem~q\ & \memory|Z~440_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(4),
	datab => \CU|current_state.staa_write_mem~q\,
	datad => \memory|Z~440_combout\,
	combout => \memory|Z~470_combout\);

-- Location: FF_X37_Y36_N9
\memory|Z~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(6),
	sload => VCC,
	ena => \memory|Z~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~100_q\);

-- Location: LCCOMB_X36_Y36_N18
\memory|Z~471\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~471_combout\ = (!\MemoryAccess|output\(4) & (\CU|current_state.staa_write_mem~q\ & \memory|Z~446_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(4),
	datab => \CU|current_state.staa_write_mem~q\,
	datad => \memory|Z~446_combout\,
	combout => \memory|Z~471_combout\);

-- Location: FF_X36_Y36_N19
\memory|Z~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(6),
	sload => VCC,
	ena => \memory|Z~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~92_q\);

-- Location: LCCOMB_X36_Y34_N4
\memory|Z~472\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~472_combout\ = (\memory|Z~456_combout\ & (!\MemoryAccess|output\(4) & \CU|current_state.staa_write_mem~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~456_combout\,
	datac => \MemoryAccess|output\(4),
	datad => \CU|current_state.staa_write_mem~q\,
	combout => \memory|Z~472_combout\);

-- Location: FF_X36_Y36_N25
\memory|Z~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(6),
	sload => VCC,
	ena => \memory|Z~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~84_q\);

-- Location: LCCOMB_X36_Y36_N24
\memory|Z~406\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~406_combout\ = (\MemoryAccess|output\(0) & ((\memory|Z~92_q\) # ((\MemoryAccess|output\(1))))) # (!\MemoryAccess|output\(0) & (((\memory|Z~84_q\ & !\MemoryAccess|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~92_q\,
	datab => \MemoryAccess|output\(0),
	datac => \memory|Z~84_q\,
	datad => \MemoryAccess|output\(1),
	combout => \memory|Z~406_combout\);

-- Location: LCCOMB_X37_Y36_N8
\memory|Z~407\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~407_combout\ = (\MemoryAccess|output\(1) & ((\memory|Z~406_combout\ & (\memory|Z~108_q\)) # (!\memory|Z~406_combout\ & ((\memory|Z~100_q\))))) # (!\MemoryAccess|output\(1) & (((\memory|Z~406_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \memory|Z~108_q\,
	datac => \memory|Z~100_q\,
	datad => \memory|Z~406_combout\,
	combout => \memory|Z~407_combout\);

-- Location: LCCOMB_X32_Y35_N0
\memory|Z~570\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~570_combout\ = !\MemoryDataOuput|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(6),
	combout => \memory|Z~570_combout\);

-- Location: LCCOMB_X32_Y35_N14
\memory|Z~485\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~485_combout\ = (\memory|Z~468_combout\ & (\CU|current_state.staa_write_mem~q\ & !\MemoryAccess|output\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~468_combout\,
	datab => \CU|current_state.staa_write_mem~q\,
	datac => \MemoryAccess|output\(4),
	combout => \memory|Z~485_combout\);

-- Location: FF_X32_Y35_N1
\memory|Z~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~570_combout\,
	ena => \memory|Z~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~140_q\);

-- Location: LCCOMB_X35_Y35_N8
\memory|Z~482\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~482_combout\ = (\CU|current_state.staa_write_mem~q\ & (\memory|Z~452_combout\ & !\MemoryAccess|output\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.staa_write_mem~q\,
	datab => \memory|Z~452_combout\,
	datad => \MemoryAccess|output\(4),
	combout => \memory|Z~482_combout\);

-- Location: FF_X32_Y35_N31
\memory|Z~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(6),
	sload => VCC,
	ena => \memory|Z~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~124_q\);

-- Location: LCCOMB_X31_Y35_N20
\memory|Z~484\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~484_combout\ = (!\MemoryAccess|output\(4) & (\CU|current_state.staa_write_mem~q\ & \memory|Z~460_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(4),
	datab => \CU|current_state.staa_write_mem~q\,
	datad => \memory|Z~460_combout\,
	combout => \memory|Z~484_combout\);

-- Location: FF_X31_Y35_N23
\memory|Z~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(6),
	sload => VCC,
	ena => \memory|Z~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~116_q\);

-- Location: LCCOMB_X31_Y35_N22
\memory|Z~483\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~483_combout\ = (!\MemoryAccess|output\(4) & (\memory|Z~444_combout\ & \CU|current_state.staa_write_mem~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(4),
	datab => \memory|Z~444_combout\,
	datad => \CU|current_state.staa_write_mem~q\,
	combout => \memory|Z~483_combout\);

-- Location: FF_X31_Y35_N9
\memory|Z~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(6),
	sload => VCC,
	ena => \memory|Z~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~132_q\);

-- Location: LCCOMB_X31_Y35_N8
\memory|Z~413\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~413_combout\ = (\MemoryAccess|output\(1) & (((\memory|Z~132_q\) # (\MemoryAccess|output\(0))))) # (!\MemoryAccess|output\(1) & (\memory|Z~116_q\ & ((!\MemoryAccess|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \memory|Z~116_q\,
	datac => \memory|Z~132_q\,
	datad => \MemoryAccess|output\(0),
	combout => \memory|Z~413_combout\);

-- Location: LCCOMB_X32_Y35_N30
\memory|Z~414\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~414_combout\ = (\MemoryAccess|output\(0) & ((\memory|Z~413_combout\ & (!\memory|Z~140_q\)) # (!\memory|Z~413_combout\ & ((\memory|Z~124_q\))))) # (!\MemoryAccess|output\(0) & (((\memory|Z~413_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~140_q\,
	datab => \MemoryAccess|output\(0),
	datac => \memory|Z~124_q\,
	datad => \memory|Z~413_combout\,
	combout => \memory|Z~414_combout\);

-- Location: LCCOMB_X39_Y33_N22
\memory|Z~568\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~568_combout\ = !\MemoryDataOuput|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(6),
	combout => \memory|Z~568_combout\);

-- Location: LCCOMB_X39_Y33_N12
\memory|Z~477\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~477_combout\ = (\CU|current_state.staa_write_mem~q\ & (!\MemoryAccess|output\(4) & \memory|Z~464_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.staa_write_mem~q\,
	datac => \MemoryAccess|output\(4),
	datad => \memory|Z~464_combout\,
	combout => \memory|Z~477_combout\);

-- Location: FF_X39_Y33_N23
\memory|Z~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~568_combout\,
	ena => \memory|Z~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~76_q\);

-- Location: LCCOMB_X39_Y36_N20
\memory|Z~474\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~474_combout\ = (!\MemoryAccess|output\(4) & (\CU|current_state.staa_write_mem~q\ & \memory|Z~448_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(4),
	datac => \CU|current_state.staa_write_mem~q\,
	datad => \memory|Z~448_combout\,
	combout => \memory|Z~474_combout\);

-- Location: FF_X38_Y35_N29
\memory|Z~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(6),
	sload => VCC,
	ena => \memory|Z~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~60_q\);

-- Location: LCCOMB_X39_Y35_N22
\memory|Z~68feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~68feeder_combout\ = \MemoryDataOuput|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(6),
	combout => \memory|Z~68feeder_combout\);

-- Location: LCCOMB_X39_Y35_N8
\memory|Z~475\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~475_combout\ = (!\MemoryAccess|output\(4) & (\memory|Z~438_combout\ & \CU|current_state.staa_write_mem~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(4),
	datac => \memory|Z~438_combout\,
	datad => \CU|current_state.staa_write_mem~q\,
	combout => \memory|Z~475_combout\);

-- Location: FF_X39_Y35_N23
\memory|Z~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~68feeder_combout\,
	ena => \memory|Z~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~68_q\);

-- Location: LCCOMB_X38_Y35_N20
\memory|Z~476\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~476_combout\ = (\CU|current_state.staa_write_mem~q\ & (!\MemoryAccess|output\(4) & \memory|Z~454_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.staa_write_mem~q\,
	datac => \MemoryAccess|output\(4),
	datad => \memory|Z~454_combout\,
	combout => \memory|Z~476_combout\);

-- Location: FF_X38_Y35_N7
\memory|Z~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(6),
	sload => VCC,
	ena => \memory|Z~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~52_q\);

-- Location: LCCOMB_X38_Y35_N6
\memory|Z~408\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~408_combout\ = (\MemoryAccess|output\(0) & (((\MemoryAccess|output\(1))))) # (!\MemoryAccess|output\(0) & ((\MemoryAccess|output\(1) & (\memory|Z~68_q\)) # (!\MemoryAccess|output\(1) & ((\memory|Z~52_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(0),
	datab => \memory|Z~68_q\,
	datac => \memory|Z~52_q\,
	datad => \MemoryAccess|output\(1),
	combout => \memory|Z~408_combout\);

-- Location: LCCOMB_X38_Y35_N28
\memory|Z~409\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~409_combout\ = (\MemoryAccess|output\(0) & ((\memory|Z~408_combout\ & (!\memory|Z~76_q\)) # (!\memory|Z~408_combout\ & ((\memory|Z~60_q\))))) # (!\MemoryAccess|output\(0) & (((\memory|Z~408_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(0),
	datab => \memory|Z~76_q\,
	datac => \memory|Z~60_q\,
	datad => \memory|Z~408_combout\,
	combout => \memory|Z~409_combout\);

-- Location: LCCOMB_X35_Y36_N12
\memory|Z~569\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~569_combout\ = !\MemoryDataOuput|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(6),
	combout => \memory|Z~569_combout\);

-- Location: LCCOMB_X35_Y36_N4
\memory|Z~478\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~478_combout\ = (!\MemoryAccess|output\(4) & (\CU|current_state.staa_write_mem~q\ & \memory|Z~442_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(4),
	datab => \CU|current_state.staa_write_mem~q\,
	datad => \memory|Z~442_combout\,
	combout => \memory|Z~478_combout\);

-- Location: FF_X35_Y36_N13
\memory|Z~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~569_combout\,
	ena => \memory|Z~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~36_q\);

-- Location: LCCOMB_X35_Y34_N26
\memory|Z~481\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~481_combout\ = (\CU|current_state.staa_write_mem~q\ & (!\MemoryAccess|output\(4) & \memory|Z~466_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.staa_write_mem~q\,
	datac => \MemoryAccess|output\(4),
	datad => \memory|Z~466_combout\,
	combout => \memory|Z~481_combout\);

-- Location: FF_X36_Y35_N13
\memory|Z~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(6),
	sload => VCC,
	ena => \memory|Z~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~44_q\);

-- Location: LCCOMB_X37_Y34_N2
\memory|Z~28feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~28feeder_combout\ = \MemoryDataOuput|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(6),
	combout => \memory|Z~28feeder_combout\);

-- Location: LCCOMB_X37_Y33_N26
\memory|Z~479\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~479_combout\ = (\CU|current_state.staa_write_mem~q\ & (!\MemoryAccess|output\(4) & \memory|Z~450_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|current_state.staa_write_mem~q\,
	datac => \MemoryAccess|output\(4),
	datad => \memory|Z~450_combout\,
	combout => \memory|Z~479_combout\);

-- Location: FF_X37_Y34_N3
\memory|Z~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~28feeder_combout\,
	ena => \memory|Z~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~28_q\);

-- Location: LCCOMB_X35_Y35_N20
\memory|Z~480\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~480_combout\ = (!\MemoryAccess|output\(4) & (\CU|current_state.staa_write_mem~q\ & \memory|Z~458_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(4),
	datab => \CU|current_state.staa_write_mem~q\,
	datad => \memory|Z~458_combout\,
	combout => \memory|Z~480_combout\);

-- Location: FF_X35_Y34_N15
\memory|Z~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(6),
	sload => VCC,
	ena => \memory|Z~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~20_q\);

-- Location: LCCOMB_X35_Y34_N14
\memory|Z~410\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~410_combout\ = (\MemoryAccess|output\(1) & (((\MemoryAccess|output\(0))))) # (!\MemoryAccess|output\(1) & ((\MemoryAccess|output\(0) & (\memory|Z~28_q\)) # (!\MemoryAccess|output\(0) & ((\memory|Z~20_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~28_q\,
	datab => \MemoryAccess|output\(1),
	datac => \memory|Z~20_q\,
	datad => \MemoryAccess|output\(0),
	combout => \memory|Z~410_combout\);

-- Location: LCCOMB_X36_Y35_N12
\memory|Z~411\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~411_combout\ = (\MemoryAccess|output\(1) & ((\memory|Z~410_combout\ & ((\memory|Z~44_q\))) # (!\memory|Z~410_combout\ & (!\memory|Z~36_q\)))) # (!\MemoryAccess|output\(1) & (((\memory|Z~410_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \memory|Z~36_q\,
	datac => \memory|Z~44_q\,
	datad => \memory|Z~410_combout\,
	combout => \memory|Z~411_combout\);

-- Location: LCCOMB_X37_Y35_N6
\memory|Z~412\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~412_combout\ = (\MemoryAccess|output\(2) & ((\memory|Z~409_combout\) # ((\MemoryAccess|output\(3))))) # (!\MemoryAccess|output\(2) & (((!\MemoryAccess|output\(3) & \memory|Z~411_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(2),
	datab => \memory|Z~409_combout\,
	datac => \MemoryAccess|output\(3),
	datad => \memory|Z~411_combout\,
	combout => \memory|Z~412_combout\);

-- Location: LCCOMB_X37_Y35_N16
\memory|Z~415\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~415_combout\ = (\MemoryAccess|output\(3) & ((\memory|Z~412_combout\ & ((\memory|Z~414_combout\))) # (!\memory|Z~412_combout\ & (\memory|Z~407_combout\)))) # (!\MemoryAccess|output\(3) & (((\memory|Z~412_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \memory|Z~407_combout\,
	datac => \memory|Z~414_combout\,
	datad => \memory|Z~412_combout\,
	combout => \memory|Z~415_combout\);

-- Location: LCCOMB_X37_Y35_N14
\memory|Z~416\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~416_combout\ = (\MemoryAccess|output\(4) & (\memory|Z~405_combout\)) # (!\MemoryAccess|output\(4) & ((\memory|Z~415_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemoryAccess|output\(4),
	datac => \memory|Z~405_combout\,
	datad => \memory|Z~415_combout\,
	combout => \memory|Z~416_combout\);

-- Location: FF_X37_Y35_N15
\memory|Data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~416_combout\,
	ena => \CU|ALT_INV_current_state.staa_write_mem~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Data_out\(6));

-- Location: LCCOMB_X29_Y35_N6
\MemoryDataInput|output[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryDataInput|output[6]~feeder_combout\ = \memory|Data_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory|Data_out\(6),
	combout => \MemoryDataInput|output[6]~feeder_combout\);

-- Location: LCCOMB_X30_Y35_N30
\CU|WideOr16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|WideOr16~0_combout\ = (\CU|current_state.load_mdri~q\) # ((\CU|current_state.adaa_load_mdri~q\) # (\CU|current_state.ldaa_load_mdri~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.load_mdri~q\,
	datac => \CU|current_state.adaa_load_mdri~q\,
	datad => \CU|current_state.ldaa_load_mdri~q\,
	combout => \CU|WideOr16~0_combout\);

-- Location: FF_X29_Y35_N7
\MemoryDataInput|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemoryDataInput|output[6]~feeder_combout\,
	ena => \CU|WideOr16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryDataInput|output\(6));

-- Location: LCCOMB_X27_Y35_N18
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

-- Location: FF_X27_Y35_N19
\instruction|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instruction|output[6]~feeder_combout\,
	ena => \CU|current_state.load_ir~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction|output\(6));

-- Location: LCCOMB_X27_Y35_N30
\CU|current_state~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|current_state~20_combout\ = (!\instruction|output\(5) & (\CU|current_state.decode~q\ & (!\instruction|output\(7) & \instruction|output\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction|output\(5),
	datab => \CU|current_state.decode~q\,
	datac => \instruction|output\(7),
	datad => \instruction|output\(6),
	combout => \CU|current_state~20_combout\);

-- Location: FF_X27_Y35_N31
\CU|current_state.staa_load_mdro\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|current_state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.staa_load_mdro~q\);

-- Location: LCCOMB_X30_Y35_N26
\CU|WideOr14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|WideOr14~0_combout\ = (!\CU|current_state.staa_load_mdro~q\ & (!\CU|current_state.adaa_load_mar~q\ & !\CU|current_state.ldaa_load_mar~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.staa_load_mdro~q\,
	datab => \CU|current_state.adaa_load_mar~q\,
	datac => \CU|current_state.ldaa_load_mar~q\,
	combout => \CU|WideOr14~0_combout\);

-- Location: LCCOMB_X35_Y35_N0
\MARmux|output[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MARmux|output[2]~2_combout\ = (\CU|WideOr14~0_combout\ & ((\PC|counter\(2)))) # (!\CU|WideOr14~0_combout\ & (\instruction|output\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction|output\(2),
	datac => \PC|counter\(2),
	datad => \CU|WideOr14~0_combout\,
	combout => \MARmux|output[2]~2_combout\);

-- Location: FF_X35_Y35_N1
\MemoryAccess|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MARmux|output[2]~2_combout\,
	ena => \CU|WideOr15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryAccess|output\(2));

-- Location: LCCOMB_X29_Y35_N22
\accumulator|output[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \accumulator|output[7]~22_combout\ = \accumulator|output\(7) $ (\accumulator|output[6]~21\ $ (\MemoryDataInput|output\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \accumulator|output\(7),
	datad => \MemoryDataInput|output\(7),
	cin => \accumulator|output[6]~21\,
	combout => \accumulator|output[7]~22_combout\);

-- Location: FF_X29_Y35_N23
\accumulator|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \accumulator|output[7]~22_combout\,
	asdata => \MemoryDataInput|output\(7),
	sload => \CU|current_state.ldaa_load_a~q\,
	ena => \CU|ToALoad~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulator|output\(7));

-- Location: LCCOMB_X30_Y35_N14
\MemoryDataOuput|output[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryDataOuput|output[7]~feeder_combout\ = \accumulator|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \accumulator|output\(7),
	combout => \MemoryDataOuput|output[7]~feeder_combout\);

-- Location: FF_X30_Y35_N15
\MemoryDataOuput|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemoryDataOuput|output[7]~feeder_combout\,
	ena => \CU|current_state.staa_load_mdro~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryDataOuput|output\(7));

-- Location: LCCOMB_X39_Y35_N26
\memory|Z~77feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~77feeder_combout\ = \MemoryDataOuput|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(7),
	combout => \memory|Z~77feeder_combout\);

-- Location: FF_X39_Y35_N27
\memory|Z~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~77feeder_combout\,
	ena => \memory|Z~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~77_q\);

-- Location: FF_X39_Y35_N21
\memory|Z~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(7),
	sload => VCC,
	ena => \memory|Z~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~69_q\);

-- Location: LCCOMB_X38_Y35_N24
\memory|Z~61feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~61feeder_combout\ = \MemoryDataOuput|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(7),
	combout => \memory|Z~61feeder_combout\);

-- Location: FF_X38_Y35_N25
\memory|Z~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~61feeder_combout\,
	ena => \memory|Z~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~61_q\);

-- Location: FF_X38_Y35_N19
\memory|Z~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(7),
	sload => VCC,
	ena => \memory|Z~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~53_q\);

-- Location: LCCOMB_X38_Y35_N18
\memory|Z~427\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~427_combout\ = (\MemoryAccess|output\(1) & (((\MemoryAccess|output\(0))))) # (!\MemoryAccess|output\(1) & ((\MemoryAccess|output\(0) & (\memory|Z~61_q\)) # (!\MemoryAccess|output\(0) & ((\memory|Z~53_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \memory|Z~61_q\,
	datac => \memory|Z~53_q\,
	datad => \MemoryAccess|output\(0),
	combout => \memory|Z~427_combout\);

-- Location: LCCOMB_X39_Y35_N20
\memory|Z~428\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~428_combout\ = (\MemoryAccess|output\(1) & ((\memory|Z~427_combout\ & (\memory|Z~77_q\)) # (!\memory|Z~427_combout\ & ((\memory|Z~69_q\))))) # (!\MemoryAccess|output\(1) & (((\memory|Z~427_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \memory|Z~77_q\,
	datac => \memory|Z~69_q\,
	datad => \memory|Z~427_combout\,
	combout => \memory|Z~428_combout\);

-- Location: LCCOMB_X36_Y36_N22
\memory|Z~583\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~583_combout\ = !\MemoryDataOuput|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(7),
	combout => \memory|Z~583_combout\);

-- Location: FF_X36_Y36_N23
\memory|Z~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~583_combout\,
	ena => \memory|Z~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~93_q\);

-- Location: LCCOMB_X37_Y36_N10
\memory|Z~585\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~585_combout\ = !\MemoryDataOuput|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(7),
	combout => \memory|Z~585_combout\);

-- Location: FF_X37_Y36_N11
\memory|Z~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~585_combout\,
	ena => \memory|Z~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~109_q\);

-- Location: LCCOMB_X37_Y36_N16
\memory|Z~584\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~584_combout\ = !\MemoryDataOuput|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(7),
	combout => \memory|Z~584_combout\);

-- Location: FF_X37_Y36_N17
\memory|Z~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~584_combout\,
	ena => \memory|Z~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~101_q\);

-- Location: FF_X36_Y36_N21
\memory|Z~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(7),
	sload => VCC,
	ena => \memory|Z~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~85_q\);

-- Location: LCCOMB_X36_Y36_N20
\memory|Z~429\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~429_combout\ = (\MemoryAccess|output\(0) & (((\MemoryAccess|output\(1))))) # (!\MemoryAccess|output\(0) & ((\MemoryAccess|output\(1) & (!\memory|Z~101_q\)) # (!\MemoryAccess|output\(1) & ((\memory|Z~85_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~101_q\,
	datab => \MemoryAccess|output\(0),
	datac => \memory|Z~85_q\,
	datad => \MemoryAccess|output\(1),
	combout => \memory|Z~429_combout\);

-- Location: LCCOMB_X36_Y36_N30
\memory|Z~430\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~430_combout\ = (\MemoryAccess|output\(0) & ((\memory|Z~429_combout\ & ((!\memory|Z~109_q\))) # (!\memory|Z~429_combout\ & (!\memory|Z~93_q\)))) # (!\MemoryAccess|output\(0) & (((\memory|Z~429_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~93_q\,
	datab => \memory|Z~109_q\,
	datac => \MemoryAccess|output\(0),
	datad => \memory|Z~429_combout\,
	combout => \memory|Z~430_combout\);

-- Location: LCCOMB_X35_Y34_N22
\memory|Z~45feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~45feeder_combout\ = \MemoryDataOuput|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(7),
	combout => \memory|Z~45feeder_combout\);

-- Location: FF_X35_Y34_N23
\memory|Z~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~45feeder_combout\,
	ena => \memory|Z~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~45_q\);

-- Location: LCCOMB_X37_Y34_N30
\memory|Z~29feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~29feeder_combout\ = \MemoryDataOuput|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(7),
	combout => \memory|Z~29feeder_combout\);

-- Location: FF_X37_Y34_N31
\memory|Z~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~29feeder_combout\,
	ena => \memory|Z~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~29_q\);

-- Location: FF_X35_Y34_N13
\memory|Z~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(7),
	sload => VCC,
	ena => \memory|Z~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~21_q\);

-- Location: LCCOMB_X35_Y36_N30
\memory|Z~37feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~37feeder_combout\ = \MemoryDataOuput|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(7),
	combout => \memory|Z~37feeder_combout\);

-- Location: FF_X35_Y36_N31
\memory|Z~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~37feeder_combout\,
	ena => \memory|Z~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~37_q\);

-- Location: LCCOMB_X35_Y34_N12
\memory|Z~431\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~431_combout\ = (\MemoryAccess|output\(1) & ((\MemoryAccess|output\(0)) # ((\memory|Z~37_q\)))) # (!\MemoryAccess|output\(1) & (!\MemoryAccess|output\(0) & (\memory|Z~21_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \MemoryAccess|output\(0),
	datac => \memory|Z~21_q\,
	datad => \memory|Z~37_q\,
	combout => \memory|Z~431_combout\);

-- Location: LCCOMB_X36_Y34_N20
\memory|Z~432\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~432_combout\ = (\MemoryAccess|output\(0) & ((\memory|Z~431_combout\ & (\memory|Z~45_q\)) # (!\memory|Z~431_combout\ & ((\memory|Z~29_q\))))) # (!\MemoryAccess|output\(0) & (((\memory|Z~431_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(0),
	datab => \memory|Z~45_q\,
	datac => \memory|Z~29_q\,
	datad => \memory|Z~431_combout\,
	combout => \memory|Z~432_combout\);

-- Location: LCCOMB_X36_Y34_N14
\memory|Z~433\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~433_combout\ = (\MemoryAccess|output\(2) & (\MemoryAccess|output\(3))) # (!\MemoryAccess|output\(2) & ((\MemoryAccess|output\(3) & (\memory|Z~430_combout\)) # (!\MemoryAccess|output\(3) & ((\memory|Z~432_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(2),
	datab => \MemoryAccess|output\(3),
	datac => \memory|Z~430_combout\,
	datad => \memory|Z~432_combout\,
	combout => \memory|Z~433_combout\);

-- Location: LCCOMB_X31_Y35_N28
\memory|Z~586\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~586_combout\ = !\MemoryDataOuput|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(7),
	combout => \memory|Z~586_combout\);

-- Location: FF_X31_Y35_N29
\memory|Z~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~586_combout\,
	ena => \memory|Z~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~133_q\);

-- Location: FF_X32_Y35_N29
\memory|Z~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(7),
	sload => VCC,
	ena => \memory|Z~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~141_q\);

-- Location: LCCOMB_X31_Y35_N26
\memory|Z~587\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~587_combout\ = !\MemoryDataOuput|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(7),
	combout => \memory|Z~587_combout\);

-- Location: FF_X31_Y35_N27
\memory|Z~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~587_combout\,
	ena => \memory|Z~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~117_q\);

-- Location: FF_X32_Y35_N19
\memory|Z~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(7),
	sload => VCC,
	ena => \memory|Z~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~125_q\);

-- Location: LCCOMB_X32_Y35_N18
\memory|Z~434\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~434_combout\ = (\MemoryAccess|output\(0) & (((\memory|Z~125_q\) # (\MemoryAccess|output\(1))))) # (!\MemoryAccess|output\(0) & (!\memory|Z~117_q\ & ((!\MemoryAccess|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~117_q\,
	datab => \MemoryAccess|output\(0),
	datac => \memory|Z~125_q\,
	datad => \MemoryAccess|output\(1),
	combout => \memory|Z~434_combout\);

-- Location: LCCOMB_X32_Y35_N28
\memory|Z~435\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~435_combout\ = (\MemoryAccess|output\(1) & ((\memory|Z~434_combout\ & ((\memory|Z~141_q\))) # (!\memory|Z~434_combout\ & (!\memory|Z~133_q\)))) # (!\MemoryAccess|output\(1) & (((\memory|Z~434_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \memory|Z~133_q\,
	datac => \memory|Z~141_q\,
	datad => \memory|Z~434_combout\,
	combout => \memory|Z~435_combout\);

-- Location: LCCOMB_X36_Y34_N8
\memory|Z~436\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~436_combout\ = (\MemoryAccess|output\(2) & ((\memory|Z~433_combout\ & ((\memory|Z~435_combout\))) # (!\memory|Z~433_combout\ & (\memory|Z~428_combout\)))) # (!\MemoryAccess|output\(2) & (((\memory|Z~433_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(2),
	datab => \memory|Z~428_combout\,
	datac => \memory|Z~433_combout\,
	datad => \memory|Z~435_combout\,
	combout => \memory|Z~436_combout\);

-- Location: LCCOMB_X36_Y37_N8
\memory|Z~253feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~253feeder_combout\ = \MemoryDataOuput|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(7),
	combout => \memory|Z~253feeder_combout\);

-- Location: FF_X36_Y37_N9
\memory|Z~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~253feeder_combout\,
	ena => \memory|Z~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~253_q\);

-- Location: FF_X36_Y37_N1
\memory|Z~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(7),
	sload => VCC,
	ena => \memory|Z~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~189_q\);

-- Location: LCCOMB_X37_Y37_N22
\memory|Z~571\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~571_combout\ = !\MemoryDataOuput|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(7),
	combout => \memory|Z~571_combout\);

-- Location: FF_X37_Y37_N23
\memory|Z~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~571_combout\,
	ena => \memory|Z~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~221_q\);

-- Location: LCCOMB_X37_Y37_N20
\memory|Z~572\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~572_combout\ = !\MemoryDataOuput|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(7),
	combout => \memory|Z~572_combout\);

-- Location: FF_X37_Y37_N21
\memory|Z~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~572_combout\,
	ena => \memory|Z~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~157_q\);

-- Location: LCCOMB_X36_Y37_N10
\memory|Z~417\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~417_combout\ = (\MemoryAccess|output\(3) & (((\MemoryAccess|output\(2))) # (!\memory|Z~221_q\))) # (!\MemoryAccess|output\(3) & (((!\memory|Z~157_q\ & !\MemoryAccess|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \memory|Z~221_q\,
	datac => \memory|Z~157_q\,
	datad => \MemoryAccess|output\(2),
	combout => \memory|Z~417_combout\);

-- Location: LCCOMB_X36_Y37_N0
\memory|Z~418\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~418_combout\ = (\MemoryAccess|output\(2) & ((\memory|Z~417_combout\ & (\memory|Z~253_q\)) # (!\memory|Z~417_combout\ & ((\memory|Z~189_q\))))) # (!\MemoryAccess|output\(2) & (((\memory|Z~417_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(2),
	datab => \memory|Z~253_q\,
	datac => \memory|Z~189_q\,
	datad => \memory|Z~417_combout\,
	combout => \memory|Z~418_combout\);

-- Location: LCCOMB_X34_Y33_N30
\memory|Z~269feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~269feeder_combout\ = \MemoryDataOuput|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(7),
	combout => \memory|Z~269feeder_combout\);

-- Location: FF_X34_Y33_N31
\memory|Z~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~269feeder_combout\,
	ena => \memory|Z~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~269_q\);

-- Location: LCCOMB_X34_Y33_N16
\memory|Z~205feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~205feeder_combout\ = \MemoryDataOuput|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(7),
	combout => \memory|Z~205feeder_combout\);

-- Location: FF_X34_Y33_N17
\memory|Z~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~205feeder_combout\,
	ena => \memory|Z~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~205_q\);

-- Location: LCCOMB_X34_Y35_N22
\memory|Z~581\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~581_combout\ = !\MemoryDataOuput|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(7),
	combout => \memory|Z~581_combout\);

-- Location: FF_X34_Y35_N23
\memory|Z~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~581_combout\,
	ena => \memory|Z~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~237_q\);

-- Location: LCCOMB_X34_Y35_N0
\memory|Z~582\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~582_combout\ = !\MemoryDataOuput|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(7),
	combout => \memory|Z~582_combout\);

-- Location: FF_X34_Y35_N1
\memory|Z~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~582_combout\,
	ena => \memory|Z~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~173_q\);

-- Location: LCCOMB_X34_Y35_N26
\memory|Z~424\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~424_combout\ = (\MemoryAccess|output\(2) & (((\MemoryAccess|output\(3))))) # (!\MemoryAccess|output\(2) & ((\MemoryAccess|output\(3) & (!\memory|Z~237_q\)) # (!\MemoryAccess|output\(3) & ((!\memory|Z~173_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~237_q\,
	datab => \memory|Z~173_q\,
	datac => \MemoryAccess|output\(2),
	datad => \MemoryAccess|output\(3),
	combout => \memory|Z~424_combout\);

-- Location: LCCOMB_X35_Y33_N20
\memory|Z~425\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~425_combout\ = (\MemoryAccess|output\(2) & ((\memory|Z~424_combout\ & (\memory|Z~269_q\)) # (!\memory|Z~424_combout\ & ((\memory|Z~205_q\))))) # (!\MemoryAccess|output\(2) & (((\memory|Z~424_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(2),
	datab => \memory|Z~269_q\,
	datac => \memory|Z~205_q\,
	datad => \memory|Z~424_combout\,
	combout => \memory|Z~425_combout\);

-- Location: LCCOMB_X39_Y34_N28
\memory|Z~573\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~573_combout\ = !\MemoryDataOuput|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(7),
	combout => \memory|Z~573_combout\);

-- Location: FF_X39_Y34_N29
\memory|Z~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~573_combout\,
	ena => \memory|Z~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~229_q\);

-- Location: LCCOMB_X40_Y34_N24
\memory|Z~576\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~576_combout\ = !\MemoryDataOuput|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(7),
	combout => \memory|Z~576_combout\);

-- Location: FF_X40_Y34_N25
\memory|Z~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~576_combout\,
	ena => \memory|Z~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~261_q\);

-- Location: LCCOMB_X39_Y34_N14
\memory|Z~575\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~575_combout\ = !\MemoryDataOuput|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(7),
	combout => \memory|Z~575_combout\);

-- Location: FF_X39_Y34_N15
\memory|Z~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~575_combout\,
	ena => \memory|Z~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~165_q\);

-- Location: LCCOMB_X38_Y34_N2
\memory|Z~574\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~574_combout\ = !\MemoryDataOuput|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(7),
	combout => \memory|Z~574_combout\);

-- Location: FF_X38_Y34_N3
\memory|Z~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~574_combout\,
	ena => \memory|Z~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~197_q\);

-- Location: LCCOMB_X37_Y34_N24
\memory|Z~419\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~419_combout\ = (\MemoryAccess|output\(2) & (((\MemoryAccess|output\(3)) # (!\memory|Z~197_q\)))) # (!\MemoryAccess|output\(2) & (!\memory|Z~165_q\ & ((!\MemoryAccess|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~165_q\,
	datab => \memory|Z~197_q\,
	datac => \MemoryAccess|output\(2),
	datad => \MemoryAccess|output\(3),
	combout => \memory|Z~419_combout\);

-- Location: LCCOMB_X37_Y34_N26
\memory|Z~420\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~420_combout\ = (\MemoryAccess|output\(3) & ((\memory|Z~419_combout\ & ((!\memory|Z~261_q\))) # (!\memory|Z~419_combout\ & (!\memory|Z~229_q\)))) # (!\MemoryAccess|output\(3) & (((\memory|Z~419_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~229_q\,
	datab => \MemoryAccess|output\(3),
	datac => \memory|Z~261_q\,
	datad => \memory|Z~419_combout\,
	combout => \memory|Z~420_combout\);

-- Location: LCCOMB_X37_Y34_N20
\memory|Z~580\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~580_combout\ = !\MemoryDataOuput|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(7),
	combout => \memory|Z~580_combout\);

-- Location: FF_X37_Y34_N21
\memory|Z~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~580_combout\,
	ena => \memory|Z~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~245_q\);

-- Location: LCCOMB_X36_Y33_N16
\memory|Z~577\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~577_combout\ = !\MemoryDataOuput|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(7),
	combout => \memory|Z~577_combout\);

-- Location: FF_X36_Y33_N17
\memory|Z~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~577_combout\,
	ena => \memory|Z~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~213_q\);

-- Location: LCCOMB_X35_Y35_N22
\memory|Z~578\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~578_combout\ = !\MemoryDataOuput|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(7),
	combout => \memory|Z~578_combout\);

-- Location: FF_X35_Y35_N23
\memory|Z~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~578_combout\,
	ena => \memory|Z~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~181_q\);

-- Location: LCCOMB_X36_Y33_N2
\memory|Z~579\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~579_combout\ = !\MemoryDataOuput|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(7),
	combout => \memory|Z~579_combout\);

-- Location: FF_X36_Y33_N3
\memory|Z~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~579_combout\,
	ena => \memory|Z~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~149_q\);

-- Location: LCCOMB_X36_Y35_N30
\memory|Z~421\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~421_combout\ = (\MemoryAccess|output\(2) & (((\MemoryAccess|output\(3))) # (!\memory|Z~181_q\))) # (!\MemoryAccess|output\(2) & (((!\MemoryAccess|output\(3) & !\memory|Z~149_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(2),
	datab => \memory|Z~181_q\,
	datac => \MemoryAccess|output\(3),
	datad => \memory|Z~149_q\,
	combout => \memory|Z~421_combout\);

-- Location: LCCOMB_X37_Y34_N6
\memory|Z~422\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~422_combout\ = (\MemoryAccess|output\(3) & ((\memory|Z~421_combout\ & (!\memory|Z~245_q\)) # (!\memory|Z~421_combout\ & ((!\memory|Z~213_q\))))) # (!\MemoryAccess|output\(3) & (((\memory|Z~421_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \memory|Z~245_q\,
	datac => \memory|Z~213_q\,
	datad => \memory|Z~421_combout\,
	combout => \memory|Z~422_combout\);

-- Location: LCCOMB_X37_Y34_N4
\memory|Z~423\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~423_combout\ = (\MemoryAccess|output\(1) & ((\MemoryAccess|output\(0)) # ((\memory|Z~420_combout\)))) # (!\MemoryAccess|output\(1) & (!\MemoryAccess|output\(0) & ((\memory|Z~422_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \MemoryAccess|output\(0),
	datac => \memory|Z~420_combout\,
	datad => \memory|Z~422_combout\,
	combout => \memory|Z~423_combout\);

-- Location: LCCOMB_X36_Y34_N18
\memory|Z~426\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~426_combout\ = (\MemoryAccess|output\(0) & ((\memory|Z~423_combout\ & ((\memory|Z~425_combout\))) # (!\memory|Z~423_combout\ & (\memory|Z~418_combout\)))) # (!\MemoryAccess|output\(0) & (((\memory|Z~423_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(0),
	datab => \memory|Z~418_combout\,
	datac => \memory|Z~425_combout\,
	datad => \memory|Z~423_combout\,
	combout => \memory|Z~426_combout\);

-- Location: LCCOMB_X36_Y34_N10
\memory|Z~437\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~437_combout\ = (\MemoryAccess|output\(4) & ((\memory|Z~426_combout\))) # (!\MemoryAccess|output\(4) & (\memory|Z~436_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(4),
	datac => \memory|Z~436_combout\,
	datad => \memory|Z~426_combout\,
	combout => \memory|Z~437_combout\);

-- Location: FF_X36_Y34_N11
\memory|Data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~437_combout\,
	ena => \CU|ALT_INV_current_state.staa_write_mem~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Data_out\(7));

-- Location: LCCOMB_X29_Y35_N0
\MemoryDataInput|output[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryDataInput|output[7]~feeder_combout\ = \memory|Data_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory|Data_out\(7),
	combout => \MemoryDataInput|output[7]~feeder_combout\);

-- Location: FF_X29_Y35_N1
\MemoryDataInput|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemoryDataInput|output[7]~feeder_combout\,
	ena => \CU|WideOr16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryDataInput|output\(7));

-- Location: LCCOMB_X27_Y35_N8
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

-- Location: FF_X27_Y35_N9
\instruction|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instruction|output[7]~feeder_combout\,
	ena => \CU|current_state.load_ir~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction|output\(7));

-- Location: LCCOMB_X27_Y35_N26
\CU|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|Selector4~0_combout\ = (\CU|current_state.decode~q\ & ((\instruction|output\(7)) # ((\instruction|output\(5) & \instruction|output\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction|output\(5),
	datab => \CU|current_state.decode~q\,
	datac => \instruction|output\(7),
	datad => \instruction|output\(6),
	combout => \CU|Selector4~0_combout\);

-- Location: LCCOMB_X27_Y35_N20
\CU|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|Selector4~1_combout\ = (\CU|current_state.load_ir~q\) # (\CU|Selector4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|current_state.load_ir~q\,
	datac => \CU|Selector4~0_combout\,
	combout => \CU|Selector4~1_combout\);

-- Location: FF_X27_Y35_N21
\CU|current_state.decode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.decode~q\);

-- Location: LCCOMB_X27_Y35_N2
\CU|current_state~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|current_state~18_combout\ = (!\instruction|output\(5) & (\CU|current_state.decode~q\ & (!\instruction|output\(7) & !\instruction|output\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction|output\(5),
	datab => \CU|current_state.decode~q\,
	datac => \instruction|output\(7),
	datad => \instruction|output\(6),
	combout => \CU|current_state~18_combout\);

-- Location: FF_X27_Y35_N3
\CU|current_state.ldaa_load_mar\ : dffeas
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
	q => \CU|current_state.ldaa_load_mar~q\);

-- Location: LCCOMB_X30_Y35_N6
\CU|current_state.ldaa_read_mem~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|current_state.ldaa_read_mem~feeder_combout\ = \CU|current_state.ldaa_load_mar~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|current_state.ldaa_load_mar~q\,
	combout => \CU|current_state.ldaa_read_mem~feeder_combout\);

-- Location: FF_X30_Y35_N7
\CU|current_state.ldaa_read_mem\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|current_state.ldaa_read_mem~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.ldaa_read_mem~q\);

-- Location: LCCOMB_X30_Y35_N20
\CU|current_state.ldaa_load_mdri~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|current_state.ldaa_load_mdri~feeder_combout\ = \CU|current_state.ldaa_read_mem~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CU|current_state.ldaa_read_mem~q\,
	combout => \CU|current_state.ldaa_load_mdri~feeder_combout\);

-- Location: FF_X30_Y35_N21
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

-- Location: LCCOMB_X30_Y35_N0
\CU|current_state.ldaa_load_a~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|current_state.ldaa_load_a~feeder_combout\ = \CU|current_state.ldaa_load_mdri~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CU|current_state.ldaa_load_mdri~q\,
	combout => \CU|current_state.ldaa_load_a~feeder_combout\);

-- Location: FF_X30_Y35_N1
\CU|current_state.ldaa_load_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|current_state.ldaa_load_a~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.ldaa_load_a~q\);

-- Location: FF_X29_Y35_N13
\accumulator|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \accumulator|output[2]~12_combout\,
	asdata => \MemoryDataInput|output\(2),
	sload => \CU|current_state.ldaa_load_a~q\,
	ena => \CU|ToALoad~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulator|output\(2));

-- Location: LCCOMB_X31_Y33_N10
\MemoryDataOuput|output[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryDataOuput|output[2]~feeder_combout\ = \accumulator|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \accumulator|output\(2),
	combout => \MemoryDataOuput|output[2]~feeder_combout\);

-- Location: FF_X31_Y33_N11
\MemoryDataOuput|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemoryDataOuput|output[2]~feeder_combout\,
	ena => \CU|current_state.staa_load_mdro~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryDataOuput|output\(2));

-- Location: LCCOMB_X34_Y33_N22
\memory|Z~519\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~519_combout\ = !\MemoryDataOuput|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(2),
	combout => \memory|Z~519_combout\);

-- Location: FF_X34_Y33_N23
\memory|Z~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~519_combout\,
	ena => \memory|Z~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~264_q\);

-- Location: FF_X34_Y35_N19
\memory|Z~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(2),
	sload => VCC,
	ena => \memory|Z~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~232_q\);

-- Location: FF_X34_Y35_N25
\memory|Z~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(2),
	sload => VCC,
	ena => \memory|Z~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~168_q\);

-- Location: LCCOMB_X34_Y33_N28
\memory|Z~518\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~518_combout\ = !\MemoryDataOuput|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(2),
	combout => \memory|Z~518_combout\);

-- Location: FF_X34_Y33_N29
\memory|Z~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~518_combout\,
	ena => \memory|Z~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~200_q\);

-- Location: LCCOMB_X34_Y35_N24
\memory|Z~319\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~319_combout\ = (\MemoryAccess|output\(3) & (\MemoryAccess|output\(2))) # (!\MemoryAccess|output\(3) & ((\MemoryAccess|output\(2) & ((!\memory|Z~200_q\))) # (!\MemoryAccess|output\(2) & (\memory|Z~168_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \MemoryAccess|output\(2),
	datac => \memory|Z~168_q\,
	datad => \memory|Z~200_q\,
	combout => \memory|Z~319_combout\);

-- Location: LCCOMB_X34_Y35_N18
\memory|Z~320\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~320_combout\ = (\MemoryAccess|output\(3) & ((\memory|Z~319_combout\ & (!\memory|Z~264_q\)) # (!\memory|Z~319_combout\ & ((\memory|Z~232_q\))))) # (!\MemoryAccess|output\(3) & (((\memory|Z~319_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \memory|Z~264_q\,
	datac => \memory|Z~232_q\,
	datad => \memory|Z~319_combout\,
	combout => \memory|Z~320_combout\);

-- Location: LCCOMB_X38_Y34_N14
\memory|Z~512\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~512_combout\ = !\MemoryDataOuput|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(2),
	combout => \memory|Z~512_combout\);

-- Location: FF_X38_Y34_N15
\memory|Z~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~512_combout\,
	ena => \memory|Z~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~192_q\);

-- Location: LCCOMB_X38_Y34_N16
\memory|Z~513\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~513_combout\ = !\MemoryDataOuput|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(2),
	combout => \memory|Z~513_combout\);

-- Location: FF_X38_Y34_N17
\memory|Z~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~513_combout\,
	ena => \memory|Z~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~256_q\);

-- Location: FF_X39_Y34_N9
\memory|Z~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(2),
	sload => VCC,
	ena => \memory|Z~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~224_q\);

-- Location: FF_X39_Y34_N7
\memory|Z~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(2),
	sload => VCC,
	ena => \memory|Z~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~160_q\);

-- Location: LCCOMB_X39_Y34_N6
\memory|Z~312\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~312_combout\ = (\MemoryAccess|output\(3) & ((\memory|Z~224_q\) # ((\MemoryAccess|output\(2))))) # (!\MemoryAccess|output\(3) & (((\memory|Z~160_q\ & !\MemoryAccess|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \memory|Z~224_q\,
	datac => \memory|Z~160_q\,
	datad => \MemoryAccess|output\(2),
	combout => \memory|Z~312_combout\);

-- Location: LCCOMB_X38_Y36_N30
\memory|Z~313\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~313_combout\ = (\MemoryAccess|output\(2) & ((\memory|Z~312_combout\ & ((!\memory|Z~256_q\))) # (!\memory|Z~312_combout\ & (!\memory|Z~192_q\)))) # (!\MemoryAccess|output\(2) & (((\memory|Z~312_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(2),
	datab => \memory|Z~192_q\,
	datac => \memory|Z~256_q\,
	datad => \memory|Z~312_combout\,
	combout => \memory|Z~313_combout\);

-- Location: LCCOMB_X38_Y33_N0
\memory|Z~176feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~176feeder_combout\ = \MemoryDataOuput|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(2),
	combout => \memory|Z~176feeder_combout\);

-- Location: FF_X38_Y33_N1
\memory|Z~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~176feeder_combout\,
	ena => \memory|Z~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~176_q\);

-- Location: FF_X37_Y35_N27
\memory|Z~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(2),
	sload => VCC,
	ena => \memory|Z~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~240_q\);

-- Location: LCCOMB_X36_Y33_N22
\memory|Z~517\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~517_combout\ = !\MemoryDataOuput|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(2),
	combout => \memory|Z~517_combout\);

-- Location: FF_X36_Y33_N23
\memory|Z~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~517_combout\,
	ena => \memory|Z~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~144_q\);

-- Location: LCCOMB_X36_Y33_N4
\memory|Z~516\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~516_combout\ = !\MemoryDataOuput|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(2),
	combout => \memory|Z~516_combout\);

-- Location: FF_X36_Y33_N5
\memory|Z~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~516_combout\,
	ena => \memory|Z~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~208_q\);

-- Location: LCCOMB_X37_Y35_N0
\memory|Z~316\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~316_combout\ = (\MemoryAccess|output\(2) & (((\MemoryAccess|output\(3))))) # (!\MemoryAccess|output\(2) & ((\MemoryAccess|output\(3) & ((!\memory|Z~208_q\))) # (!\MemoryAccess|output\(3) & (!\memory|Z~144_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~144_q\,
	datab => \MemoryAccess|output\(2),
	datac => \MemoryAccess|output\(3),
	datad => \memory|Z~208_q\,
	combout => \memory|Z~316_combout\);

-- Location: LCCOMB_X37_Y35_N26
\memory|Z~317\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~317_combout\ = (\MemoryAccess|output\(2) & ((\memory|Z~316_combout\ & ((\memory|Z~240_q\))) # (!\memory|Z~316_combout\ & (\memory|Z~176_q\)))) # (!\MemoryAccess|output\(2) & (((\memory|Z~316_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(2),
	datab => \memory|Z~176_q\,
	datac => \memory|Z~240_q\,
	datad => \memory|Z~316_combout\,
	combout => \memory|Z~317_combout\);

-- Location: LCCOMB_X37_Y37_N10
\memory|Z~514\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~514_combout\ = !\MemoryDataOuput|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(2),
	combout => \memory|Z~514_combout\);

-- Location: LCCOMB_X35_Y37_N6
\memory|Z~216feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~216feeder_combout\ = \memory|Z~514_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory|Z~514_combout\,
	combout => \memory|Z~216feeder_combout\);

-- Location: FF_X35_Y37_N7
\memory|Z~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~216feeder_combout\,
	ena => \memory|Z~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~216_q\);

-- Location: FF_X36_Y37_N17
\memory|Z~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(2),
	sload => VCC,
	ena => \memory|Z~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~248_q\);

-- Location: LCCOMB_X37_Y37_N4
\memory|Z~515\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~515_combout\ = !\MemoryDataOuput|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(2),
	combout => \memory|Z~515_combout\);

-- Location: FF_X37_Y37_N5
\memory|Z~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~515_combout\,
	ena => \memory|Z~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~152_q\);

-- Location: FF_X36_Y37_N19
\memory|Z~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(2),
	sload => VCC,
	ena => \memory|Z~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~184_q\);

-- Location: LCCOMB_X36_Y37_N18
\memory|Z~314\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~314_combout\ = (\MemoryAccess|output\(2) & (((\memory|Z~184_q\) # (\MemoryAccess|output\(3))))) # (!\MemoryAccess|output\(2) & (!\memory|Z~152_q\ & ((!\MemoryAccess|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~152_q\,
	datab => \MemoryAccess|output\(2),
	datac => \memory|Z~184_q\,
	datad => \MemoryAccess|output\(3),
	combout => \memory|Z~314_combout\);

-- Location: LCCOMB_X36_Y37_N16
\memory|Z~315\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~315_combout\ = (\MemoryAccess|output\(3) & ((\memory|Z~314_combout\ & ((\memory|Z~248_q\))) # (!\memory|Z~314_combout\ & (!\memory|Z~216_q\)))) # (!\MemoryAccess|output\(3) & (((\memory|Z~314_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \memory|Z~216_q\,
	datac => \memory|Z~248_q\,
	datad => \memory|Z~314_combout\,
	combout => \memory|Z~315_combout\);

-- Location: LCCOMB_X38_Y36_N12
\memory|Z~318\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~318_combout\ = (\MemoryAccess|output\(0) & ((\MemoryAccess|output\(1)) # ((\memory|Z~315_combout\)))) # (!\MemoryAccess|output\(0) & (!\MemoryAccess|output\(1) & (\memory|Z~317_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(0),
	datab => \MemoryAccess|output\(1),
	datac => \memory|Z~317_combout\,
	datad => \memory|Z~315_combout\,
	combout => \memory|Z~318_combout\);

-- Location: LCCOMB_X38_Y36_N22
\memory|Z~321\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~321_combout\ = (\MemoryAccess|output\(1) & ((\memory|Z~318_combout\ & (\memory|Z~320_combout\)) # (!\memory|Z~318_combout\ & ((\memory|Z~313_combout\))))) # (!\MemoryAccess|output\(1) & (((\memory|Z~318_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \memory|Z~320_combout\,
	datac => \memory|Z~313_combout\,
	datad => \memory|Z~318_combout\,
	combout => \memory|Z~321_combout\);

-- Location: FF_X37_Y36_N23
\memory|Z~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(2),
	sload => VCC,
	ena => \memory|Z~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~104_q\);

-- Location: FF_X37_Y36_N1
\memory|Z~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(2),
	sload => VCC,
	ena => \memory|Z~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~96_q\);

-- Location: LCCOMB_X36_Y36_N28
\memory|Z~520\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~520_combout\ = !\MemoryDataOuput|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(2),
	combout => \memory|Z~520_combout\);

-- Location: FF_X36_Y36_N29
\memory|Z~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~520_combout\,
	ena => \memory|Z~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~88_q\);

-- Location: FF_X36_Y36_N11
\memory|Z~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(2),
	sload => VCC,
	ena => \memory|Z~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~80_q\);

-- Location: LCCOMB_X36_Y36_N10
\memory|Z~322\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~322_combout\ = (\MemoryAccess|output\(1) & (((\MemoryAccess|output\(0))))) # (!\MemoryAccess|output\(1) & ((\MemoryAccess|output\(0) & (!\memory|Z~88_q\)) # (!\MemoryAccess|output\(0) & ((\memory|Z~80_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~88_q\,
	datab => \MemoryAccess|output\(1),
	datac => \memory|Z~80_q\,
	datad => \MemoryAccess|output\(0),
	combout => \memory|Z~322_combout\);

-- Location: LCCOMB_X37_Y36_N0
\memory|Z~323\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~323_combout\ = (\MemoryAccess|output\(1) & ((\memory|Z~322_combout\ & (\memory|Z~104_q\)) # (!\memory|Z~322_combout\ & ((\memory|Z~96_q\))))) # (!\MemoryAccess|output\(1) & (((\memory|Z~322_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \memory|Z~104_q\,
	datac => \memory|Z~96_q\,
	datad => \memory|Z~322_combout\,
	combout => \memory|Z~323_combout\);

-- Location: LCCOMB_X39_Y36_N24
\memory|Z~56feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~56feeder_combout\ = \MemoryDataOuput|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(2),
	combout => \memory|Z~56feeder_combout\);

-- Location: FF_X39_Y36_N25
\memory|Z~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~56feeder_combout\,
	ena => \memory|Z~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~56_q\);

-- Location: LCCOMB_X39_Y33_N8
\memory|Z~522\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~522_combout\ = !\MemoryDataOuput|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(2),
	combout => \memory|Z~522_combout\);

-- Location: FF_X39_Y33_N9
\memory|Z~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~522_combout\,
	ena => \memory|Z~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~72_q\);

-- Location: LCCOMB_X39_Y35_N12
\memory|Z~521\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~521_combout\ = !\MemoryDataOuput|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(2),
	combout => \memory|Z~521_combout\);

-- Location: FF_X39_Y35_N13
\memory|Z~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~521_combout\,
	ena => \memory|Z~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~64_q\);

-- Location: FF_X38_Y35_N1
\memory|Z~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(2),
	sload => VCC,
	ena => \memory|Z~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~48_q\);

-- Location: LCCOMB_X38_Y35_N0
\memory|Z~324\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~324_combout\ = (\MemoryAccess|output\(1) & (((\MemoryAccess|output\(0))) # (!\memory|Z~64_q\))) # (!\MemoryAccess|output\(1) & (((\memory|Z~48_q\ & !\MemoryAccess|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \memory|Z~64_q\,
	datac => \memory|Z~48_q\,
	datad => \MemoryAccess|output\(0),
	combout => \memory|Z~324_combout\);

-- Location: LCCOMB_X38_Y36_N8
\memory|Z~325\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~325_combout\ = (\MemoryAccess|output\(0) & ((\memory|Z~324_combout\ & ((!\memory|Z~72_q\))) # (!\memory|Z~324_combout\ & (\memory|Z~56_q\)))) # (!\MemoryAccess|output\(0) & (((\memory|Z~324_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(0),
	datab => \memory|Z~56_q\,
	datac => \memory|Z~72_q\,
	datad => \memory|Z~324_combout\,
	combout => \memory|Z~325_combout\);

-- Location: LCCOMB_X35_Y36_N14
\memory|Z~523\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~523_combout\ = !\MemoryDataOuput|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(2),
	combout => \memory|Z~523_combout\);

-- Location: FF_X35_Y36_N15
\memory|Z~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~523_combout\,
	ena => \memory|Z~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~32_q\);

-- Location: LCCOMB_X35_Y34_N4
\memory|Z~526\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~526_combout\ = !\MemoryDataOuput|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(2),
	combout => \memory|Z~526_combout\);

-- Location: FF_X35_Y34_N5
\memory|Z~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~526_combout\,
	ena => \memory|Z~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~40_q\);

-- Location: LCCOMB_X38_Y36_N26
\memory|Z~525\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~525_combout\ = !\MemoryDataOuput|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(2),
	combout => \memory|Z~525_combout\);

-- Location: FF_X38_Y36_N27
\memory|Z~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~525_combout\,
	ena => \memory|Z~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~16_q\);

-- Location: LCCOMB_X37_Y33_N6
\memory|Z~524\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~524_combout\ = !\MemoryDataOuput|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(2),
	combout => \memory|Z~524_combout\);

-- Location: FF_X37_Y33_N7
\memory|Z~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~524_combout\,
	ena => \memory|Z~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~24_q\);

-- Location: LCCOMB_X38_Y36_N24
\memory|Z~326\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~326_combout\ = (\MemoryAccess|output\(1) & (((\MemoryAccess|output\(0))))) # (!\MemoryAccess|output\(1) & ((\MemoryAccess|output\(0) & ((!\memory|Z~24_q\))) # (!\MemoryAccess|output\(0) & (!\memory|Z~16_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~16_q\,
	datab => \memory|Z~24_q\,
	datac => \MemoryAccess|output\(1),
	datad => \MemoryAccess|output\(0),
	combout => \memory|Z~326_combout\);

-- Location: LCCOMB_X38_Y36_N2
\memory|Z~327\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~327_combout\ = (\MemoryAccess|output\(1) & ((\memory|Z~326_combout\ & ((!\memory|Z~40_q\))) # (!\memory|Z~326_combout\ & (!\memory|Z~32_q\)))) # (!\MemoryAccess|output\(1) & (((\memory|Z~326_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \memory|Z~32_q\,
	datac => \memory|Z~40_q\,
	datad => \memory|Z~326_combout\,
	combout => \memory|Z~327_combout\);

-- Location: LCCOMB_X38_Y36_N4
\memory|Z~328\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~328_combout\ = (\MemoryAccess|output\(2) & ((\MemoryAccess|output\(3)) # ((\memory|Z~325_combout\)))) # (!\MemoryAccess|output\(2) & (!\MemoryAccess|output\(3) & ((\memory|Z~327_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(2),
	datab => \MemoryAccess|output\(3),
	datac => \memory|Z~325_combout\,
	datad => \memory|Z~327_combout\,
	combout => \memory|Z~328_combout\);

-- Location: LCCOMB_X32_Y35_N12
\memory|Z~528\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~528_combout\ = !\MemoryDataOuput|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(2),
	combout => \memory|Z~528_combout\);

-- Location: FF_X32_Y35_N13
\memory|Z~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~528_combout\,
	ena => \memory|Z~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~136_q\);

-- Location: FF_X32_Y35_N27
\memory|Z~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(2),
	sload => VCC,
	ena => \memory|Z~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~120_q\);

-- Location: LCCOMB_X31_Y35_N4
\memory|Z~527\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~527_combout\ = !\MemoryDataOuput|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(2),
	combout => \memory|Z~527_combout\);

-- Location: FF_X31_Y35_N5
\memory|Z~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~527_combout\,
	ena => \memory|Z~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~128_q\);

-- Location: FF_X31_Y35_N15
\memory|Z~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(2),
	sload => VCC,
	ena => \memory|Z~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~112_q\);

-- Location: LCCOMB_X31_Y35_N14
\memory|Z~329\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~329_combout\ = (\MemoryAccess|output\(0) & (((\MemoryAccess|output\(1))))) # (!\MemoryAccess|output\(0) & ((\MemoryAccess|output\(1) & (!\memory|Z~128_q\)) # (!\MemoryAccess|output\(1) & ((\memory|Z~112_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~128_q\,
	datab => \MemoryAccess|output\(0),
	datac => \memory|Z~112_q\,
	datad => \MemoryAccess|output\(1),
	combout => \memory|Z~329_combout\);

-- Location: LCCOMB_X32_Y35_N26
\memory|Z~330\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~330_combout\ = (\MemoryAccess|output\(0) & ((\memory|Z~329_combout\ & (!\memory|Z~136_q\)) # (!\memory|Z~329_combout\ & ((\memory|Z~120_q\))))) # (!\MemoryAccess|output\(0) & (((\memory|Z~329_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~136_q\,
	datab => \MemoryAccess|output\(0),
	datac => \memory|Z~120_q\,
	datad => \memory|Z~329_combout\,
	combout => \memory|Z~330_combout\);

-- Location: LCCOMB_X38_Y36_N10
\memory|Z~331\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~331_combout\ = (\MemoryAccess|output\(3) & ((\memory|Z~328_combout\ & ((\memory|Z~330_combout\))) # (!\memory|Z~328_combout\ & (\memory|Z~323_combout\)))) # (!\MemoryAccess|output\(3) & (((\memory|Z~328_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~323_combout\,
	datab => \MemoryAccess|output\(3),
	datac => \memory|Z~328_combout\,
	datad => \memory|Z~330_combout\,
	combout => \memory|Z~331_combout\);

-- Location: LCCOMB_X38_Y36_N16
\memory|Z~332\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~332_combout\ = (\MemoryAccess|output\(4) & (\memory|Z~321_combout\)) # (!\MemoryAccess|output\(4) & ((\memory|Z~331_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(4),
	datac => \memory|Z~321_combout\,
	datad => \memory|Z~331_combout\,
	combout => \memory|Z~332_combout\);

-- Location: FF_X38_Y36_N17
\memory|Data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~332_combout\,
	ena => \CU|ALT_INV_current_state.staa_write_mem~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Data_out\(2));

-- Location: LCCOMB_X29_Y35_N26
\MemoryDataInput|output[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryDataInput|output[2]~feeder_combout\ = \memory|Data_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory|Data_out\(2),
	combout => \MemoryDataInput|output[2]~feeder_combout\);

-- Location: FF_X29_Y35_N27
\MemoryDataInput|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemoryDataInput|output[2]~feeder_combout\,
	ena => \CU|WideOr16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryDataInput|output\(2));

-- Location: FF_X29_Y35_N15
\accumulator|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \accumulator|output[3]~14_combout\,
	asdata => \MemoryDataInput|output\(3),
	sload => \CU|current_state.ldaa_load_a~q\,
	ena => \CU|ToALoad~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulator|output\(3));

-- Location: LCCOMB_X31_Y34_N10
\MemoryDataOuput|output[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryDataOuput|output[3]~feeder_combout\ = \accumulator|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \accumulator|output\(3),
	combout => \MemoryDataOuput|output[3]~feeder_combout\);

-- Location: FF_X31_Y34_N11
\MemoryDataOuput|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemoryDataOuput|output[3]~feeder_combout\,
	ena => \CU|current_state.staa_load_mdro~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryDataOuput|output\(3));

-- Location: LCCOMB_X39_Y35_N10
\memory|Z~73feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~73feeder_combout\ = \MemoryDataOuput|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(3),
	combout => \memory|Z~73feeder_combout\);

-- Location: FF_X39_Y35_N11
\memory|Z~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~73feeder_combout\,
	ena => \memory|Z~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~73_q\);

-- Location: FF_X39_Y35_N31
\memory|Z~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(3),
	sload => VCC,
	ena => \memory|Z~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~65_q\);

-- Location: LCCOMB_X38_Y35_N8
\memory|Z~538\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~538_combout\ = !\MemoryDataOuput|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(3),
	combout => \memory|Z~538_combout\);

-- Location: FF_X38_Y35_N9
\memory|Z~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~538_combout\,
	ena => \memory|Z~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~49_q\);

-- Location: LCCOMB_X38_Y35_N30
\memory|Z~537\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~537_combout\ = !\MemoryDataOuput|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(3),
	combout => \memory|Z~537_combout\);

-- Location: FF_X38_Y35_N31
\memory|Z~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~537_combout\,
	ena => \memory|Z~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~57_q\);

-- Location: LCCOMB_X39_Y35_N0
\memory|Z~343\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~343_combout\ = (\MemoryAccess|output\(1) & (((\MemoryAccess|output\(0))))) # (!\MemoryAccess|output\(1) & ((\MemoryAccess|output\(0) & ((!\memory|Z~57_q\))) # (!\MemoryAccess|output\(0) & (!\memory|Z~49_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \memory|Z~49_q\,
	datac => \MemoryAccess|output\(0),
	datad => \memory|Z~57_q\,
	combout => \memory|Z~343_combout\);

-- Location: LCCOMB_X39_Y35_N30
\memory|Z~344\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~344_combout\ = (\MemoryAccess|output\(1) & ((\memory|Z~343_combout\ & (\memory|Z~73_q\)) # (!\memory|Z~343_combout\ & ((\memory|Z~65_q\))))) # (!\MemoryAccess|output\(1) & (((\memory|Z~343_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \memory|Z~73_q\,
	datac => \memory|Z~65_q\,
	datad => \memory|Z~343_combout\,
	combout => \memory|Z~344_combout\);

-- Location: FF_X31_Y35_N21
\memory|Z~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(3),
	sload => VCC,
	ena => \memory|Z~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~129_q\);

-- Location: FF_X32_Y35_N25
\memory|Z~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(3),
	sload => VCC,
	ena => \memory|Z~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~137_q\);

-- Location: LCCOMB_X31_Y35_N6
\memory|Z~541\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~541_combout\ = !\MemoryDataOuput|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(3),
	combout => \memory|Z~541_combout\);

-- Location: FF_X31_Y35_N7
\memory|Z~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~541_combout\,
	ena => \memory|Z~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~113_q\);

-- Location: FF_X32_Y35_N11
\memory|Z~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(3),
	sload => VCC,
	ena => \memory|Z~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~121_q\);

-- Location: LCCOMB_X32_Y35_N10
\memory|Z~350\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~350_combout\ = (\MemoryAccess|output\(1) & (((\MemoryAccess|output\(0))))) # (!\MemoryAccess|output\(1) & ((\MemoryAccess|output\(0) & ((\memory|Z~121_q\))) # (!\MemoryAccess|output\(0) & (!\memory|Z~113_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \memory|Z~113_q\,
	datac => \memory|Z~121_q\,
	datad => \MemoryAccess|output\(0),
	combout => \memory|Z~350_combout\);

-- Location: LCCOMB_X32_Y35_N24
\memory|Z~351\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~351_combout\ = (\MemoryAccess|output\(1) & ((\memory|Z~350_combout\ & ((\memory|Z~137_q\))) # (!\memory|Z~350_combout\ & (\memory|Z~129_q\)))) # (!\MemoryAccess|output\(1) & (((\memory|Z~350_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \memory|Z~129_q\,
	datac => \memory|Z~137_q\,
	datad => \memory|Z~350_combout\,
	combout => \memory|Z~351_combout\);

-- Location: LCCOMB_X37_Y33_N16
\memory|Z~25feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~25feeder_combout\ = \MemoryDataOuput|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(3),
	combout => \memory|Z~25feeder_combout\);

-- Location: FF_X37_Y33_N17
\memory|Z~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~25feeder_combout\,
	ena => \memory|Z~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~25_q\);

-- Location: FF_X35_Y34_N17
\memory|Z~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(3),
	sload => VCC,
	ena => \memory|Z~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~41_q\);

-- Location: LCCOMB_X35_Y36_N28
\memory|Z~33feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~33feeder_combout\ = \MemoryDataOuput|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(3),
	combout => \memory|Z~33feeder_combout\);

-- Location: FF_X35_Y36_N29
\memory|Z~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~33feeder_combout\,
	ena => \memory|Z~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~33_q\);

-- Location: FF_X35_Y34_N7
\memory|Z~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(3),
	sload => VCC,
	ena => \memory|Z~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~17_q\);

-- Location: LCCOMB_X35_Y34_N6
\memory|Z~347\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~347_combout\ = (\MemoryAccess|output\(0) & (((\MemoryAccess|output\(1))))) # (!\MemoryAccess|output\(0) & ((\MemoryAccess|output\(1) & (\memory|Z~33_q\)) # (!\MemoryAccess|output\(1) & ((\memory|Z~17_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~33_q\,
	datab => \MemoryAccess|output\(0),
	datac => \memory|Z~17_q\,
	datad => \MemoryAccess|output\(1),
	combout => \memory|Z~347_combout\);

-- Location: LCCOMB_X35_Y34_N16
\memory|Z~348\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~348_combout\ = (\MemoryAccess|output\(0) & ((\memory|Z~347_combout\ & ((\memory|Z~41_q\))) # (!\memory|Z~347_combout\ & (\memory|Z~25_q\)))) # (!\MemoryAccess|output\(0) & (((\memory|Z~347_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~25_q\,
	datab => \MemoryAccess|output\(0),
	datac => \memory|Z~41_q\,
	datad => \memory|Z~347_combout\,
	combout => \memory|Z~348_combout\);

-- Location: LCCOMB_X37_Y36_N26
\memory|Z~540\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~540_combout\ = !\MemoryDataOuput|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(3),
	combout => \memory|Z~540_combout\);

-- Location: FF_X37_Y36_N27
\memory|Z~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~540_combout\,
	ena => \memory|Z~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~105_q\);

-- Location: FF_X36_Y36_N5
\memory|Z~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(3),
	sload => VCC,
	ena => \memory|Z~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~89_q\);

-- Location: LCCOMB_X37_Y36_N4
\memory|Z~539\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~539_combout\ = !\MemoryDataOuput|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(3),
	combout => \memory|Z~539_combout\);

-- Location: FF_X37_Y36_N5
\memory|Z~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~539_combout\,
	ena => \memory|Z~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~97_q\);

-- Location: FF_X36_Y36_N7
\memory|Z~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(3),
	sload => VCC,
	ena => \memory|Z~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~81_q\);

-- Location: LCCOMB_X36_Y36_N6
\memory|Z~345\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~345_combout\ = (\MemoryAccess|output\(0) & (((\MemoryAccess|output\(1))))) # (!\MemoryAccess|output\(0) & ((\MemoryAccess|output\(1) & (!\memory|Z~97_q\)) # (!\MemoryAccess|output\(1) & ((\memory|Z~81_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~97_q\,
	datab => \MemoryAccess|output\(0),
	datac => \memory|Z~81_q\,
	datad => \MemoryAccess|output\(1),
	combout => \memory|Z~345_combout\);

-- Location: LCCOMB_X36_Y36_N4
\memory|Z~346\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~346_combout\ = (\MemoryAccess|output\(0) & ((\memory|Z~345_combout\ & (!\memory|Z~105_q\)) # (!\memory|Z~345_combout\ & ((\memory|Z~89_q\))))) # (!\MemoryAccess|output\(0) & (((\memory|Z~345_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~105_q\,
	datab => \MemoryAccess|output\(0),
	datac => \memory|Z~89_q\,
	datad => \memory|Z~345_combout\,
	combout => \memory|Z~346_combout\);

-- Location: LCCOMB_X36_Y34_N12
\memory|Z~349\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~349_combout\ = (\MemoryAccess|output\(2) & (\MemoryAccess|output\(3))) # (!\MemoryAccess|output\(2) & ((\MemoryAccess|output\(3) & ((\memory|Z~346_combout\))) # (!\MemoryAccess|output\(3) & (\memory|Z~348_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(2),
	datab => \MemoryAccess|output\(3),
	datac => \memory|Z~348_combout\,
	datad => \memory|Z~346_combout\,
	combout => \memory|Z~349_combout\);

-- Location: LCCOMB_X36_Y34_N22
\memory|Z~352\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~352_combout\ = (\MemoryAccess|output\(2) & ((\memory|Z~349_combout\ & ((\memory|Z~351_combout\))) # (!\memory|Z~349_combout\ & (\memory|Z~344_combout\)))) # (!\MemoryAccess|output\(2) & (((\memory|Z~349_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~344_combout\,
	datab => \MemoryAccess|output\(2),
	datac => \memory|Z~351_combout\,
	datad => \memory|Z~349_combout\,
	combout => \memory|Z~352_combout\);

-- Location: LCCOMB_X34_Y33_N12
\memory|Z~201feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~201feeder_combout\ = \MemoryDataOuput|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(3),
	combout => \memory|Z~201feeder_combout\);

-- Location: FF_X34_Y33_N13
\memory|Z~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~201feeder_combout\,
	ena => \memory|Z~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~201_q\);

-- Location: LCCOMB_X34_Y33_N26
\memory|Z~265feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~265feeder_combout\ = \MemoryDataOuput|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(3),
	combout => \memory|Z~265feeder_combout\);

-- Location: FF_X34_Y33_N27
\memory|Z~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~265feeder_combout\,
	ena => \memory|Z~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~265_q\);

-- Location: LCCOMB_X35_Y35_N2
\memory|Z~535\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~535_combout\ = !\MemoryDataOuput|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(3),
	combout => \memory|Z~535_combout\);

-- Location: FF_X34_Y35_N7
\memory|Z~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory|Z~535_combout\,
	sload => VCC,
	ena => \memory|Z~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~233_q\);

-- Location: LCCOMB_X34_Y33_N4
\memory|Z~536\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~536_combout\ = !\MemoryDataOuput|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(3),
	combout => \memory|Z~536_combout\);

-- Location: LCCOMB_X35_Y33_N0
\memory|Z~169feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~169feeder_combout\ = \memory|Z~536_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory|Z~536_combout\,
	combout => \memory|Z~169feeder_combout\);

-- Location: FF_X35_Y33_N1
\memory|Z~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~169feeder_combout\,
	ena => \memory|Z~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~169_q\);

-- Location: LCCOMB_X35_Y33_N18
\memory|Z~340\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~340_combout\ = (\MemoryAccess|output\(3) & (((\MemoryAccess|output\(2))) # (!\memory|Z~233_q\))) # (!\MemoryAccess|output\(3) & (((!\memory|Z~169_q\ & !\MemoryAccess|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \memory|Z~233_q\,
	datac => \memory|Z~169_q\,
	datad => \MemoryAccess|output\(2),
	combout => \memory|Z~340_combout\);

-- Location: LCCOMB_X35_Y33_N4
\memory|Z~341\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~341_combout\ = (\MemoryAccess|output\(2) & ((\memory|Z~340_combout\ & ((\memory|Z~265_q\))) # (!\memory|Z~340_combout\ & (\memory|Z~201_q\)))) # (!\MemoryAccess|output\(2) & (((\memory|Z~340_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~201_q\,
	datab => \MemoryAccess|output\(2),
	datac => \memory|Z~265_q\,
	datad => \memory|Z~340_combout\,
	combout => \memory|Z~341_combout\);

-- Location: LCCOMB_X36_Y37_N14
\memory|Z~185feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~185feeder_combout\ = \MemoryDataOuput|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(3),
	combout => \memory|Z~185feeder_combout\);

-- Location: FF_X36_Y37_N15
\memory|Z~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~185feeder_combout\,
	ena => \memory|Z~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~185_q\);

-- Location: FF_X36_Y37_N29
\memory|Z~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(3),
	sload => VCC,
	ena => \memory|Z~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~249_q\);

-- Location: LCCOMB_X35_Y37_N28
\memory|Z~217feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~217feeder_combout\ = \MemoryDataOuput|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(3),
	combout => \memory|Z~217feeder_combout\);

-- Location: FF_X35_Y37_N29
\memory|Z~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~217feeder_combout\,
	ena => \memory|Z~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~217_q\);

-- Location: FF_X35_Y37_N3
\memory|Z~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(3),
	sload => VCC,
	ena => \memory|Z~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~153_q\);

-- Location: LCCOMB_X35_Y37_N2
\memory|Z~333\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~333_combout\ = (\MemoryAccess|output\(2) & (((\MemoryAccess|output\(3))))) # (!\MemoryAccess|output\(2) & ((\MemoryAccess|output\(3) & (\memory|Z~217_q\)) # (!\MemoryAccess|output\(3) & ((\memory|Z~153_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~217_q\,
	datab => \MemoryAccess|output\(2),
	datac => \memory|Z~153_q\,
	datad => \MemoryAccess|output\(3),
	combout => \memory|Z~333_combout\);

-- Location: LCCOMB_X36_Y37_N28
\memory|Z~334\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~334_combout\ = (\MemoryAccess|output\(2) & ((\memory|Z~333_combout\ & ((\memory|Z~249_q\))) # (!\memory|Z~333_combout\ & (\memory|Z~185_q\)))) # (!\MemoryAccess|output\(2) & (((\memory|Z~333_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(2),
	datab => \memory|Z~185_q\,
	datac => \memory|Z~249_q\,
	datad => \memory|Z~333_combout\,
	combout => \memory|Z~334_combout\);

-- Location: LCCOMB_X36_Y33_N0
\memory|Z~531\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~531_combout\ = !\MemoryDataOuput|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(3),
	combout => \memory|Z~531_combout\);

-- Location: FF_X36_Y33_N1
\memory|Z~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~531_combout\,
	ena => \memory|Z~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~209_q\);

-- Location: LCCOMB_X37_Y34_N8
\memory|Z~534\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~534_combout\ = !\MemoryDataOuput|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(3),
	combout => \memory|Z~534_combout\);

-- Location: FF_X37_Y34_N9
\memory|Z~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~534_combout\,
	ena => \memory|Z~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~241_q\);

-- Location: LCCOMB_X39_Y35_N18
\memory|Z~532\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~532_combout\ = !\MemoryDataOuput|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(3),
	combout => \memory|Z~532_combout\);

-- Location: FF_X35_Y35_N3
\memory|Z~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \memory|Z~532_combout\,
	sload => VCC,
	ena => \memory|Z~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~177_q\);

-- Location: LCCOMB_X36_Y33_N26
\memory|Z~533\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~533_combout\ = !\MemoryDataOuput|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(3),
	combout => \memory|Z~533_combout\);

-- Location: FF_X36_Y33_N27
\memory|Z~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~533_combout\,
	ena => \memory|Z~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~145_q\);

-- Location: LCCOMB_X36_Y34_N16
\memory|Z~337\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~337_combout\ = (\MemoryAccess|output\(2) & (((\MemoryAccess|output\(3))) # (!\memory|Z~177_q\))) # (!\MemoryAccess|output\(2) & (((!\memory|Z~145_q\ & !\MemoryAccess|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(2),
	datab => \memory|Z~177_q\,
	datac => \memory|Z~145_q\,
	datad => \MemoryAccess|output\(3),
	combout => \memory|Z~337_combout\);

-- Location: LCCOMB_X36_Y34_N26
\memory|Z~338\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~338_combout\ = (\MemoryAccess|output\(3) & ((\memory|Z~337_combout\ & ((!\memory|Z~241_q\))) # (!\memory|Z~337_combout\ & (!\memory|Z~209_q\)))) # (!\MemoryAccess|output\(3) & (((\memory|Z~337_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \memory|Z~209_q\,
	datac => \memory|Z~241_q\,
	datad => \memory|Z~337_combout\,
	combout => \memory|Z~338_combout\);

-- Location: LCCOMB_X39_Y34_N4
\memory|Z~529\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~529_combout\ = !\MemoryDataOuput|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(3),
	combout => \memory|Z~529_combout\);

-- Location: FF_X39_Y34_N5
\memory|Z~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~529_combout\,
	ena => \memory|Z~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~225_q\);

-- Location: FF_X38_Y34_N29
\memory|Z~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(3),
	sload => VCC,
	ena => \memory|Z~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~257_q\);

-- Location: LCCOMB_X39_Y34_N10
\memory|Z~530\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~530_combout\ = !\MemoryDataOuput|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(3),
	combout => \memory|Z~530_combout\);

-- Location: FF_X39_Y34_N11
\memory|Z~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~530_combout\,
	ena => \memory|Z~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~161_q\);

-- Location: FF_X38_Y34_N11
\memory|Z~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(3),
	sload => VCC,
	ena => \memory|Z~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~193_q\);

-- Location: LCCOMB_X38_Y34_N10
\memory|Z~335\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~335_combout\ = (\MemoryAccess|output\(3) & (((\MemoryAccess|output\(2))))) # (!\MemoryAccess|output\(3) & ((\MemoryAccess|output\(2) & ((\memory|Z~193_q\))) # (!\MemoryAccess|output\(2) & (!\memory|Z~161_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \memory|Z~161_q\,
	datac => \memory|Z~193_q\,
	datad => \MemoryAccess|output\(2),
	combout => \memory|Z~335_combout\);

-- Location: LCCOMB_X38_Y34_N28
\memory|Z~336\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~336_combout\ = (\MemoryAccess|output\(3) & ((\memory|Z~335_combout\ & ((\memory|Z~257_q\))) # (!\memory|Z~335_combout\ & (!\memory|Z~225_q\)))) # (!\MemoryAccess|output\(3) & (((\memory|Z~335_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~225_q\,
	datab => \MemoryAccess|output\(3),
	datac => \memory|Z~257_q\,
	datad => \memory|Z~335_combout\,
	combout => \memory|Z~336_combout\);

-- Location: LCCOMB_X36_Y34_N28
\memory|Z~339\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~339_combout\ = (\MemoryAccess|output\(1) & ((\MemoryAccess|output\(0)) # ((\memory|Z~336_combout\)))) # (!\MemoryAccess|output\(1) & (!\MemoryAccess|output\(0) & (\memory|Z~338_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \MemoryAccess|output\(0),
	datac => \memory|Z~338_combout\,
	datad => \memory|Z~336_combout\,
	combout => \memory|Z~339_combout\);

-- Location: LCCOMB_X36_Y34_N6
\memory|Z~342\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~342_combout\ = (\MemoryAccess|output\(0) & ((\memory|Z~339_combout\ & (\memory|Z~341_combout\)) # (!\memory|Z~339_combout\ & ((\memory|Z~334_combout\))))) # (!\MemoryAccess|output\(0) & (((\memory|Z~339_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~341_combout\,
	datab => \MemoryAccess|output\(0),
	datac => \memory|Z~334_combout\,
	datad => \memory|Z~339_combout\,
	combout => \memory|Z~342_combout\);

-- Location: LCCOMB_X36_Y34_N24
\memory|Z~353\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~353_combout\ = (\MemoryAccess|output\(4) & ((\memory|Z~342_combout\))) # (!\MemoryAccess|output\(4) & (\memory|Z~352_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(4),
	datac => \memory|Z~352_combout\,
	datad => \memory|Z~342_combout\,
	combout => \memory|Z~353_combout\);

-- Location: FF_X36_Y34_N25
\memory|Data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~353_combout\,
	ena => \CU|ALT_INV_current_state.staa_write_mem~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Data_out\(3));

-- Location: LCCOMB_X29_Y35_N2
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

-- Location: FF_X29_Y35_N3
\MemoryDataInput|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemoryDataInput|output[3]~feeder_combout\,
	ena => \CU|WideOr16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryDataInput|output\(3));

-- Location: LCCOMB_X27_Y35_N28
\instruction|output[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instruction|output[3]~feeder_combout\ = \MemoryDataInput|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataInput|output\(3),
	combout => \instruction|output[3]~feeder_combout\);

-- Location: FF_X27_Y35_N29
\instruction|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instruction|output[3]~feeder_combout\,
	ena => \CU|current_state.load_ir~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction|output\(3));

-- Location: LCCOMB_X24_Y35_N20
\PC|counter[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|counter[3]~12_combout\ = (\PC|counter\(3) & (\PC|counter[2]~11\ $ (GND))) # (!\PC|counter\(3) & (!\PC|counter[2]~11\ & VCC))
-- \PC|counter[3]~13\ = CARRY((\PC|counter\(3) & !\PC|counter[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|counter\(3),
	datad => VCC,
	cin => \PC|counter[2]~11\,
	combout => \PC|counter[3]~12_combout\,
	cout => \PC|counter[3]~13\);

-- Location: FF_X24_Y35_N21
\PC|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC|counter[3]~12_combout\,
	ena => \CU|current_state.increment_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|counter\(3));

-- Location: LCCOMB_X35_Y35_N6
\MARmux|output[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MARmux|output[3]~3_combout\ = (\CU|WideOr14~0_combout\ & ((\PC|counter\(3)))) # (!\CU|WideOr14~0_combout\ & (\instruction|output\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction|output\(3),
	datac => \PC|counter\(3),
	datad => \CU|WideOr14~0_combout\,
	combout => \MARmux|output[3]~3_combout\);

-- Location: FF_X35_Y35_N7
\MemoryAccess|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MARmux|output[3]~3_combout\,
	ena => \CU|WideOr15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryAccess|output\(3));

-- Location: LCCOMB_X29_Y35_N8
\accumulator|output[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \accumulator|output[0]~8_combout\ = (\MemoryDataInput|output\(0) & (\accumulator|output\(0) $ (VCC))) # (!\MemoryDataInput|output\(0) & (\accumulator|output\(0) & VCC))
-- \accumulator|output[0]~9\ = CARRY((\MemoryDataInput|output\(0) & \accumulator|output\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryDataInput|output\(0),
	datab => \accumulator|output\(0),
	datad => VCC,
	combout => \accumulator|output[0]~8_combout\,
	cout => \accumulator|output[0]~9\);

-- Location: FF_X29_Y35_N9
\accumulator|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \accumulator|output[0]~8_combout\,
	asdata => \MemoryDataInput|output\(0),
	sload => \CU|current_state.ldaa_load_a~q\,
	ena => \CU|ToALoad~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulator|output\(0));

-- Location: LCCOMB_X31_Y34_N8
\MemoryDataOuput|output[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryDataOuput|output[0]~feeder_combout\ = \accumulator|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \accumulator|output\(0),
	combout => \MemoryDataOuput|output[0]~feeder_combout\);

-- Location: FF_X31_Y34_N9
\MemoryDataOuput|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemoryDataOuput|output[0]~feeder_combout\,
	ena => \CU|current_state.staa_load_mdro~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryDataOuput|output\(0));

-- Location: LCCOMB_X34_Y33_N2
\memory|Z~491\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~491_combout\ = !\MemoryDataOuput|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(0),
	combout => \memory|Z~491_combout\);

-- Location: FF_X34_Y33_N3
\memory|Z~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~491_combout\,
	ena => \memory|Z~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~262_q\);

-- Location: FF_X34_Y35_N29
\memory|Z~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(0),
	sload => VCC,
	ena => \memory|Z~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~230_q\);

-- Location: FF_X34_Y35_N3
\memory|Z~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(0),
	sload => VCC,
	ena => \memory|Z~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~166_q\);

-- Location: LCCOMB_X34_Y33_N24
\memory|Z~490\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~490_combout\ = !\MemoryDataOuput|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(0),
	combout => \memory|Z~490_combout\);

-- Location: FF_X34_Y33_N25
\memory|Z~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~490_combout\,
	ena => \memory|Z~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~198_q\);

-- Location: LCCOMB_X34_Y35_N2
\memory|Z~277\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~277_combout\ = (\MemoryAccess|output\(3) & (\MemoryAccess|output\(2))) # (!\MemoryAccess|output\(3) & ((\MemoryAccess|output\(2) & ((!\memory|Z~198_q\))) # (!\MemoryAccess|output\(2) & (\memory|Z~166_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \MemoryAccess|output\(2),
	datac => \memory|Z~166_q\,
	datad => \memory|Z~198_q\,
	combout => \memory|Z~277_combout\);

-- Location: LCCOMB_X34_Y35_N28
\memory|Z~278\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~278_combout\ = (\MemoryAccess|output\(3) & ((\memory|Z~277_combout\ & (!\memory|Z~262_q\)) # (!\memory|Z~277_combout\ & ((\memory|Z~230_q\))))) # (!\MemoryAccess|output\(3) & (((\memory|Z~277_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \memory|Z~262_q\,
	datac => \memory|Z~230_q\,
	datad => \memory|Z~277_combout\,
	combout => \memory|Z~278_combout\);

-- Location: LCCOMB_X38_Y34_N20
\memory|Z~486\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~486_combout\ = !\MemoryDataOuput|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(0),
	combout => \memory|Z~486_combout\);

-- Location: FF_X38_Y34_N21
\memory|Z~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~486_combout\,
	ena => \memory|Z~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~190_q\);

-- Location: LCCOMB_X38_Y34_N26
\memory|Z~487\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~487_combout\ = !\MemoryDataOuput|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(0),
	combout => \memory|Z~487_combout\);

-- Location: FF_X38_Y34_N27
\memory|Z~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~487_combout\,
	ena => \memory|Z~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~254_q\);

-- Location: FF_X39_Y34_N25
\memory|Z~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(0),
	sload => VCC,
	ena => \memory|Z~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~222_q\);

-- Location: FF_X39_Y34_N3
\memory|Z~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(0),
	sload => VCC,
	ena => \memory|Z~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~158_q\);

-- Location: LCCOMB_X39_Y34_N2
\memory|Z~270\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~270_combout\ = (\MemoryAccess|output\(3) & ((\memory|Z~222_q\) # ((\MemoryAccess|output\(2))))) # (!\MemoryAccess|output\(3) & (((\memory|Z~158_q\ & !\MemoryAccess|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \memory|Z~222_q\,
	datac => \memory|Z~158_q\,
	datad => \MemoryAccess|output\(2),
	combout => \memory|Z~270_combout\);

-- Location: LCCOMB_X38_Y34_N0
\memory|Z~271\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~271_combout\ = (\MemoryAccess|output\(2) & ((\memory|Z~270_combout\ & ((!\memory|Z~254_q\))) # (!\memory|Z~270_combout\ & (!\memory|Z~190_q\)))) # (!\MemoryAccess|output\(2) & (((\memory|Z~270_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(2),
	datab => \memory|Z~190_q\,
	datac => \memory|Z~254_q\,
	datad => \memory|Z~270_combout\,
	combout => \memory|Z~271_combout\);

-- Location: LCCOMB_X37_Y34_N16
\memory|Z~489\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~489_combout\ = !\MemoryDataOuput|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(0),
	combout => \memory|Z~489_combout\);

-- Location: FF_X37_Y34_N17
\memory|Z~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~489_combout\,
	ena => \memory|Z~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~238_q\);

-- Location: LCCOMB_X38_Y33_N8
\memory|Z~488\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~488_combout\ = !\MemoryDataOuput|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(0),
	combout => \memory|Z~488_combout\);

-- Location: FF_X38_Y33_N9
\memory|Z~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~488_combout\,
	ena => \memory|Z~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~174_q\);

-- Location: FF_X36_Y33_N25
\memory|Z~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(0),
	sload => VCC,
	ena => \memory|Z~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~206_q\);

-- Location: FF_X36_Y33_N15
\memory|Z~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(0),
	sload => VCC,
	ena => \memory|Z~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~142_q\);

-- Location: LCCOMB_X36_Y33_N14
\memory|Z~274\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~274_combout\ = (\MemoryAccess|output\(3) & ((\memory|Z~206_q\) # ((\MemoryAccess|output\(2))))) # (!\MemoryAccess|output\(3) & (((\memory|Z~142_q\ & !\MemoryAccess|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \memory|Z~206_q\,
	datac => \memory|Z~142_q\,
	datad => \MemoryAccess|output\(2),
	combout => \memory|Z~274_combout\);

-- Location: LCCOMB_X37_Y33_N30
\memory|Z~275\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~275_combout\ = (\MemoryAccess|output\(2) & ((\memory|Z~274_combout\ & (!\memory|Z~238_q\)) # (!\memory|Z~274_combout\ & ((!\memory|Z~174_q\))))) # (!\MemoryAccess|output\(2) & (((\memory|Z~274_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~238_q\,
	datab => \MemoryAccess|output\(2),
	datac => \memory|Z~174_q\,
	datad => \memory|Z~274_combout\,
	combout => \memory|Z~275_combout\);

-- Location: LCCOMB_X35_Y37_N16
\memory|Z~214feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~214feeder_combout\ = \MemoryDataOuput|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(0),
	combout => \memory|Z~214feeder_combout\);

-- Location: FF_X35_Y37_N17
\memory|Z~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~214feeder_combout\,
	ena => \memory|Z~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~214_q\);

-- Location: FF_X36_Y37_N31
\memory|Z~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(0),
	sload => VCC,
	ena => \memory|Z~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~246_q\);

-- Location: LCCOMB_X36_Y37_N24
\memory|Z~182feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~182feeder_combout\ = \MemoryDataOuput|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(0),
	combout => \memory|Z~182feeder_combout\);

-- Location: FF_X36_Y37_N25
\memory|Z~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~182feeder_combout\,
	ena => \memory|Z~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~182_q\);

-- Location: FF_X35_Y37_N31
\memory|Z~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(0),
	sload => VCC,
	ena => \memory|Z~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~150_q\);

-- Location: LCCOMB_X35_Y37_N30
\memory|Z~272\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~272_combout\ = (\MemoryAccess|output\(3) & (((\MemoryAccess|output\(2))))) # (!\MemoryAccess|output\(3) & ((\MemoryAccess|output\(2) & (\memory|Z~182_q\)) # (!\MemoryAccess|output\(2) & ((\memory|Z~150_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \memory|Z~182_q\,
	datac => \memory|Z~150_q\,
	datad => \MemoryAccess|output\(2),
	combout => \memory|Z~272_combout\);

-- Location: LCCOMB_X36_Y37_N30
\memory|Z~273\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~273_combout\ = (\MemoryAccess|output\(3) & ((\memory|Z~272_combout\ & ((\memory|Z~246_q\))) # (!\memory|Z~272_combout\ & (\memory|Z~214_q\)))) # (!\MemoryAccess|output\(3) & (((\memory|Z~272_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \memory|Z~214_q\,
	datac => \memory|Z~246_q\,
	datad => \memory|Z~272_combout\,
	combout => \memory|Z~273_combout\);

-- Location: LCCOMB_X37_Y33_N20
\memory|Z~276\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~276_combout\ = (\MemoryAccess|output\(0) & ((\MemoryAccess|output\(1)) # ((\memory|Z~273_combout\)))) # (!\MemoryAccess|output\(0) & (!\MemoryAccess|output\(1) & (\memory|Z~275_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(0),
	datab => \MemoryAccess|output\(1),
	datac => \memory|Z~275_combout\,
	datad => \memory|Z~273_combout\,
	combout => \memory|Z~276_combout\);

-- Location: LCCOMB_X37_Y33_N22
\memory|Z~279\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~279_combout\ = (\MemoryAccess|output\(1) & ((\memory|Z~276_combout\ & (\memory|Z~278_combout\)) # (!\memory|Z~276_combout\ & ((\memory|Z~271_combout\))))) # (!\MemoryAccess|output\(1) & (((\memory|Z~276_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \memory|Z~278_combout\,
	datac => \memory|Z~271_combout\,
	datad => \memory|Z~276_combout\,
	combout => \memory|Z~279_combout\);

-- Location: LCCOMB_X37_Y36_N18
\memory|Z~102feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~102feeder_combout\ = \MemoryDataOuput|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(0),
	combout => \memory|Z~102feeder_combout\);

-- Location: FF_X37_Y36_N19
\memory|Z~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~102feeder_combout\,
	ena => \memory|Z~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~102_q\);

-- Location: FF_X37_Y36_N13
\memory|Z~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(0),
	sload => VCC,
	ena => \memory|Z~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~94_q\);

-- Location: LCCOMB_X36_Y36_N26
\memory|Z~492\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~492_combout\ = !\MemoryDataOuput|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(0),
	combout => \memory|Z~492_combout\);

-- Location: FF_X36_Y36_N27
\memory|Z~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~492_combout\,
	ena => \memory|Z~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~78_q\);

-- Location: FF_X36_Y36_N13
\memory|Z~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(0),
	sload => VCC,
	ena => \memory|Z~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~86_q\);

-- Location: LCCOMB_X36_Y36_N12
\memory|Z~280\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~280_combout\ = (\MemoryAccess|output\(0) & (((\memory|Z~86_q\) # (\MemoryAccess|output\(1))))) # (!\MemoryAccess|output\(0) & (!\memory|Z~78_q\ & ((!\MemoryAccess|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~78_q\,
	datab => \MemoryAccess|output\(0),
	datac => \memory|Z~86_q\,
	datad => \MemoryAccess|output\(1),
	combout => \memory|Z~280_combout\);

-- Location: LCCOMB_X37_Y36_N12
\memory|Z~281\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~281_combout\ = (\MemoryAccess|output\(1) & ((\memory|Z~280_combout\ & (\memory|Z~102_q\)) # (!\memory|Z~280_combout\ & ((\memory|Z~94_q\))))) # (!\MemoryAccess|output\(1) & (((\memory|Z~280_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \memory|Z~102_q\,
	datac => \memory|Z~94_q\,
	datad => \memory|Z~280_combout\,
	combout => \memory|Z~281_combout\);

-- Location: LCCOMB_X39_Y33_N24
\memory|Z~493\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~493_combout\ = !\MemoryDataOuput|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(0),
	combout => \memory|Z~493_combout\);

-- Location: FF_X39_Y33_N25
\memory|Z~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~493_combout\,
	ena => \memory|Z~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~70_q\);

-- Location: FF_X38_Y35_N5
\memory|Z~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(0),
	sload => VCC,
	ena => \memory|Z~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~54_q\);

-- Location: LCCOMB_X39_Y35_N16
\memory|Z~62feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~62feeder_combout\ = \MemoryDataOuput|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(0),
	combout => \memory|Z~62feeder_combout\);

-- Location: FF_X39_Y35_N17
\memory|Z~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~62feeder_combout\,
	ena => \memory|Z~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~62_q\);

-- Location: FF_X38_Y35_N11
\memory|Z~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(0),
	sload => VCC,
	ena => \memory|Z~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~46_q\);

-- Location: LCCOMB_X38_Y35_N10
\memory|Z~282\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~282_combout\ = (\MemoryAccess|output\(0) & (((\MemoryAccess|output\(1))))) # (!\MemoryAccess|output\(0) & ((\MemoryAccess|output\(1) & (\memory|Z~62_q\)) # (!\MemoryAccess|output\(1) & ((\memory|Z~46_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(0),
	datab => \memory|Z~62_q\,
	datac => \memory|Z~46_q\,
	datad => \MemoryAccess|output\(1),
	combout => \memory|Z~282_combout\);

-- Location: LCCOMB_X38_Y35_N4
\memory|Z~283\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~283_combout\ = (\MemoryAccess|output\(0) & ((\memory|Z~282_combout\ & (!\memory|Z~70_q\)) # (!\memory|Z~282_combout\ & ((\memory|Z~54_q\))))) # (!\MemoryAccess|output\(0) & (((\memory|Z~282_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(0),
	datab => \memory|Z~70_q\,
	datac => \memory|Z~54_q\,
	datad => \memory|Z~282_combout\,
	combout => \memory|Z~283_combout\);

-- Location: LCCOMB_X35_Y36_N16
\memory|Z~494\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~494_combout\ = !\MemoryDataOuput|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(0),
	combout => \memory|Z~494_combout\);

-- Location: FF_X35_Y36_N17
\memory|Z~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~494_combout\,
	ena => \memory|Z~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~30_q\);

-- Location: LCCOMB_X35_Y34_N24
\memory|Z~496\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~496_combout\ = !\MemoryDataOuput|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(0),
	combout => \memory|Z~496_combout\);

-- Location: FF_X35_Y34_N25
\memory|Z~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~496_combout\,
	ena => \memory|Z~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~38_q\);

-- Location: LCCOMB_X38_Y33_N26
\memory|Z~495\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~495_combout\ = !\MemoryDataOuput|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(0),
	combout => \memory|Z~495_combout\);

-- Location: FF_X38_Y33_N27
\memory|Z~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~495_combout\,
	ena => \memory|Z~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~14_q\);

-- Location: FF_X37_Y33_N29
\memory|Z~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(0),
	sload => VCC,
	ena => \memory|Z~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~22_q\);

-- Location: LCCOMB_X37_Y33_N28
\memory|Z~284\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~284_combout\ = (\MemoryAccess|output\(1) & (((\MemoryAccess|output\(0))))) # (!\MemoryAccess|output\(1) & ((\MemoryAccess|output\(0) & ((\memory|Z~22_q\))) # (!\MemoryAccess|output\(0) & (!\memory|Z~14_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \memory|Z~14_q\,
	datac => \memory|Z~22_q\,
	datad => \MemoryAccess|output\(0),
	combout => \memory|Z~284_combout\);

-- Location: LCCOMB_X37_Y33_N18
\memory|Z~285\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~285_combout\ = (\MemoryAccess|output\(1) & ((\memory|Z~284_combout\ & ((!\memory|Z~38_q\))) # (!\memory|Z~284_combout\ & (!\memory|Z~30_q\)))) # (!\MemoryAccess|output\(1) & (((\memory|Z~284_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \memory|Z~30_q\,
	datac => \memory|Z~38_q\,
	datad => \memory|Z~284_combout\,
	combout => \memory|Z~285_combout\);

-- Location: LCCOMB_X37_Y33_N4
\memory|Z~286\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~286_combout\ = (\MemoryAccess|output\(3) & (\MemoryAccess|output\(2))) # (!\MemoryAccess|output\(3) & ((\MemoryAccess|output\(2) & (\memory|Z~283_combout\)) # (!\MemoryAccess|output\(2) & ((\memory|Z~285_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \MemoryAccess|output\(2),
	datac => \memory|Z~283_combout\,
	datad => \memory|Z~285_combout\,
	combout => \memory|Z~286_combout\);

-- Location: LCCOMB_X32_Y35_N20
\memory|Z~499\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~499_combout\ = !\MemoryDataOuput|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(0),
	combout => \memory|Z~499_combout\);

-- Location: FF_X32_Y35_N21
\memory|Z~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~499_combout\,
	ena => \memory|Z~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~134_q\);

-- Location: FF_X40_Y35_N23
\memory|Z~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(0),
	sload => VCC,
	ena => \memory|Z~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~118_q\);

-- Location: LCCOMB_X31_Y35_N10
\memory|Z~498\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~498_combout\ = !\MemoryDataOuput|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(0),
	combout => \memory|Z~498_combout\);

-- Location: FF_X31_Y35_N11
\memory|Z~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~498_combout\,
	ena => \memory|Z~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~110_q\);

-- Location: LCCOMB_X31_Y35_N0
\memory|Z~497\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~497_combout\ = !\MemoryDataOuput|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(0),
	combout => \memory|Z~497_combout\);

-- Location: FF_X31_Y35_N1
\memory|Z~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~497_combout\,
	ena => \memory|Z~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~126_q\);

-- Location: LCCOMB_X35_Y35_N18
\memory|Z~287\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~287_combout\ = (\MemoryAccess|output\(1) & ((\MemoryAccess|output\(0)) # ((!\memory|Z~126_q\)))) # (!\MemoryAccess|output\(1) & (!\MemoryAccess|output\(0) & (!\memory|Z~110_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \MemoryAccess|output\(0),
	datac => \memory|Z~110_q\,
	datad => \memory|Z~126_q\,
	combout => \memory|Z~287_combout\);

-- Location: LCCOMB_X40_Y35_N22
\memory|Z~288\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~288_combout\ = (\MemoryAccess|output\(0) & ((\memory|Z~287_combout\ & (!\memory|Z~134_q\)) # (!\memory|Z~287_combout\ & ((\memory|Z~118_q\))))) # (!\MemoryAccess|output\(0) & (((\memory|Z~287_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~134_q\,
	datab => \MemoryAccess|output\(0),
	datac => \memory|Z~118_q\,
	datad => \memory|Z~287_combout\,
	combout => \memory|Z~288_combout\);

-- Location: LCCOMB_X37_Y33_N10
\memory|Z~289\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~289_combout\ = (\MemoryAccess|output\(3) & ((\memory|Z~286_combout\ & ((\memory|Z~288_combout\))) # (!\memory|Z~286_combout\ & (\memory|Z~281_combout\)))) # (!\MemoryAccess|output\(3) & (((\memory|Z~286_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \memory|Z~281_combout\,
	datac => \memory|Z~286_combout\,
	datad => \memory|Z~288_combout\,
	combout => \memory|Z~289_combout\);

-- Location: LCCOMB_X37_Y33_N8
\memory|Z~290\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~290_combout\ = (\MemoryAccess|output\(4) & (\memory|Z~279_combout\)) # (!\MemoryAccess|output\(4) & ((\memory|Z~289_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemoryAccess|output\(4),
	datac => \memory|Z~279_combout\,
	datad => \memory|Z~289_combout\,
	combout => \memory|Z~290_combout\);

-- Location: FF_X37_Y33_N9
\memory|Data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~290_combout\,
	ena => \CU|ALT_INV_current_state.staa_write_mem~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Data_out\(0));

-- Location: LCCOMB_X29_Y35_N30
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

-- Location: FF_X29_Y35_N31
\MemoryDataInput|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemoryDataInput|output[0]~feeder_combout\,
	ena => \CU|WideOr16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryDataInput|output\(0));

-- Location: FF_X29_Y35_N11
\accumulator|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \accumulator|output[1]~10_combout\,
	asdata => \MemoryDataInput|output\(1),
	sload => \CU|current_state.ldaa_load_a~q\,
	ena => \CU|ToALoad~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulator|output\(1));

-- Location: LCCOMB_X31_Y33_N8
\MemoryDataOuput|output[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryDataOuput|output[1]~feeder_combout\ = \accumulator|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \accumulator|output\(1),
	combout => \MemoryDataOuput|output[1]~feeder_combout\);

-- Location: FF_X31_Y33_N9
\MemoryDataOuput|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemoryDataOuput|output[1]~feeder_combout\,
	ena => \CU|current_state.staa_load_mdro~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryDataOuput|output\(1));

-- Location: FF_X34_Y33_N15
\memory|Z~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(1),
	sload => VCC,
	ena => \memory|Z~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~263_q\);

-- Location: FF_X34_Y33_N5
\memory|Z~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(1),
	sload => VCC,
	ena => \memory|Z~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~199_q\);

-- Location: LCCOMB_X35_Y33_N2
\memory|Z~505\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~505_combout\ = !\MemoryDataOuput|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(1),
	combout => \memory|Z~505_combout\);

-- Location: FF_X35_Y33_N3
\memory|Z~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~505_combout\,
	ena => \memory|Z~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~167_q\);

-- Location: LCCOMB_X34_Y35_N20
\memory|Z~504\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~504_combout\ = !\MemoryDataOuput|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(1),
	combout => \memory|Z~504_combout\);

-- Location: FF_X34_Y35_N21
\memory|Z~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~504_combout\,
	ena => \memory|Z~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~231_q\);

-- Location: LCCOMB_X35_Y33_N28
\memory|Z~298\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~298_combout\ = (\MemoryAccess|output\(2) & (((\MemoryAccess|output\(3))))) # (!\MemoryAccess|output\(2) & ((\MemoryAccess|output\(3) & ((!\memory|Z~231_q\))) # (!\MemoryAccess|output\(3) & (!\memory|Z~167_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(2),
	datab => \memory|Z~167_q\,
	datac => \MemoryAccess|output\(3),
	datad => \memory|Z~231_q\,
	combout => \memory|Z~298_combout\);

-- Location: LCCOMB_X35_Y33_N14
\memory|Z~299\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~299_combout\ = (\MemoryAccess|output\(2) & ((\memory|Z~298_combout\ & (\memory|Z~263_q\)) # (!\memory|Z~298_combout\ & ((\memory|Z~199_q\))))) # (!\MemoryAccess|output\(2) & (((\memory|Z~298_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~263_q\,
	datab => \memory|Z~199_q\,
	datac => \MemoryAccess|output\(2),
	datad => \memory|Z~298_combout\,
	combout => \memory|Z~299_combout\);

-- Location: LCCOMB_X35_Y36_N10
\memory|Z~247feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~247feeder_combout\ = \MemoryDataOuput|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(1),
	combout => \memory|Z~247feeder_combout\);

-- Location: FF_X35_Y36_N11
\memory|Z~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~247feeder_combout\,
	ena => \memory|Z~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~247_q\);

-- Location: LCCOMB_X36_Y37_N12
\memory|Z~183feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~183feeder_combout\ = \MemoryDataOuput|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(1),
	combout => \memory|Z~183feeder_combout\);

-- Location: FF_X36_Y37_N13
\memory|Z~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~183feeder_combout\,
	ena => \memory|Z~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~183_q\);

-- Location: LCCOMB_X35_Y37_N12
\memory|Z~215feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~215feeder_combout\ = \MemoryDataOuput|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(1),
	combout => \memory|Z~215feeder_combout\);

-- Location: FF_X35_Y37_N13
\memory|Z~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~215feeder_combout\,
	ena => \memory|Z~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~215_q\);

-- Location: FF_X35_Y37_N19
\memory|Z~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(1),
	sload => VCC,
	ena => \memory|Z~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~151_q\);

-- Location: LCCOMB_X35_Y37_N18
\memory|Z~291\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~291_combout\ = (\MemoryAccess|output\(2) & (((\MemoryAccess|output\(3))))) # (!\MemoryAccess|output\(2) & ((\MemoryAccess|output\(3) & (\memory|Z~215_q\)) # (!\MemoryAccess|output\(3) & ((\memory|Z~151_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~215_q\,
	datab => \MemoryAccess|output\(2),
	datac => \memory|Z~151_q\,
	datad => \MemoryAccess|output\(3),
	combout => \memory|Z~291_combout\);

-- Location: LCCOMB_X35_Y37_N8
\memory|Z~292\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~292_combout\ = (\MemoryAccess|output\(2) & ((\memory|Z~291_combout\ & (\memory|Z~247_q\)) # (!\memory|Z~291_combout\ & ((\memory|Z~183_q\))))) # (!\MemoryAccess|output\(2) & (((\memory|Z~291_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~247_q\,
	datab => \MemoryAccess|output\(2),
	datac => \memory|Z~183_q\,
	datad => \memory|Z~291_combout\,
	combout => \memory|Z~292_combout\);

-- Location: LCCOMB_X37_Y34_N22
\memory|Z~239feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~239feeder_combout\ = \MemoryDataOuput|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(1),
	combout => \memory|Z~239feeder_combout\);

-- Location: FF_X37_Y34_N23
\memory|Z~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~239feeder_combout\,
	ena => \memory|Z~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~239_q\);

-- Location: LCCOMB_X36_Y33_N12
\memory|Z~502\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~502_combout\ = !\MemoryDataOuput|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(1),
	combout => \memory|Z~502_combout\);

-- Location: FF_X36_Y33_N13
\memory|Z~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~502_combout\,
	ena => \memory|Z~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~207_q\);

-- Location: FF_X35_Y35_N13
\memory|Z~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(1),
	sload => VCC,
	ena => \memory|Z~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~175_q\);

-- Location: LCCOMB_X36_Y33_N30
\memory|Z~503\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~503_combout\ = !\MemoryDataOuput|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(1),
	combout => \memory|Z~503_combout\);

-- Location: FF_X36_Y33_N31
\memory|Z~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~503_combout\,
	ena => \memory|Z~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~143_q\);

-- Location: LCCOMB_X35_Y35_N12
\memory|Z~295\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~295_combout\ = (\MemoryAccess|output\(3) & (\MemoryAccess|output\(2))) # (!\MemoryAccess|output\(3) & ((\MemoryAccess|output\(2) & (\memory|Z~175_q\)) # (!\MemoryAccess|output\(2) & ((!\memory|Z~143_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \MemoryAccess|output\(2),
	datac => \memory|Z~175_q\,
	datad => \memory|Z~143_q\,
	combout => \memory|Z~295_combout\);

-- Location: LCCOMB_X34_Y34_N22
\memory|Z~296\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~296_combout\ = (\MemoryAccess|output\(3) & ((\memory|Z~295_combout\ & (\memory|Z~239_q\)) # (!\memory|Z~295_combout\ & ((!\memory|Z~207_q\))))) # (!\MemoryAccess|output\(3) & (((\memory|Z~295_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~239_q\,
	datab => \memory|Z~207_q\,
	datac => \MemoryAccess|output\(3),
	datad => \memory|Z~295_combout\,
	combout => \memory|Z~296_combout\);

-- Location: LCCOMB_X39_Y34_N16
\memory|Z~500\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~500_combout\ = !\MemoryDataOuput|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(1),
	combout => \memory|Z~500_combout\);

-- Location: FF_X39_Y34_N17
\memory|Z~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~500_combout\,
	ena => \memory|Z~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~223_q\);

-- Location: FF_X38_Y34_N13
\memory|Z~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(1),
	sload => VCC,
	ena => \memory|Z~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~255_q\);

-- Location: LCCOMB_X39_Y34_N30
\memory|Z~501\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~501_combout\ = !\MemoryDataOuput|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(1),
	combout => \memory|Z~501_combout\);

-- Location: FF_X39_Y34_N31
\memory|Z~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~501_combout\,
	ena => \memory|Z~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~159_q\);

-- Location: FF_X38_Y34_N19
\memory|Z~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(1),
	sload => VCC,
	ena => \memory|Z~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~191_q\);

-- Location: LCCOMB_X38_Y34_N18
\memory|Z~293\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~293_combout\ = (\MemoryAccess|output\(3) & (((\MemoryAccess|output\(2))))) # (!\MemoryAccess|output\(3) & ((\MemoryAccess|output\(2) & ((\memory|Z~191_q\))) # (!\MemoryAccess|output\(2) & (!\memory|Z~159_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \memory|Z~159_q\,
	datac => \memory|Z~191_q\,
	datad => \MemoryAccess|output\(2),
	combout => \memory|Z~293_combout\);

-- Location: LCCOMB_X38_Y34_N12
\memory|Z~294\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~294_combout\ = (\MemoryAccess|output\(3) & ((\memory|Z~293_combout\ & ((\memory|Z~255_q\))) # (!\memory|Z~293_combout\ & (!\memory|Z~223_q\)))) # (!\MemoryAccess|output\(3) & (((\memory|Z~293_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \memory|Z~223_q\,
	datac => \memory|Z~255_q\,
	datad => \memory|Z~293_combout\,
	combout => \memory|Z~294_combout\);

-- Location: LCCOMB_X34_Y34_N16
\memory|Z~297\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~297_combout\ = (\MemoryAccess|output\(1) & ((\MemoryAccess|output\(0)) # ((\memory|Z~294_combout\)))) # (!\MemoryAccess|output\(1) & (!\MemoryAccess|output\(0) & (\memory|Z~296_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \MemoryAccess|output\(0),
	datac => \memory|Z~296_combout\,
	datad => \memory|Z~294_combout\,
	combout => \memory|Z~297_combout\);

-- Location: LCCOMB_X34_Y34_N26
\memory|Z~300\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~300_combout\ = (\MemoryAccess|output\(0) & ((\memory|Z~297_combout\ & (\memory|Z~299_combout\)) # (!\memory|Z~297_combout\ & ((\memory|Z~292_combout\))))) # (!\MemoryAccess|output\(0) & (((\memory|Z~297_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~299_combout\,
	datab => \MemoryAccess|output\(0),
	datac => \memory|Z~292_combout\,
	datad => \memory|Z~297_combout\,
	combout => \memory|Z~300_combout\);

-- Location: LCCOMB_X31_Y35_N24
\memory|Z~127feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~127feeder_combout\ = \MemoryDataOuput|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(1),
	combout => \memory|Z~127feeder_combout\);

-- Location: FF_X31_Y35_N25
\memory|Z~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~127feeder_combout\,
	ena => \memory|Z~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~127_q\);

-- Location: FF_X32_Y35_N17
\memory|Z~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(1),
	sload => VCC,
	ena => \memory|Z~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~135_q\);

-- Location: LCCOMB_X32_Y35_N22
\memory|Z~119feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~119feeder_combout\ = \MemoryDataOuput|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(1),
	combout => \memory|Z~119feeder_combout\);

-- Location: FF_X32_Y35_N23
\memory|Z~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~119feeder_combout\,
	ena => \memory|Z~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~119_q\);

-- Location: FF_X31_Y35_N3
\memory|Z~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(1),
	sload => VCC,
	ena => \memory|Z~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~111_q\);

-- Location: LCCOMB_X31_Y35_N2
\memory|Z~308\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~308_combout\ = (\MemoryAccess|output\(1) & (((\MemoryAccess|output\(0))))) # (!\MemoryAccess|output\(1) & ((\MemoryAccess|output\(0) & (\memory|Z~119_q\)) # (!\MemoryAccess|output\(0) & ((\memory|Z~111_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \memory|Z~119_q\,
	datac => \memory|Z~111_q\,
	datad => \MemoryAccess|output\(0),
	combout => \memory|Z~308_combout\);

-- Location: LCCOMB_X32_Y35_N16
\memory|Z~309\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~309_combout\ = (\MemoryAccess|output\(1) & ((\memory|Z~308_combout\ & ((\memory|Z~135_q\))) # (!\memory|Z~308_combout\ & (\memory|Z~127_q\)))) # (!\MemoryAccess|output\(1) & (((\memory|Z~308_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \memory|Z~127_q\,
	datac => \memory|Z~135_q\,
	datad => \memory|Z~308_combout\,
	combout => \memory|Z~309_combout\);

-- Location: LCCOMB_X39_Y33_N6
\memory|Z~71feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~71feeder_combout\ = \MemoryDataOuput|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(1),
	combout => \memory|Z~71feeder_combout\);

-- Location: FF_X39_Y33_N7
\memory|Z~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~71feeder_combout\,
	ena => \memory|Z~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~71_q\);

-- Location: FF_X39_Y35_N15
\memory|Z~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(1),
	sload => VCC,
	ena => \memory|Z~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~63_q\);

-- Location: LCCOMB_X38_Y35_N16
\memory|Z~506\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~506_combout\ = !\MemoryDataOuput|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(1),
	combout => \memory|Z~506_combout\);

-- Location: FF_X38_Y35_N17
\memory|Z~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~506_combout\,
	ena => \memory|Z~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~55_q\);

-- Location: FF_X38_Y35_N15
\memory|Z~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(1),
	sload => VCC,
	ena => \memory|Z~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~47_q\);

-- Location: LCCOMB_X38_Y35_N14
\memory|Z~301\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~301_combout\ = (\MemoryAccess|output\(1) & (((\MemoryAccess|output\(0))))) # (!\MemoryAccess|output\(1) & ((\MemoryAccess|output\(0) & (!\memory|Z~55_q\)) # (!\MemoryAccess|output\(0) & ((\memory|Z~47_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \memory|Z~55_q\,
	datac => \memory|Z~47_q\,
	datad => \MemoryAccess|output\(0),
	combout => \memory|Z~301_combout\);

-- Location: LCCOMB_X39_Y35_N14
\memory|Z~302\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~302_combout\ = (\MemoryAccess|output\(1) & ((\memory|Z~301_combout\ & (\memory|Z~71_q\)) # (!\memory|Z~301_combout\ & ((\memory|Z~63_q\))))) # (!\MemoryAccess|output\(1) & (((\memory|Z~301_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \memory|Z~71_q\,
	datac => \memory|Z~63_q\,
	datad => \memory|Z~301_combout\,
	combout => \memory|Z~302_combout\);

-- Location: LCCOMB_X37_Y33_N0
\memory|Z~509\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~509_combout\ = !\MemoryDataOuput|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(1),
	combout => \memory|Z~509_combout\);

-- Location: FF_X37_Y33_N1
\memory|Z~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~509_combout\,
	ena => \memory|Z~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~23_q\);

-- Location: LCCOMB_X34_Y34_N2
\memory|Z~511\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~511_combout\ = !\MemoryDataOuput|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(1),
	combout => \memory|Z~511_combout\);

-- Location: LCCOMB_X35_Y34_N10
\memory|Z~39feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~39feeder_combout\ = \memory|Z~511_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory|Z~511_combout\,
	combout => \memory|Z~39feeder_combout\);

-- Location: FF_X35_Y34_N11
\memory|Z~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~39feeder_combout\,
	ena => \memory|Z~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~39_q\);

-- Location: LCCOMB_X35_Y36_N0
\memory|Z~510\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~510_combout\ = !\MemoryDataOuput|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(1),
	combout => \memory|Z~510_combout\);

-- Location: FF_X35_Y36_N1
\memory|Z~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~510_combout\,
	ena => \memory|Z~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~31_q\);

-- Location: FF_X34_Y34_N13
\memory|Z~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(1),
	sload => VCC,
	ena => \memory|Z~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~15_q\);

-- Location: LCCOMB_X34_Y34_N12
\memory|Z~305\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~305_combout\ = (\MemoryAccess|output\(0) & (((\MemoryAccess|output\(1))))) # (!\MemoryAccess|output\(0) & ((\MemoryAccess|output\(1) & (!\memory|Z~31_q\)) # (!\MemoryAccess|output\(1) & ((\memory|Z~15_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(0),
	datab => \memory|Z~31_q\,
	datac => \memory|Z~15_q\,
	datad => \MemoryAccess|output\(1),
	combout => \memory|Z~305_combout\);

-- Location: LCCOMB_X34_Y34_N30
\memory|Z~306\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~306_combout\ = (\MemoryAccess|output\(0) & ((\memory|Z~305_combout\ & ((!\memory|Z~39_q\))) # (!\memory|Z~305_combout\ & (!\memory|Z~23_q\)))) # (!\MemoryAccess|output\(0) & (((\memory|Z~305_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(0),
	datab => \memory|Z~23_q\,
	datac => \memory|Z~39_q\,
	datad => \memory|Z~305_combout\,
	combout => \memory|Z~306_combout\);

-- Location: LCCOMB_X37_Y36_N2
\memory|Z~508\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~508_combout\ = !\MemoryDataOuput|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(1),
	combout => \memory|Z~508_combout\);

-- Location: FF_X37_Y36_N3
\memory|Z~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~508_combout\,
	ena => \memory|Z~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~103_q\);

-- Location: FF_X36_Y36_N9
\memory|Z~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(1),
	sload => VCC,
	ena => \memory|Z~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~87_q\);

-- Location: LCCOMB_X37_Y36_N28
\memory|Z~507\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~507_combout\ = !\MemoryDataOuput|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(1),
	combout => \memory|Z~507_combout\);

-- Location: FF_X37_Y36_N29
\memory|Z~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~507_combout\,
	ena => \memory|Z~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~95_q\);

-- Location: FF_X36_Y36_N3
\memory|Z~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(1),
	sload => VCC,
	ena => \memory|Z~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~79_q\);

-- Location: LCCOMB_X36_Y36_N2
\memory|Z~303\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~303_combout\ = (\MemoryAccess|output\(1) & (((\MemoryAccess|output\(0))) # (!\memory|Z~95_q\))) # (!\MemoryAccess|output\(1) & (((\memory|Z~79_q\ & !\MemoryAccess|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~95_q\,
	datab => \MemoryAccess|output\(1),
	datac => \memory|Z~79_q\,
	datad => \MemoryAccess|output\(0),
	combout => \memory|Z~303_combout\);

-- Location: LCCOMB_X36_Y36_N8
\memory|Z~304\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~304_combout\ = (\MemoryAccess|output\(0) & ((\memory|Z~303_combout\ & (!\memory|Z~103_q\)) # (!\memory|Z~303_combout\ & ((\memory|Z~87_q\))))) # (!\MemoryAccess|output\(0) & (((\memory|Z~303_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~103_q\,
	datab => \MemoryAccess|output\(0),
	datac => \memory|Z~87_q\,
	datad => \memory|Z~303_combout\,
	combout => \memory|Z~304_combout\);

-- Location: LCCOMB_X34_Y34_N28
\memory|Z~307\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~307_combout\ = (\MemoryAccess|output\(2) & (\MemoryAccess|output\(3))) # (!\MemoryAccess|output\(2) & ((\MemoryAccess|output\(3) & ((\memory|Z~304_combout\))) # (!\MemoryAccess|output\(3) & (\memory|Z~306_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(2),
	datab => \MemoryAccess|output\(3),
	datac => \memory|Z~306_combout\,
	datad => \memory|Z~304_combout\,
	combout => \memory|Z~307_combout\);

-- Location: LCCOMB_X34_Y34_N10
\memory|Z~310\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~310_combout\ = (\MemoryAccess|output\(2) & ((\memory|Z~307_combout\ & (\memory|Z~309_combout\)) # (!\memory|Z~307_combout\ & ((\memory|Z~302_combout\))))) # (!\MemoryAccess|output\(2) & (((\memory|Z~307_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~309_combout\,
	datab => \memory|Z~302_combout\,
	datac => \MemoryAccess|output\(2),
	datad => \memory|Z~307_combout\,
	combout => \memory|Z~310_combout\);

-- Location: LCCOMB_X34_Y34_N0
\memory|Z~311\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~311_combout\ = (\MemoryAccess|output\(4) & (\memory|Z~300_combout\)) # (!\MemoryAccess|output\(4) & ((\memory|Z~310_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(4),
	datac => \memory|Z~300_combout\,
	datad => \memory|Z~310_combout\,
	combout => \memory|Z~311_combout\);

-- Location: FF_X34_Y34_N1
\memory|Data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~311_combout\,
	ena => \CU|ALT_INV_current_state.staa_write_mem~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Data_out\(1));

-- Location: LCCOMB_X29_Y35_N4
\MemoryDataInput|output[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryDataInput|output[1]~feeder_combout\ = \memory|Data_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory|Data_out\(1),
	combout => \MemoryDataInput|output[1]~feeder_combout\);

-- Location: FF_X29_Y35_N5
\MemoryDataInput|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemoryDataInput|output[1]~feeder_combout\,
	ena => \CU|WideOr16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryDataInput|output\(1));

-- Location: LCCOMB_X40_Y35_N12
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

-- Location: FF_X40_Y35_N13
\instruction|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instruction|output[1]~feeder_combout\,
	ena => \CU|current_state.load_ir~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction|output\(1));

-- Location: LCCOMB_X35_Y35_N26
\MARmux|output[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MARmux|output[1]~1_combout\ = (\CU|WideOr14~0_combout\ & ((\PC|counter\(1)))) # (!\CU|WideOr14~0_combout\ & (\instruction|output\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction|output\(1),
	datab => \CU|WideOr14~0_combout\,
	datad => \PC|counter\(1),
	combout => \MARmux|output[1]~1_combout\);

-- Location: FF_X35_Y35_N27
\MemoryAccess|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MARmux|output[1]~1_combout\,
	ena => \CU|WideOr15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryAccess|output\(1));

-- Location: LCCOMB_X31_Y34_N16
\MemoryDataOuput|output[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryDataOuput|output[4]~feeder_combout\ = \accumulator|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \accumulator|output\(4),
	combout => \MemoryDataOuput|output[4]~feeder_combout\);

-- Location: FF_X31_Y34_N17
\MemoryDataOuput|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemoryDataOuput|output[4]~feeder_combout\,
	ena => \CU|current_state.staa_load_mdro~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryDataOuput|output\(4));

-- Location: FF_X37_Y36_N31
\memory|Z~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(4),
	sload => VCC,
	ena => \memory|Z~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~106_q\);

-- Location: FF_X37_Y36_N25
\memory|Z~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(4),
	sload => VCC,
	ena => \memory|Z~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~98_q\);

-- Location: LCCOMB_X36_Y36_N16
\memory|Z~546\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~546_combout\ = !\MemoryDataOuput|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(4),
	combout => \memory|Z~546_combout\);

-- Location: FF_X36_Y36_N17
\memory|Z~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~546_combout\,
	ena => \memory|Z~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~90_q\);

-- Location: FF_X36_Y36_N15
\memory|Z~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(4),
	sload => VCC,
	ena => \memory|Z~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~82_q\);

-- Location: LCCOMB_X36_Y36_N14
\memory|Z~364\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~364_combout\ = (\MemoryAccess|output\(1) & (((\MemoryAccess|output\(0))))) # (!\MemoryAccess|output\(1) & ((\MemoryAccess|output\(0) & (!\memory|Z~90_q\)) # (!\MemoryAccess|output\(0) & ((\memory|Z~82_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~90_q\,
	datab => \MemoryAccess|output\(1),
	datac => \memory|Z~82_q\,
	datad => \MemoryAccess|output\(0),
	combout => \memory|Z~364_combout\);

-- Location: LCCOMB_X37_Y36_N24
\memory|Z~365\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~365_combout\ = (\MemoryAccess|output\(1) & ((\memory|Z~364_combout\ & (\memory|Z~106_q\)) # (!\memory|Z~364_combout\ & ((\memory|Z~98_q\))))) # (!\MemoryAccess|output\(1) & (((\memory|Z~364_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \memory|Z~106_q\,
	datac => \memory|Z~98_q\,
	datad => \memory|Z~364_combout\,
	combout => \memory|Z~365_combout\);

-- Location: LCCOMB_X32_Y35_N4
\memory|Z~549\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~549_combout\ = !\MemoryDataOuput|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(4),
	combout => \memory|Z~549_combout\);

-- Location: FF_X32_Y35_N5
\memory|Z~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~549_combout\,
	ena => \memory|Z~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~138_q\);

-- Location: FF_X32_Y35_N7
\memory|Z~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(4),
	sload => VCC,
	ena => \memory|Z~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~122_q\);

-- Location: LCCOMB_X31_Y35_N12
\memory|Z~130feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~130feeder_combout\ = \MemoryDataOuput|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(4),
	combout => \memory|Z~130feeder_combout\);

-- Location: FF_X31_Y35_N13
\memory|Z~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~130feeder_combout\,
	ena => \memory|Z~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~130_q\);

-- Location: FF_X31_Y35_N31
\memory|Z~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(4),
	sload => VCC,
	ena => \memory|Z~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~114_q\);

-- Location: LCCOMB_X31_Y35_N30
\memory|Z~371\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~371_combout\ = (\MemoryAccess|output\(0) & (((\MemoryAccess|output\(1))))) # (!\MemoryAccess|output\(0) & ((\MemoryAccess|output\(1) & (\memory|Z~130_q\)) # (!\MemoryAccess|output\(1) & ((\memory|Z~114_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~130_q\,
	datab => \MemoryAccess|output\(0),
	datac => \memory|Z~114_q\,
	datad => \MemoryAccess|output\(1),
	combout => \memory|Z~371_combout\);

-- Location: LCCOMB_X32_Y35_N6
\memory|Z~372\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~372_combout\ = (\MemoryAccess|output\(0) & ((\memory|Z~371_combout\ & (!\memory|Z~138_q\)) # (!\memory|Z~371_combout\ & ((\memory|Z~122_q\))))) # (!\MemoryAccess|output\(0) & (((\memory|Z~371_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~138_q\,
	datab => \MemoryAccess|output\(0),
	datac => \memory|Z~122_q\,
	datad => \memory|Z~371_combout\,
	combout => \memory|Z~372_combout\);

-- Location: LCCOMB_X35_Y36_N18
\memory|Z~34feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~34feeder_combout\ = \MemoryDataOuput|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(4),
	combout => \memory|Z~34feeder_combout\);

-- Location: FF_X35_Y36_N19
\memory|Z~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~34feeder_combout\,
	ena => \memory|Z~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~34_q\);

-- Location: FF_X35_Y34_N1
\memory|Z~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(4),
	sload => VCC,
	ena => \memory|Z~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~42_q\);

-- Location: LCCOMB_X37_Y34_N10
\memory|Z~26feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~26feeder_combout\ = \MemoryDataOuput|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(4),
	combout => \memory|Z~26feeder_combout\);

-- Location: FF_X37_Y34_N11
\memory|Z~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~26feeder_combout\,
	ena => \memory|Z~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~26_q\);

-- Location: FF_X35_Y34_N3
\memory|Z~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(4),
	sload => VCC,
	ena => \memory|Z~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~18_q\);

-- Location: LCCOMB_X35_Y34_N2
\memory|Z~368\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~368_combout\ = (\MemoryAccess|output\(1) & (((\MemoryAccess|output\(0))))) # (!\MemoryAccess|output\(1) & ((\MemoryAccess|output\(0) & (\memory|Z~26_q\)) # (!\MemoryAccess|output\(0) & ((\memory|Z~18_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~26_q\,
	datab => \MemoryAccess|output\(1),
	datac => \memory|Z~18_q\,
	datad => \MemoryAccess|output\(0),
	combout => \memory|Z~368_combout\);

-- Location: LCCOMB_X35_Y34_N0
\memory|Z~369\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~369_combout\ = (\MemoryAccess|output\(1) & ((\memory|Z~368_combout\ & ((\memory|Z~42_q\))) # (!\memory|Z~368_combout\ & (\memory|Z~34_q\)))) # (!\MemoryAccess|output\(1) & (((\memory|Z~368_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \memory|Z~34_q\,
	datac => \memory|Z~42_q\,
	datad => \memory|Z~368_combout\,
	combout => \memory|Z~369_combout\);

-- Location: LCCOMB_X39_Y33_N2
\memory|Z~548\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~548_combout\ = !\MemoryDataOuput|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(4),
	combout => \memory|Z~548_combout\);

-- Location: FF_X39_Y33_N3
\memory|Z~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~548_combout\,
	ena => \memory|Z~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~74_q\);

-- Location: FF_X38_Y35_N27
\memory|Z~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(4),
	sload => VCC,
	ena => \memory|Z~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~58_q\);

-- Location: LCCOMB_X39_Y35_N24
\memory|Z~547\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~547_combout\ = !\MemoryDataOuput|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(4),
	combout => \memory|Z~547_combout\);

-- Location: FF_X39_Y35_N25
\memory|Z~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~547_combout\,
	ena => \memory|Z~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~66_q\);

-- Location: FF_X38_Y35_N13
\memory|Z~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(4),
	sload => VCC,
	ena => \memory|Z~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~50_q\);

-- Location: LCCOMB_X38_Y35_N12
\memory|Z~366\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~366_combout\ = (\MemoryAccess|output\(1) & (((\MemoryAccess|output\(0))) # (!\memory|Z~66_q\))) # (!\MemoryAccess|output\(1) & (((\memory|Z~50_q\ & !\MemoryAccess|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \memory|Z~66_q\,
	datac => \memory|Z~50_q\,
	datad => \MemoryAccess|output\(0),
	combout => \memory|Z~366_combout\);

-- Location: LCCOMB_X38_Y35_N26
\memory|Z~367\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~367_combout\ = (\MemoryAccess|output\(0) & ((\memory|Z~366_combout\ & (!\memory|Z~74_q\)) # (!\memory|Z~366_combout\ & ((\memory|Z~58_q\))))) # (!\MemoryAccess|output\(0) & (((\memory|Z~366_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~74_q\,
	datab => \MemoryAccess|output\(0),
	datac => \memory|Z~58_q\,
	datad => \memory|Z~366_combout\,
	combout => \memory|Z~367_combout\);

-- Location: LCCOMB_X37_Y35_N2
\memory|Z~370\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~370_combout\ = (\MemoryAccess|output\(2) & ((\MemoryAccess|output\(3)) # ((\memory|Z~367_combout\)))) # (!\MemoryAccess|output\(2) & (!\MemoryAccess|output\(3) & (\memory|Z~369_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(2),
	datab => \MemoryAccess|output\(3),
	datac => \memory|Z~369_combout\,
	datad => \memory|Z~367_combout\,
	combout => \memory|Z~370_combout\);

-- Location: LCCOMB_X37_Y35_N4
\memory|Z~373\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~373_combout\ = (\MemoryAccess|output\(3) & ((\memory|Z~370_combout\ & ((\memory|Z~372_combout\))) # (!\memory|Z~370_combout\ & (\memory|Z~365_combout\)))) # (!\MemoryAccess|output\(3) & (((\memory|Z~370_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~365_combout\,
	datab => \MemoryAccess|output\(3),
	datac => \memory|Z~372_combout\,
	datad => \memory|Z~370_combout\,
	combout => \memory|Z~373_combout\);

-- Location: LCCOMB_X34_Y33_N10
\memory|Z~545\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~545_combout\ = !\MemoryDataOuput|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(4),
	combout => \memory|Z~545_combout\);

-- Location: FF_X34_Y33_N11
\memory|Z~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~545_combout\,
	ena => \memory|Z~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~266_q\);

-- Location: FF_X34_Y35_N9
\memory|Z~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(4),
	sload => VCC,
	ena => \memory|Z~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~234_q\);

-- Location: LCCOMB_X34_Y33_N0
\memory|Z~544\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~544_combout\ = !\MemoryDataOuput|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(4),
	combout => \memory|Z~544_combout\);

-- Location: FF_X34_Y33_N1
\memory|Z~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~544_combout\,
	ena => \memory|Z~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~202_q\);

-- Location: FF_X34_Y35_N11
\memory|Z~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(4),
	sload => VCC,
	ena => \memory|Z~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~170_q\);

-- Location: LCCOMB_X34_Y35_N10
\memory|Z~361\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~361_combout\ = (\MemoryAccess|output\(2) & (((\MemoryAccess|output\(3))) # (!\memory|Z~202_q\))) # (!\MemoryAccess|output\(2) & (((\memory|Z~170_q\ & !\MemoryAccess|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~202_q\,
	datab => \MemoryAccess|output\(2),
	datac => \memory|Z~170_q\,
	datad => \MemoryAccess|output\(3),
	combout => \memory|Z~361_combout\);

-- Location: LCCOMB_X34_Y35_N8
\memory|Z~362\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~362_combout\ = (\MemoryAccess|output\(3) & ((\memory|Z~361_combout\ & (!\memory|Z~266_q\)) # (!\memory|Z~361_combout\ & ((\memory|Z~234_q\))))) # (!\MemoryAccess|output\(3) & (((\memory|Z~361_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \memory|Z~266_q\,
	datac => \memory|Z~234_q\,
	datad => \memory|Z~361_combout\,
	combout => \memory|Z~362_combout\);

-- Location: FF_X38_Y34_N5
\memory|Z~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(4),
	sload => VCC,
	ena => \memory|Z~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~258_q\);

-- Location: FF_X38_Y34_N23
\memory|Z~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(4),
	sload => VCC,
	ena => \memory|Z~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~194_q\);

-- Location: LCCOMB_X39_Y34_N12
\memory|Z~226feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~226feeder_combout\ = \MemoryDataOuput|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(4),
	combout => \memory|Z~226feeder_combout\);

-- Location: FF_X39_Y34_N13
\memory|Z~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~226feeder_combout\,
	ena => \memory|Z~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~226_q\);

-- Location: FF_X39_Y34_N23
\memory|Z~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(4),
	sload => VCC,
	ena => \memory|Z~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~162_q\);

-- Location: LCCOMB_X39_Y34_N22
\memory|Z~354\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~354_combout\ = (\MemoryAccess|output\(3) & ((\memory|Z~226_q\) # ((\MemoryAccess|output\(2))))) # (!\MemoryAccess|output\(3) & (((\memory|Z~162_q\ & !\MemoryAccess|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \memory|Z~226_q\,
	datac => \memory|Z~162_q\,
	datad => \MemoryAccess|output\(2),
	combout => \memory|Z~354_combout\);

-- Location: LCCOMB_X38_Y34_N22
\memory|Z~355\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~355_combout\ = (\MemoryAccess|output\(2) & ((\memory|Z~354_combout\ & (\memory|Z~258_q\)) # (!\memory|Z~354_combout\ & ((\memory|Z~194_q\))))) # (!\MemoryAccess|output\(2) & (((\memory|Z~354_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(2),
	datab => \memory|Z~258_q\,
	datac => \memory|Z~194_q\,
	datad => \memory|Z~354_combout\,
	combout => \memory|Z~355_combout\);

-- Location: LCCOMB_X35_Y37_N24
\memory|Z~542\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~542_combout\ = !\MemoryDataOuput|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(4),
	combout => \memory|Z~542_combout\);

-- Location: FF_X35_Y37_N25
\memory|Z~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~542_combout\,
	ena => \memory|Z~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~218_q\);

-- Location: FF_X36_Y37_N21
\memory|Z~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(4),
	sload => VCC,
	ena => \memory|Z~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~250_q\);

-- Location: LCCOMB_X37_Y37_N26
\memory|Z~543\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~543_combout\ = !\MemoryDataOuput|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(4),
	combout => \memory|Z~543_combout\);

-- Location: FF_X37_Y37_N27
\memory|Z~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~543_combout\,
	ena => \memory|Z~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~154_q\);

-- Location: FF_X36_Y37_N3
\memory|Z~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(4),
	sload => VCC,
	ena => \memory|Z~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~186_q\);

-- Location: LCCOMB_X36_Y37_N2
\memory|Z~356\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~356_combout\ = (\MemoryAccess|output\(3) & (((\MemoryAccess|output\(2))))) # (!\MemoryAccess|output\(3) & ((\MemoryAccess|output\(2) & ((\memory|Z~186_q\))) # (!\MemoryAccess|output\(2) & (!\memory|Z~154_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \memory|Z~154_q\,
	datac => \memory|Z~186_q\,
	datad => \MemoryAccess|output\(2),
	combout => \memory|Z~356_combout\);

-- Location: LCCOMB_X36_Y37_N20
\memory|Z~357\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~357_combout\ = (\MemoryAccess|output\(3) & ((\memory|Z~356_combout\ & ((\memory|Z~250_q\))) # (!\memory|Z~356_combout\ & (!\memory|Z~218_q\)))) # (!\MemoryAccess|output\(3) & (((\memory|Z~356_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \memory|Z~218_q\,
	datac => \memory|Z~250_q\,
	datad => \memory|Z~356_combout\,
	combout => \memory|Z~357_combout\);

-- Location: FF_X35_Y35_N21
\memory|Z~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(4),
	sload => VCC,
	ena => \memory|Z~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~178_q\);

-- Location: FF_X37_Y35_N13
\memory|Z~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(4),
	sload => VCC,
	ena => \memory|Z~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~242_q\);

-- Location: FF_X36_Y33_N9
\memory|Z~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(4),
	sload => VCC,
	ena => \memory|Z~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~210_q\);

-- Location: FF_X36_Y33_N11
\memory|Z~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(4),
	sload => VCC,
	ena => \memory|Z~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~146_q\);

-- Location: LCCOMB_X36_Y33_N10
\memory|Z~358\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~358_combout\ = (\MemoryAccess|output\(3) & ((\memory|Z~210_q\) # ((\MemoryAccess|output\(2))))) # (!\MemoryAccess|output\(3) & (((\memory|Z~146_q\ & !\MemoryAccess|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \memory|Z~210_q\,
	datac => \memory|Z~146_q\,
	datad => \MemoryAccess|output\(2),
	combout => \memory|Z~358_combout\);

-- Location: LCCOMB_X37_Y35_N12
\memory|Z~359\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~359_combout\ = (\MemoryAccess|output\(2) & ((\memory|Z~358_combout\ & ((\memory|Z~242_q\))) # (!\memory|Z~358_combout\ & (\memory|Z~178_q\)))) # (!\MemoryAccess|output\(2) & (((\memory|Z~358_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(2),
	datab => \memory|Z~178_q\,
	datac => \memory|Z~242_q\,
	datad => \memory|Z~358_combout\,
	combout => \memory|Z~359_combout\);

-- Location: LCCOMB_X37_Y35_N18
\memory|Z~360\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~360_combout\ = (\MemoryAccess|output\(1) & (\MemoryAccess|output\(0))) # (!\MemoryAccess|output\(1) & ((\MemoryAccess|output\(0) & (\memory|Z~357_combout\)) # (!\MemoryAccess|output\(0) & ((\memory|Z~359_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \MemoryAccess|output\(0),
	datac => \memory|Z~357_combout\,
	datad => \memory|Z~359_combout\,
	combout => \memory|Z~360_combout\);

-- Location: LCCOMB_X37_Y35_N24
\memory|Z~363\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~363_combout\ = (\MemoryAccess|output\(1) & ((\memory|Z~360_combout\ & (\memory|Z~362_combout\)) # (!\memory|Z~360_combout\ & ((\memory|Z~355_combout\))))) # (!\MemoryAccess|output\(1) & (((\memory|Z~360_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~362_combout\,
	datab => \MemoryAccess|output\(1),
	datac => \memory|Z~355_combout\,
	datad => \memory|Z~360_combout\,
	combout => \memory|Z~363_combout\);

-- Location: LCCOMB_X37_Y35_N28
\memory|Z~374\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~374_combout\ = (\MemoryAccess|output\(4) & ((\memory|Z~363_combout\))) # (!\MemoryAccess|output\(4) & (\memory|Z~373_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemoryAccess|output\(4),
	datac => \memory|Z~373_combout\,
	datad => \memory|Z~363_combout\,
	combout => \memory|Z~374_combout\);

-- Location: FF_X37_Y35_N29
\memory|Data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~374_combout\,
	ena => \CU|ALT_INV_current_state.staa_write_mem~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Data_out\(4));

-- Location: LCCOMB_X29_Y35_N24
\MemoryDataInput|output[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryDataInput|output[4]~feeder_combout\ = \memory|Data_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory|Data_out\(4),
	combout => \MemoryDataInput|output[4]~feeder_combout\);

-- Location: FF_X29_Y35_N25
\MemoryDataInput|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemoryDataInput|output[4]~feeder_combout\,
	ena => \CU|WideOr16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryDataInput|output\(4));

-- Location: LCCOMB_X27_Y35_N22
\instruction|output[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instruction|output[4]~feeder_combout\ = \MemoryDataInput|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataInput|output\(4),
	combout => \instruction|output[4]~feeder_combout\);

-- Location: FF_X27_Y35_N23
\instruction|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instruction|output[4]~feeder_combout\,
	ena => \CU|current_state.load_ir~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction|output\(4));

-- Location: LCCOMB_X24_Y35_N22
\PC|counter[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|counter[4]~14_combout\ = (\PC|counter\(4) & (!\PC|counter[3]~13\)) # (!\PC|counter\(4) & ((\PC|counter[3]~13\) # (GND)))
-- \PC|counter[4]~15\ = CARRY((!\PC|counter[3]~13\) # (!\PC|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|counter\(4),
	datad => VCC,
	cin => \PC|counter[3]~13\,
	combout => \PC|counter[4]~14_combout\,
	cout => \PC|counter[4]~15\);

-- Location: FF_X24_Y35_N23
\PC|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC|counter[4]~14_combout\,
	ena => \CU|current_state.increment_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|counter\(4));

-- Location: LCCOMB_X35_Y35_N16
\MARmux|output[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MARmux|output[4]~4_combout\ = (\CU|WideOr14~0_combout\ & ((\PC|counter\(4)))) # (!\CU|WideOr14~0_combout\ & (\instruction|output\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction|output\(4),
	datac => \PC|counter\(4),
	datad => \CU|WideOr14~0_combout\,
	combout => \MARmux|output[4]~4_combout\);

-- Location: FF_X35_Y35_N17
\MemoryAccess|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MARmux|output[4]~4_combout\,
	ena => \CU|WideOr15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryAccess|output\(4));

-- Location: LCCOMB_X30_Y35_N24
\MemoryDataOuput|output[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryDataOuput|output[5]~feeder_combout\ = \accumulator|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \accumulator|output\(5),
	combout => \MemoryDataOuput|output[5]~feeder_combout\);

-- Location: FF_X30_Y35_N25
\MemoryDataOuput|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemoryDataOuput|output[5]~feeder_combout\,
	ena => \CU|current_state.staa_load_mdro~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryDataOuput|output\(5));

-- Location: LCCOMB_X31_Y35_N16
\memory|Z~564\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~564_combout\ = !\MemoryDataOuput|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(5),
	combout => \memory|Z~564_combout\);

-- Location: FF_X31_Y35_N17
\memory|Z~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~564_combout\,
	ena => \memory|Z~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~131_q\);

-- Location: FF_X32_Y35_N9
\memory|Z~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(5),
	sload => VCC,
	ena => \memory|Z~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~139_q\);

-- Location: LCCOMB_X31_Y35_N18
\memory|Z~565\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~565_combout\ = !\MemoryDataOuput|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(5),
	combout => \memory|Z~565_combout\);

-- Location: FF_X31_Y35_N19
\memory|Z~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~565_combout\,
	ena => \memory|Z~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~115_q\);

-- Location: FF_X32_Y35_N3
\memory|Z~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(5),
	sload => VCC,
	ena => \memory|Z~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~123_q\);

-- Location: LCCOMB_X32_Y35_N2
\memory|Z~392\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~392_combout\ = (\MemoryAccess|output\(1) & (((\MemoryAccess|output\(0))))) # (!\MemoryAccess|output\(1) & ((\MemoryAccess|output\(0) & ((\memory|Z~123_q\))) # (!\MemoryAccess|output\(0) & (!\memory|Z~115_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \memory|Z~115_q\,
	datac => \memory|Z~123_q\,
	datad => \MemoryAccess|output\(0),
	combout => \memory|Z~392_combout\);

-- Location: LCCOMB_X32_Y35_N8
\memory|Z~393\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~393_combout\ = (\MemoryAccess|output\(1) & ((\memory|Z~392_combout\ & ((\memory|Z~139_q\))) # (!\memory|Z~392_combout\ & (!\memory|Z~131_q\)))) # (!\MemoryAccess|output\(1) & (((\memory|Z~392_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~131_q\,
	datab => \MemoryAccess|output\(1),
	datac => \memory|Z~139_q\,
	datad => \memory|Z~392_combout\,
	combout => \memory|Z~393_combout\);

-- Location: LCCOMB_X39_Y33_N16
\memory|Z~75feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~75feeder_combout\ = \MemoryDataOuput|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(5),
	combout => \memory|Z~75feeder_combout\);

-- Location: FF_X39_Y33_N17
\memory|Z~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~75feeder_combout\,
	ena => \memory|Z~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~75_q\);

-- Location: FF_X39_Y35_N3
\memory|Z~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(5),
	sload => VCC,
	ena => \memory|Z~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~67_q\);

-- Location: LCCOMB_X39_Y36_N30
\memory|Z~59feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~59feeder_combout\ = \MemoryDataOuput|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(5),
	combout => \memory|Z~59feeder_combout\);

-- Location: FF_X39_Y36_N31
\memory|Z~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~59feeder_combout\,
	ena => \memory|Z~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~59_q\);

-- Location: LCCOMB_X38_Y35_N22
\memory|Z~560\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~560_combout\ = !\MemoryDataOuput|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(5),
	combout => \memory|Z~560_combout\);

-- Location: FF_X38_Y35_N23
\memory|Z~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~560_combout\,
	ena => \memory|Z~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~51_q\);

-- Location: LCCOMB_X39_Y35_N28
\memory|Z~385\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~385_combout\ = (\MemoryAccess|output\(1) & (((\MemoryAccess|output\(0))))) # (!\MemoryAccess|output\(1) & ((\MemoryAccess|output\(0) & (\memory|Z~59_q\)) # (!\MemoryAccess|output\(0) & ((!\memory|Z~51_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \memory|Z~59_q\,
	datac => \MemoryAccess|output\(0),
	datad => \memory|Z~51_q\,
	combout => \memory|Z~385_combout\);

-- Location: LCCOMB_X39_Y35_N2
\memory|Z~386\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~386_combout\ = (\MemoryAccess|output\(1) & ((\memory|Z~385_combout\ & (\memory|Z~75_q\)) # (!\memory|Z~385_combout\ & ((\memory|Z~67_q\))))) # (!\MemoryAccess|output\(1) & (((\memory|Z~385_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \memory|Z~75_q\,
	datac => \memory|Z~67_q\,
	datad => \memory|Z~385_combout\,
	combout => \memory|Z~386_combout\);

-- Location: LCCOMB_X37_Y34_N12
\memory|Z~563\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~563_combout\ = !\MemoryDataOuput|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(5),
	combout => \memory|Z~563_combout\);

-- Location: FF_X37_Y34_N13
\memory|Z~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~563_combout\,
	ena => \memory|Z~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~27_q\);

-- Location: FF_X35_Y34_N21
\memory|Z~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(5),
	sload => VCC,
	ena => \memory|Z~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~43_q\);

-- Location: LCCOMB_X35_Y36_N22
\memory|Z~35feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~35feeder_combout\ = \MemoryDataOuput|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(5),
	combout => \memory|Z~35feeder_combout\);

-- Location: FF_X35_Y36_N23
\memory|Z~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~35feeder_combout\,
	ena => \memory|Z~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~35_q\);

-- Location: FF_X35_Y34_N19
\memory|Z~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(5),
	sload => VCC,
	ena => \memory|Z~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~19_q\);

-- Location: LCCOMB_X35_Y34_N18
\memory|Z~389\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~389_combout\ = (\MemoryAccess|output\(0) & (((\MemoryAccess|output\(1))))) # (!\MemoryAccess|output\(0) & ((\MemoryAccess|output\(1) & (\memory|Z~35_q\)) # (!\MemoryAccess|output\(1) & ((\memory|Z~19_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~35_q\,
	datab => \MemoryAccess|output\(0),
	datac => \memory|Z~19_q\,
	datad => \MemoryAccess|output\(1),
	combout => \memory|Z~389_combout\);

-- Location: LCCOMB_X35_Y34_N20
\memory|Z~390\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~390_combout\ = (\MemoryAccess|output\(0) & ((\memory|Z~389_combout\ & ((\memory|Z~43_q\))) # (!\memory|Z~389_combout\ & (!\memory|Z~27_q\)))) # (!\MemoryAccess|output\(0) & (((\memory|Z~389_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~27_q\,
	datab => \MemoryAccess|output\(0),
	datac => \memory|Z~43_q\,
	datad => \memory|Z~389_combout\,
	combout => \memory|Z~390_combout\);

-- Location: LCCOMB_X37_Y36_N14
\memory|Z~562\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~562_combout\ = !\MemoryDataOuput|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(5),
	combout => \memory|Z~562_combout\);

-- Location: FF_X37_Y36_N15
\memory|Z~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~562_combout\,
	ena => \memory|Z~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~107_q\);

-- Location: LCCOMB_X36_Y36_N0
\memory|Z~561\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~561_combout\ = !\MemoryDataOuput|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(5),
	combout => \memory|Z~561_combout\);

-- Location: FF_X36_Y36_N1
\memory|Z~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~561_combout\,
	ena => \memory|Z~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~91_q\);

-- Location: LCCOMB_X37_Y36_N20
\memory|Z~99feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~99feeder_combout\ = \MemoryDataOuput|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(5),
	combout => \memory|Z~99feeder_combout\);

-- Location: FF_X37_Y36_N21
\memory|Z~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~99feeder_combout\,
	ena => \memory|Z~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~99_q\);

-- Location: FF_X36_Y34_N1
\memory|Z~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(5),
	sload => VCC,
	ena => \memory|Z~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~83_q\);

-- Location: LCCOMB_X36_Y34_N0
\memory|Z~387\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~387_combout\ = (\MemoryAccess|output\(1) & ((\memory|Z~99_q\) # ((\MemoryAccess|output\(0))))) # (!\MemoryAccess|output\(1) & (((\memory|Z~83_q\ & !\MemoryAccess|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~99_q\,
	datab => \MemoryAccess|output\(1),
	datac => \memory|Z~83_q\,
	datad => \MemoryAccess|output\(0),
	combout => \memory|Z~387_combout\);

-- Location: LCCOMB_X36_Y35_N10
\memory|Z~388\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~388_combout\ = (\MemoryAccess|output\(0) & ((\memory|Z~387_combout\ & (!\memory|Z~107_q\)) # (!\memory|Z~387_combout\ & ((!\memory|Z~91_q\))))) # (!\MemoryAccess|output\(0) & (((\memory|Z~387_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~107_q\,
	datab => \MemoryAccess|output\(0),
	datac => \memory|Z~91_q\,
	datad => \memory|Z~387_combout\,
	combout => \memory|Z~388_combout\);

-- Location: LCCOMB_X36_Y35_N0
\memory|Z~391\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~391_combout\ = (\MemoryAccess|output\(2) & (\MemoryAccess|output\(3))) # (!\MemoryAccess|output\(2) & ((\MemoryAccess|output\(3) & ((\memory|Z~388_combout\))) # (!\MemoryAccess|output\(3) & (\memory|Z~390_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(2),
	datab => \MemoryAccess|output\(3),
	datac => \memory|Z~390_combout\,
	datad => \memory|Z~388_combout\,
	combout => \memory|Z~391_combout\);

-- Location: LCCOMB_X36_Y35_N26
\memory|Z~394\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~394_combout\ = (\MemoryAccess|output\(2) & ((\memory|Z~391_combout\ & (\memory|Z~393_combout\)) # (!\memory|Z~391_combout\ & ((\memory|Z~386_combout\))))) # (!\MemoryAccess|output\(2) & (((\memory|Z~391_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~393_combout\,
	datab => \MemoryAccess|output\(2),
	datac => \memory|Z~386_combout\,
	datad => \memory|Z~391_combout\,
	combout => \memory|Z~394_combout\);

-- Location: LCCOMB_X34_Y33_N8
\memory|Z~203feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~203feeder_combout\ = \MemoryDataOuput|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(5),
	combout => \memory|Z~203feeder_combout\);

-- Location: FF_X34_Y33_N9
\memory|Z~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~203feeder_combout\,
	ena => \memory|Z~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~203_q\);

-- Location: LCCOMB_X34_Y33_N18
\memory|Z~267feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~267feeder_combout\ = \MemoryDataOuput|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(5),
	combout => \memory|Z~267feeder_combout\);

-- Location: FF_X34_Y33_N19
\memory|Z~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~267feeder_combout\,
	ena => \memory|Z~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~267_q\);

-- Location: LCCOMB_X34_Y35_N30
\memory|Z~559\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~559_combout\ = !\MemoryDataOuput|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(5),
	combout => \memory|Z~559_combout\);

-- Location: FF_X34_Y35_N31
\memory|Z~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~559_combout\,
	ena => \memory|Z~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~171_q\);

-- Location: LCCOMB_X34_Y35_N4
\memory|Z~558\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~558_combout\ = !\MemoryDataOuput|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(5),
	combout => \memory|Z~558_combout\);

-- Location: FF_X34_Y35_N5
\memory|Z~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~558_combout\,
	ena => \memory|Z~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~235_q\);

-- Location: LCCOMB_X34_Y35_N16
\memory|Z~382\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~382_combout\ = (\MemoryAccess|output\(2) & (((\MemoryAccess|output\(3))))) # (!\MemoryAccess|output\(2) & ((\MemoryAccess|output\(3) & ((!\memory|Z~235_q\))) # (!\MemoryAccess|output\(3) & (!\memory|Z~171_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~171_q\,
	datab => \memory|Z~235_q\,
	datac => \MemoryAccess|output\(2),
	datad => \MemoryAccess|output\(3),
	combout => \memory|Z~382_combout\);

-- Location: LCCOMB_X35_Y33_N10
\memory|Z~383\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~383_combout\ = (\MemoryAccess|output\(2) & ((\memory|Z~382_combout\ & ((\memory|Z~267_q\))) # (!\memory|Z~382_combout\ & (\memory|Z~203_q\)))) # (!\MemoryAccess|output\(2) & (((\memory|Z~382_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~203_q\,
	datab => \memory|Z~267_q\,
	datac => \MemoryAccess|output\(2),
	datad => \memory|Z~382_combout\,
	combout => \memory|Z~383_combout\);

-- Location: FF_X36_Y37_N27
\memory|Z~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(5),
	sload => VCC,
	ena => \memory|Z~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~187_q\);

-- Location: LCCOMB_X35_Y36_N8
\memory|Z~251feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~251feeder_combout\ = \MemoryDataOuput|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(5),
	combout => \memory|Z~251feeder_combout\);

-- Location: FF_X35_Y36_N9
\memory|Z~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~251feeder_combout\,
	ena => \memory|Z~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~251_q\);

-- Location: LCCOMB_X35_Y37_N26
\memory|Z~550\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~550_combout\ = !\MemoryDataOuput|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(5),
	combout => \memory|Z~550_combout\);

-- Location: FF_X35_Y37_N27
\memory|Z~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~550_combout\,
	ena => \memory|Z~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~219_q\);

-- Location: LCCOMB_X37_Y37_N8
\memory|Z~551\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~551_combout\ = !\MemoryDataOuput|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(5),
	combout => \memory|Z~551_combout\);

-- Location: FF_X37_Y37_N9
\memory|Z~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~551_combout\,
	ena => \memory|Z~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~155_q\);

-- Location: LCCOMB_X36_Y35_N2
\memory|Z~375\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~375_combout\ = (\MemoryAccess|output\(2) & (\MemoryAccess|output\(3))) # (!\MemoryAccess|output\(2) & ((\MemoryAccess|output\(3) & (!\memory|Z~219_q\)) # (!\MemoryAccess|output\(3) & ((!\memory|Z~155_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(2),
	datab => \MemoryAccess|output\(3),
	datac => \memory|Z~219_q\,
	datad => \memory|Z~155_q\,
	combout => \memory|Z~375_combout\);

-- Location: LCCOMB_X36_Y35_N4
\memory|Z~376\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~376_combout\ = (\MemoryAccess|output\(2) & ((\memory|Z~375_combout\ & ((\memory|Z~251_q\))) # (!\memory|Z~375_combout\ & (\memory|Z~187_q\)))) # (!\MemoryAccess|output\(2) & (((\memory|Z~375_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~187_q\,
	datab => \memory|Z~251_q\,
	datac => \MemoryAccess|output\(2),
	datad => \memory|Z~375_combout\,
	combout => \memory|Z~376_combout\);

-- Location: LCCOMB_X37_Y35_N30
\memory|Z~557\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~557_combout\ = !\MemoryDataOuput|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(5),
	combout => \memory|Z~557_combout\);

-- Location: FF_X37_Y35_N31
\memory|Z~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~557_combout\,
	ena => \memory|Z~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~243_q\);

-- Location: LCCOMB_X36_Y33_N20
\memory|Z~554\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~554_combout\ = !\MemoryDataOuput|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(5),
	combout => \memory|Z~554_combout\);

-- Location: FF_X36_Y33_N21
\memory|Z~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~554_combout\,
	ena => \memory|Z~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~211_q\);

-- Location: LCCOMB_X35_Y35_N10
\memory|Z~555\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~555_combout\ = !\MemoryDataOuput|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(5),
	combout => \memory|Z~555_combout\);

-- Location: FF_X35_Y35_N11
\memory|Z~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~555_combout\,
	ena => \memory|Z~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~179_q\);

-- Location: LCCOMB_X36_Y33_N6
\memory|Z~556\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~556_combout\ = !\MemoryDataOuput|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MemoryDataOuput|output\(5),
	combout => \memory|Z~556_combout\);

-- Location: FF_X36_Y33_N7
\memory|Z~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~556_combout\,
	ena => \memory|Z~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~147_q\);

-- Location: LCCOMB_X36_Y35_N6
\memory|Z~379\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~379_combout\ = (\MemoryAccess|output\(3) & (((\MemoryAccess|output\(2))))) # (!\MemoryAccess|output\(3) & ((\MemoryAccess|output\(2) & (!\memory|Z~179_q\)) # (!\MemoryAccess|output\(2) & ((!\memory|Z~147_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~179_q\,
	datab => \MemoryAccess|output\(3),
	datac => \MemoryAccess|output\(2),
	datad => \memory|Z~147_q\,
	combout => \memory|Z~379_combout\);

-- Location: LCCOMB_X36_Y35_N8
\memory|Z~380\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~380_combout\ = (\MemoryAccess|output\(3) & ((\memory|Z~379_combout\ & (!\memory|Z~243_q\)) # (!\memory|Z~379_combout\ & ((!\memory|Z~211_q\))))) # (!\MemoryAccess|output\(3) & (((\memory|Z~379_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~243_q\,
	datab => \MemoryAccess|output\(3),
	datac => \memory|Z~211_q\,
	datad => \memory|Z~379_combout\,
	combout => \memory|Z~380_combout\);

-- Location: LCCOMB_X38_Y34_N24
\memory|Z~553\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~553_combout\ = !\MemoryDataOuput|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(5),
	combout => \memory|Z~553_combout\);

-- Location: FF_X38_Y34_N25
\memory|Z~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~553_combout\,
	ena => \memory|Z~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~259_q\);

-- Location: FF_X39_Y34_N1
\memory|Z~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(5),
	sload => VCC,
	ena => \memory|Z~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~227_q\);

-- Location: LCCOMB_X38_Y34_N30
\memory|Z~552\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~552_combout\ = !\MemoryDataOuput|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataOuput|output\(5),
	combout => \memory|Z~552_combout\);

-- Location: FF_X38_Y34_N31
\memory|Z~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~552_combout\,
	ena => \memory|Z~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~195_q\);

-- Location: FF_X39_Y34_N19
\memory|Z~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryDataOuput|output\(5),
	sload => VCC,
	ena => \memory|Z~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Z~163_q\);

-- Location: LCCOMB_X39_Y34_N18
\memory|Z~377\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~377_combout\ = (\MemoryAccess|output\(3) & (((\MemoryAccess|output\(2))))) # (!\MemoryAccess|output\(3) & ((\MemoryAccess|output\(2) & (!\memory|Z~195_q\)) # (!\MemoryAccess|output\(2) & ((\memory|Z~163_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \memory|Z~195_q\,
	datac => \memory|Z~163_q\,
	datad => \MemoryAccess|output\(2),
	combout => \memory|Z~377_combout\);

-- Location: LCCOMB_X39_Y34_N0
\memory|Z~378\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~378_combout\ = (\MemoryAccess|output\(3) & ((\memory|Z~377_combout\ & (!\memory|Z~259_q\)) # (!\memory|Z~377_combout\ & ((\memory|Z~227_q\))))) # (!\MemoryAccess|output\(3) & (((\memory|Z~377_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(3),
	datab => \memory|Z~259_q\,
	datac => \memory|Z~227_q\,
	datad => \memory|Z~377_combout\,
	combout => \memory|Z~378_combout\);

-- Location: LCCOMB_X36_Y35_N18
\memory|Z~381\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~381_combout\ = (\MemoryAccess|output\(1) & ((\MemoryAccess|output\(0)) # ((\memory|Z~378_combout\)))) # (!\MemoryAccess|output\(1) & (!\MemoryAccess|output\(0) & (\memory|Z~380_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(1),
	datab => \MemoryAccess|output\(0),
	datac => \memory|Z~380_combout\,
	datad => \memory|Z~378_combout\,
	combout => \memory|Z~381_combout\);

-- Location: LCCOMB_X36_Y35_N20
\memory|Z~384\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~384_combout\ = (\MemoryAccess|output\(0) & ((\memory|Z~381_combout\ & (\memory|Z~383_combout\)) # (!\memory|Z~381_combout\ & ((\memory|Z~376_combout\))))) # (!\MemoryAccess|output\(0) & (((\memory|Z~381_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|Z~383_combout\,
	datab => \memory|Z~376_combout\,
	datac => \MemoryAccess|output\(0),
	datad => \memory|Z~381_combout\,
	combout => \memory|Z~384_combout\);

-- Location: LCCOMB_X36_Y35_N16
\memory|Z~395\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|Z~395_combout\ = (\MemoryAccess|output\(4) & ((\memory|Z~384_combout\))) # (!\MemoryAccess|output\(4) & (\memory|Z~394_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAccess|output\(4),
	datac => \memory|Z~394_combout\,
	datad => \memory|Z~384_combout\,
	combout => \memory|Z~395_combout\);

-- Location: FF_X36_Y35_N17
\memory|Data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory|Z~395_combout\,
	ena => \CU|ALT_INV_current_state.staa_write_mem~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|Data_out\(5));

-- Location: LCCOMB_X29_Y35_N28
\MemoryDataInput|output[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryDataInput|output[5]~feeder_combout\ = \memory|Data_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory|Data_out\(5),
	combout => \MemoryDataInput|output[5]~feeder_combout\);

-- Location: FF_X29_Y35_N29
\MemoryDataInput|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemoryDataInput|output[5]~feeder_combout\,
	ena => \CU|WideOr16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryDataInput|output\(5));

-- Location: LCCOMB_X27_Y35_N12
\instruction|output[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instruction|output[5]~feeder_combout\ = \MemoryDataInput|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryDataInput|output\(5),
	combout => \instruction|output[5]~feeder_combout\);

-- Location: FF_X27_Y35_N13
\instruction|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instruction|output[5]~feeder_combout\,
	ena => \CU|current_state.load_ir~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction|output\(5));

-- Location: LCCOMB_X27_Y35_N16
\CU|current_state~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|current_state~19_combout\ = (\instruction|output\(5) & (\CU|current_state.decode~q\ & (!\instruction|output\(7) & !\instruction|output\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction|output\(5),
	datab => \CU|current_state.decode~q\,
	datac => \instruction|output\(7),
	datad => \instruction|output\(6),
	combout => \CU|current_state~19_combout\);

-- Location: FF_X27_Y35_N17
\CU|current_state.adaa_load_mar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|current_state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.adaa_load_mar~q\);

-- Location: LCCOMB_X30_Y35_N4
\CU|current_state.adaa_read_mem~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|current_state.adaa_read_mem~feeder_combout\ = \CU|current_state.adaa_load_mar~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|current_state.adaa_load_mar~q\,
	combout => \CU|current_state.adaa_read_mem~feeder_combout\);

-- Location: FF_X30_Y35_N5
\CU|current_state.adaa_read_mem\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|current_state.adaa_read_mem~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.adaa_read_mem~q\);

-- Location: FF_X30_Y35_N31
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

-- Location: FF_X30_Y35_N23
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

-- Location: LCCOMB_X30_Y35_N28
\CU|Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|Selector12~0_combout\ = (\CU|current_state.adaa_store_load_a~q\) # ((\CU|current_state.staa_write_mem~q\) # (\CU|current_state.ldaa_load_a~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.adaa_store_load_a~q\,
	datab => \CU|current_state.staa_write_mem~q\,
	datad => \CU|current_state.ldaa_load_a~q\,
	combout => \CU|Selector12~0_combout\);

-- Location: FF_X30_Y35_N29
\CU|current_state.increment_pc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.increment_pc~q\);

-- Location: LCCOMB_X24_Y35_N12
\PC|counter[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|counter[0]~7_combout\ = \CU|current_state.increment_pc~q\ $ (\PC|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.increment_pc~q\,
	datac => \PC|counter\(0),
	combout => \PC|counter[0]~7_combout\);

-- Location: FF_X24_Y35_N13
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

-- Location: LCCOMB_X24_Y35_N24
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

-- Location: FF_X24_Y35_N25
\PC|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC|counter[5]~16_combout\,
	ena => \CU|current_state.increment_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|counter\(5));

-- Location: LCCOMB_X24_Y35_N26
\PC|counter[6]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|counter[6]~18_combout\ = (\PC|counter\(6) & (!\PC|counter[5]~17\)) # (!\PC|counter\(6) & ((\PC|counter[5]~17\) # (GND)))
-- \PC|counter[6]~19\ = CARRY((!\PC|counter[5]~17\) # (!\PC|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|counter\(6),
	datad => VCC,
	cin => \PC|counter[5]~17\,
	combout => \PC|counter[6]~18_combout\,
	cout => \PC|counter[6]~19\);

-- Location: FF_X24_Y35_N27
\PC|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC|counter[6]~18_combout\,
	ena => \CU|current_state.increment_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|counter\(6));

-- Location: LCCOMB_X24_Y35_N28
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

-- Location: FF_X24_Y35_N29
\PC|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC|counter[7]~20_combout\,
	ena => \CU|current_state.increment_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|counter\(7));

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

ww_test <= \test~output_o\;
END structure;


