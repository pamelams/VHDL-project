-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "11/22/2018 18:45:42"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	chronometer IS
    PORT (
	un_cen : OUT std_logic_vector(6 DOWNTO 0);
	ten_cen : OUT std_logic_vector(6 DOWNTO 0);
	un_sec : OUT std_logic_vector(6 DOWNTO 0);
	ten_sec : OUT std_logic_vector(6 DOWNTO 0);
	enable : IN std_logic;
	reset : IN std_logic;
	clk_50MHz : IN std_logic
	);
END chronometer;

-- Design Ports Information
-- un_cen[0]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- un_cen[1]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- un_cen[2]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- un_cen[3]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- un_cen[4]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- un_cen[5]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- un_cen[6]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ten_cen[0]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ten_cen[1]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ten_cen[2]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ten_cen[3]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ten_cen[4]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ten_cen[5]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ten_cen[6]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- un_sec[0]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- un_sec[1]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- un_sec[2]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- un_sec[3]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- un_sec[4]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- un_sec[5]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- un_sec[6]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ten_sec[0]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ten_sec[1]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ten_sec[2]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ten_sec[3]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ten_sec[4]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ten_sec[5]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ten_sec[6]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk_50MHz	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- enable	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF chronometer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_un_cen : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ten_cen : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_un_sec : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ten_sec : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_enable : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk_50MHz : std_logic;
SIGNAL \clk_50MHz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \clk~regout\ : std_logic;
SIGNAL \divisor:k[12]~regout\ : std_logic;
SIGNAL \divisor:k[17]~regout\ : std_logic;
SIGNAL \divisor:k[16]~regout\ : std_logic;
SIGNAL \divisor:k[15]~regout\ : std_logic;
SIGNAL \divisor:k[14]~regout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \divisor:k[3]~regout\ : std_logic;
SIGNAL \divisor:k[2]~regout\ : std_logic;
SIGNAL \divisor:k[1]~regout\ : std_logic;
SIGNAL \divisor:k[0]~regout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \divisor:k[7]~regout\ : std_logic;
SIGNAL \divisor:k[4]~regout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \divisor:k[11]~regout\ : std_logic;
SIGNAL \divisor:k[6]~regout\ : std_logic;
SIGNAL \divisor:k[5]~regout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \divisor:k[10]~regout\ : std_logic;
SIGNAL \divisor:k[9]~regout\ : std_logic;
SIGNAL \divisor:k[8]~regout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \divisor:k[18]~regout\ : std_logic;
SIGNAL \divisor:k[13]~regout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \en~regout\ : std_logic;
SIGNAL \divisor:k[5]~0_combout\ : std_logic;
SIGNAL \divisor:k[5]~1_combout\ : std_logic;
SIGNAL \divisor:k[5]~2_combout\ : std_logic;
SIGNAL \divisor:k[5]~3_combout\ : std_logic;
SIGNAL \divisor:k[5]~4_combout\ : std_logic;
SIGNAL \divisor:k[5]~5_combout\ : std_logic;
SIGNAL \k~0_combout\ : std_logic;
SIGNAL \k~1_combout\ : std_logic;
SIGNAL \k~2_combout\ : std_logic;
SIGNAL \k~3_combout\ : std_logic;
SIGNAL \k~4_combout\ : std_logic;
SIGNAL \k~5_combout\ : std_logic;
SIGNAL \k~6_combout\ : std_logic;
SIGNAL \en~0_combout\ : std_logic;
SIGNAL \clk_50MHz~combout\ : std_logic;
SIGNAL \enable~combout\ : std_logic;
SIGNAL \clk_50MHz~clkctrl_outclk\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \counter:count[1]~regout\ : std_logic;
SIGNAL \counter:count[0]~0_combout\ : std_logic;
SIGNAL \counter:count[0]~regout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \counter:count[2]~regout\ : std_logic;
SIGNAL \count~1_combout\ : std_logic;
SIGNAL \counter:count[3]~regout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \counter:count2[0]~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \counter:count2[0]~regout\ : std_logic;
SIGNAL \count2~0_combout\ : std_logic;
SIGNAL \counter:count2[1]~regout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \counter:count2[2]~regout\ : std_logic;
SIGNAL \count2~1_combout\ : std_logic;
SIGNAL \counter:count2[3]~regout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \counter:count3[0]~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \counter:count4[0]~0_combout\ : std_logic;
SIGNAL \counter:count3[0]~regout\ : std_logic;
SIGNAL \count3~0_combout\ : std_logic;
SIGNAL \counter:count3[1]~regout\ : std_logic;
SIGNAL \count3~1_combout\ : std_logic;
SIGNAL \counter:count3[3]~regout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \counter:count3[2]~regout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \count4~1_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \counter:count4[2]~0_combout\ : std_logic;
SIGNAL \counter:count4[1]~regout\ : std_logic;
SIGNAL \count4~0_combout\ : std_logic;
SIGNAL \counter:count4[2]~regout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \counter:count4[0]~1_combout\ : std_logic;
SIGNAL \counter:count4[0]~regout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \ALT_INV_reset~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

un_cen <= ww_un_cen;
ten_cen <= ww_ten_cen;
un_sec <= ww_un_sec;
ten_sec <= ww_ten_sec;
ww_enable <= enable;
ww_reset <= reset;
ww_clk_50MHz <= clk_50MHz;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_50MHz~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk_50MHz~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~regout\);
\ALT_INV_reset~clkctrl_outclk\ <= NOT \reset~clkctrl_outclk\;
\ALT_INV_Mux26~0_combout\ <= NOT \Mux26~0_combout\;
\ALT_INV_Mux27~0_combout\ <= NOT \Mux27~0_combout\;
\ALT_INV_Mux20~0_combout\ <= NOT \Mux20~0_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;

-- Location: LCCOMB_X42_Y3_N14
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \divisor:k[0]~regout\ $ (VCC)
-- \Add0~1\ = CARRY(\divisor:k[0]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor:k[0]~regout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X42_Y3_N16
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\divisor:k[1]~regout\ & (!\Add0~1\)) # (!\divisor:k[1]~regout\ & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\divisor:k[1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor:k[1]~regout\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X42_Y3_N18
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\divisor:k[2]~regout\ & (\Add0~3\ $ (GND))) # (!\divisor:k[2]~regout\ & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\divisor:k[2]~regout\ & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor:k[2]~regout\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X42_Y3_N20
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\divisor:k[3]~regout\ & (!\Add0~5\)) # (!\divisor:k[3]~regout\ & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\divisor:k[3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor:k[3]~regout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X42_Y3_N22
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\divisor:k[4]~regout\ & (\Add0~7\ $ (GND))) # (!\divisor:k[4]~regout\ & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\divisor:k[4]~regout\ & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor:k[4]~regout\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X42_Y3_N24
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\divisor:k[5]~regout\ & (!\Add0~9\)) # (!\divisor:k[5]~regout\ & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!\divisor:k[5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor:k[5]~regout\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X42_Y3_N26
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\divisor:k[6]~regout\ & (\Add0~11\ $ (GND))) # (!\divisor:k[6]~regout\ & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((\divisor:k[6]~regout\ & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor:k[6]~regout\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X42_Y3_N28
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\divisor:k[7]~regout\ & (!\Add0~13\)) # (!\divisor:k[7]~regout\ & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!\divisor:k[7]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor:k[7]~regout\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X42_Y3_N30
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\divisor:k[8]~regout\ & (\Add0~15\ $ (GND))) # (!\divisor:k[8]~regout\ & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((\divisor:k[8]~regout\ & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor:k[8]~regout\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X42_Y2_N0
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\divisor:k[9]~regout\ & (!\Add0~17\)) # (!\divisor:k[9]~regout\ & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!\divisor:k[9]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor:k[9]~regout\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X42_Y2_N2
\Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\divisor:k[10]~regout\ & (\Add0~19\ $ (GND))) # (!\divisor:k[10]~regout\ & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((\divisor:k[10]~regout\ & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor:k[10]~regout\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X42_Y2_N4
\Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\divisor:k[11]~regout\ & (!\Add0~21\)) # (!\divisor:k[11]~regout\ & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!\divisor:k[11]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor:k[11]~regout\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X42_Y2_N6
\Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\divisor:k[12]~regout\ & (\Add0~23\ $ (GND))) # (!\divisor:k[12]~regout\ & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((\divisor:k[12]~regout\ & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor:k[12]~regout\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X42_Y2_N8
\Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\divisor:k[13]~regout\ & (!\Add0~25\)) # (!\divisor:k[13]~regout\ & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!\divisor:k[13]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor:k[13]~regout\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X42_Y2_N10
\Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (\divisor:k[14]~regout\ & (\Add0~27\ $ (GND))) # (!\divisor:k[14]~regout\ & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((\divisor:k[14]~regout\ & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor:k[14]~regout\,
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X42_Y2_N12
\Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\divisor:k[15]~regout\ & (!\Add0~29\)) # (!\divisor:k[15]~regout\ & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!\divisor:k[15]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor:k[15]~regout\,
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X42_Y2_N14
\Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\divisor:k[16]~regout\ & (\Add0~31\ $ (GND))) # (!\divisor:k[16]~regout\ & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((\divisor:k[16]~regout\ & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor:k[16]~regout\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X42_Y2_N16
\Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\divisor:k[17]~regout\ & (!\Add0~33\)) # (!\divisor:k[17]~regout\ & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!\divisor:k[17]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor:k[17]~regout\,
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X42_Y2_N18
\Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = \Add0~35\ $ (!\divisor:k[18]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \divisor:k[18]~regout\,
	cin => \Add0~35\,
	combout => \Add0~36_combout\);

-- Location: LCFF_X41_Y3_N31
clk : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50MHz~clkctrl_outclk\,
	sdata => \LessThan0~6_combout\,
	sload => VCC,
	ena => \en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk~regout\);

-- Location: LCFF_X42_Y2_N21
\divisor:k[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50MHz~clkctrl_outclk\,
	sdata => \Add0~24_combout\,
	sload => VCC,
	ena => \en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor:k[12]~regout\);

-- Location: LCFF_X41_Y3_N23
\divisor:k[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50MHz~clkctrl_outclk\,
	datain => \k~0_combout\,
	ena => \en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor:k[17]~regout\);

-- Location: LCFF_X41_Y3_N25
\divisor:k[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50MHz~clkctrl_outclk\,
	datain => \k~1_combout\,
	ena => \en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor:k[16]~regout\);

-- Location: LCFF_X41_Y3_N17
\divisor:k[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50MHz~clkctrl_outclk\,
	datain => \k~2_combout\,
	ena => \en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor:k[15]~regout\);

-- Location: LCFF_X42_Y2_N11
\divisor:k[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50MHz~clkctrl_outclk\,
	datain => \Add0~28_combout\,
	ena => \en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor:k[14]~regout\);

-- Location: LCCOMB_X41_Y3_N12
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\divisor:k[15]~regout\ & (\divisor:k[17]~regout\ & (\divisor:k[16]~regout\ & \divisor:k[14]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor:k[15]~regout\,
	datab => \divisor:k[17]~regout\,
	datac => \divisor:k[16]~regout\,
	datad => \divisor:k[14]~regout\,
	combout => \LessThan0~0_combout\);

-- Location: LCFF_X42_Y3_N21
\divisor:k[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50MHz~clkctrl_outclk\,
	datain => \Add0~6_combout\,
	ena => \en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor:k[3]~regout\);

-- Location: LCFF_X42_Y3_N19
\divisor:k[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50MHz~clkctrl_outclk\,
	datain => \Add0~4_combout\,
	ena => \en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor:k[2]~regout\);

-- Location: LCFF_X42_Y3_N5
\divisor:k[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50MHz~clkctrl_outclk\,
	sdata => \Add0~2_combout\,
	sload => VCC,
	ena => \en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor:k[1]~regout\);

-- Location: LCFF_X42_Y3_N7
\divisor:k[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50MHz~clkctrl_outclk\,
	sdata => \Add0~0_combout\,
	sload => VCC,
	ena => \en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor:k[0]~regout\);

-- Location: LCCOMB_X42_Y3_N6
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\divisor:k[3]~regout\) # ((\divisor:k[1]~regout\) # ((\divisor:k[0]~regout\) # (\divisor:k[2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor:k[3]~regout\,
	datab => \divisor:k[1]~regout\,
	datac => \divisor:k[0]~regout\,
	datad => \divisor:k[2]~regout\,
	combout => \LessThan0~1_combout\);

-- Location: LCFF_X42_Y3_N29
\divisor:k[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50MHz~clkctrl_outclk\,
	datain => \Add0~14_combout\,
	ena => \en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor:k[7]~regout\);

-- Location: LCFF_X42_Y3_N9
\divisor:k[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50MHz~clkctrl_outclk\,
	sdata => \Add0~8_combout\,
	sload => VCC,
	ena => \en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor:k[4]~regout\);

-- Location: LCCOMB_X41_Y3_N26
\LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\divisor:k[7]~regout\ & (\divisor:k[4]~regout\ & \LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor:k[7]~regout\,
	datac => \divisor:k[4]~regout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCFF_X42_Y2_N5
\divisor:k[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50MHz~clkctrl_outclk\,
	datain => \Add0~22_combout\,
	ena => \en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor:k[11]~regout\);

-- Location: LCFF_X42_Y3_N3
\divisor:k[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50MHz~clkctrl_outclk\,
	sdata => \Add0~12_combout\,
	sload => VCC,
	ena => \en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor:k[6]~regout\);

-- Location: LCFF_X42_Y3_N13
\divisor:k[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50MHz~clkctrl_outclk\,
	datain => \k~3_combout\,
	ena => \en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor:k[5]~regout\);

-- Location: LCCOMB_X42_Y3_N2
\LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\divisor:k[11]~regout\) # ((\divisor:k[7]~regout\ & ((\divisor:k[5]~regout\) # (\divisor:k[6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor:k[7]~regout\,
	datab => \divisor:k[5]~regout\,
	datac => \divisor:k[6]~regout\,
	datad => \divisor:k[11]~regout\,
	combout => \LessThan0~3_combout\);

-- Location: LCFF_X42_Y2_N31
\divisor:k[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50MHz~clkctrl_outclk\,
	sdata => \Add0~20_combout\,
	sload => VCC,
	ena => \en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor:k[10]~regout\);

-- Location: LCFF_X42_Y2_N25
\divisor:k[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50MHz~clkctrl_outclk\,
	sdata => \Add0~18_combout\,
	sload => VCC,
	ena => \en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor:k[9]~regout\);

-- Location: LCFF_X42_Y3_N11
\divisor:k[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50MHz~clkctrl_outclk\,
	datain => \k~4_combout\,
	ena => \en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor:k[8]~regout\);

-- Location: LCCOMB_X41_Y3_N20
\LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\divisor:k[10]~regout\) # ((\divisor:k[8]~regout\) # ((\divisor:k[9]~regout\) # (\LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor:k[10]~regout\,
	datab => \divisor:k[8]~regout\,
	datac => \divisor:k[9]~regout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X41_Y3_N14
\LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (\LessThan0~0_combout\ & (\divisor:k[12]~regout\ & ((\LessThan0~4_combout\) # (\LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \divisor:k[12]~regout\,
	datac => \LessThan0~4_combout\,
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCFF_X42_Y2_N23
\divisor:k[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50MHz~clkctrl_outclk\,
	datain => \k~5_combout\,
	ena => \en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor:k[18]~regout\);

-- Location: LCFF_X42_Y2_N29
\divisor:k[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50MHz~clkctrl_outclk\,
	datain => \k~6_combout\,
	ena => \en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor:k[13]~regout\);

-- Location: LCCOMB_X41_Y3_N8
\LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (\divisor:k[18]~regout\) # ((\LessThan0~5_combout\) # ((\divisor:k[13]~regout\ & \LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor:k[18]~regout\,
	datab => \divisor:k[13]~regout\,
	datac => \LessThan0~5_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCFF_X42_Y3_N1
en : cycloneii_lcell_ff
PORT MAP (
	clk => \enable~combout\,
	datain => \en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \en~regout\);

-- Location: LCCOMB_X42_Y2_N24
\divisor:k[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor:k[5]~0_combout\ = ((!\Add0~36_combout\) # (!\Add0~32_combout\)) # (!\Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datab => \Add0~32_combout\,
	datad => \Add0~36_combout\,
	combout => \divisor:k[5]~0_combout\);

-- Location: LCCOMB_X42_Y3_N4
\divisor:k[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor:k[5]~1_combout\ = (\Add0~0_combout\) # ((\Add0~4_combout\) # ((\Add0~2_combout\) # (\Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add0~4_combout\,
	datac => \Add0~2_combout\,
	datad => \Add0~6_combout\,
	combout => \divisor:k[5]~1_combout\);

-- Location: LCCOMB_X42_Y3_N8
\divisor:k[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor:k[5]~2_combout\ = ((\Add0~12_combout\) # ((\Add0~8_combout\) # (\Add0~14_combout\))) # (!\Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add0~12_combout\,
	datac => \Add0~8_combout\,
	datad => \Add0~14_combout\,
	combout => \divisor:k[5]~2_combout\);

-- Location: LCCOMB_X42_Y2_N30
\divisor:k[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor:k[5]~3_combout\ = (\Add0~22_combout\) # ((\Add0~18_combout\) # ((\Add0~20_combout\) # (!\Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~22_combout\,
	datab => \Add0~18_combout\,
	datac => \Add0~20_combout\,
	datad => \Add0~16_combout\,
	combout => \divisor:k[5]~3_combout\);

-- Location: LCCOMB_X42_Y2_N20
\divisor:k[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor:k[5]~4_combout\ = (\Add0~28_combout\) # (((\Add0~24_combout\) # (!\Add0~30_combout\)) # (!\Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datab => \Add0~26_combout\,
	datac => \Add0~24_combout\,
	datad => \Add0~30_combout\,
	combout => \divisor:k[5]~4_combout\);

-- Location: LCCOMB_X42_Y2_N26
\divisor:k[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor:k[5]~5_combout\ = (\divisor:k[5]~1_combout\) # ((\divisor:k[5]~2_combout\) # ((\divisor:k[5]~4_combout\) # (\divisor:k[5]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor:k[5]~1_combout\,
	datab => \divisor:k[5]~2_combout\,
	datac => \divisor:k[5]~4_combout\,
	datad => \divisor:k[5]~3_combout\,
	combout => \divisor:k[5]~5_combout\);

-- Location: LCCOMB_X41_Y3_N22
\k~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~0_combout\ = (\Add0~34_combout\ & (((\divisor:k[5]~0_combout\) # (\divisor:k[5]~5_combout\)) # (!\LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datab => \LessThan0~6_combout\,
	datac => \divisor:k[5]~0_combout\,
	datad => \divisor:k[5]~5_combout\,
	combout => \k~0_combout\);

-- Location: LCCOMB_X41_Y3_N24
\k~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~1_combout\ = (\Add0~32_combout\ & (((\divisor:k[5]~0_combout\) # (\divisor:k[5]~5_combout\)) # (!\LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datab => \LessThan0~6_combout\,
	datac => \divisor:k[5]~0_combout\,
	datad => \divisor:k[5]~5_combout\,
	combout => \k~1_combout\);

-- Location: LCCOMB_X41_Y3_N16
\k~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~2_combout\ = (\Add0~30_combout\ & (((\divisor:k[5]~0_combout\) # (\divisor:k[5]~5_combout\)) # (!\LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~6_combout\,
	datab => \Add0~30_combout\,
	datac => \divisor:k[5]~0_combout\,
	datad => \divisor:k[5]~5_combout\,
	combout => \k~2_combout\);

-- Location: LCCOMB_X42_Y3_N12
\k~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~3_combout\ = (\Add0~10_combout\ & (((\divisor:k[5]~0_combout\) # (\divisor:k[5]~5_combout\)) # (!\LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~6_combout\,
	datab => \Add0~10_combout\,
	datac => \divisor:k[5]~0_combout\,
	datad => \divisor:k[5]~5_combout\,
	combout => \k~3_combout\);

-- Location: LCCOMB_X42_Y3_N10
\k~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~4_combout\ = (\Add0~16_combout\ & (((\divisor:k[5]~0_combout\) # (\divisor:k[5]~5_combout\)) # (!\LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~6_combout\,
	datab => \Add0~16_combout\,
	datac => \divisor:k[5]~0_combout\,
	datad => \divisor:k[5]~5_combout\,
	combout => \k~4_combout\);

-- Location: LCCOMB_X42_Y2_N22
\k~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~5_combout\ = (\Add0~36_combout\ & ((\divisor:k[5]~0_combout\) # ((\divisor:k[5]~5_combout\) # (!\LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor:k[5]~0_combout\,
	datab => \Add0~36_combout\,
	datac => \LessThan0~6_combout\,
	datad => \divisor:k[5]~5_combout\,
	combout => \k~5_combout\);

-- Location: LCCOMB_X42_Y2_N28
\k~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \k~6_combout\ = (\Add0~26_combout\ & ((\divisor:k[5]~5_combout\) # ((\divisor:k[5]~0_combout\) # (!\LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \divisor:k[5]~5_combout\,
	datac => \divisor:k[5]~0_combout\,
	datad => \LessThan0~6_combout\,
	combout => \k~6_combout\);

-- Location: LCCOMB_X42_Y3_N0
\en~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \en~0_combout\ = !\en~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \en~regout\,
	combout => \en~0_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk_50MHz~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk_50MHz,
	combout => \clk_50MHz~combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\enable~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_enable,
	combout => \enable~combout\);

-- Location: CLKCTRL_G3
\clk_50MHz~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50MHz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50MHz~clkctrl_outclk\);

-- Location: CLKCTRL_G12
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X47_Y35_N26
\count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \count~0_combout\ = (\counter:count[0]~regout\ & (!\counter:count[1]~regout\ & ((\counter:count[2]~regout\) # (!\counter:count[3]~regout\)))) # (!\counter:count[0]~regout\ & (((\counter:count[1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter:count[0]~regout\,
	datab => \counter:count[2]~regout\,
	datac => \counter:count[1]~regout\,
	datad => \counter:count[3]~regout\,
	combout => \count~0_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: CLKCTRL_G1
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: LCFF_X47_Y35_N27
\counter:count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count~0_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter:count[1]~regout\);

-- Location: LCCOMB_X47_Y35_N10
\counter:count[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter:count[0]~0_combout\ = !\counter:count[0]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter:count[0]~regout\,
	combout => \counter:count[0]~0_combout\);

-- Location: LCFF_X47_Y35_N9
\counter:count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \counter:count[0]~0_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter:count[0]~regout\);

-- Location: LCCOMB_X47_Y35_N20
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \counter:count[2]~regout\ $ (((\counter:count[1]~regout\ & \counter:count[0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter:count[1]~regout\,
	datac => \counter:count[2]~regout\,
	datad => \counter:count[0]~regout\,
	combout => \Add1~0_combout\);

-- Location: LCFF_X47_Y35_N21
\counter:count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~0_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter:count[2]~regout\);

-- Location: LCCOMB_X47_Y35_N22
\count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \count~1_combout\ = (\counter:count[0]~regout\ & ((\counter:count[2]~regout\ & (\counter:count[3]~regout\ $ (\counter:count[1]~regout\))) # (!\counter:count[2]~regout\ & (\counter:count[3]~regout\ & \counter:count[1]~regout\)))) # 
-- (!\counter:count[0]~regout\ & (((\counter:count[3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter:count[0]~regout\,
	datab => \counter:count[2]~regout\,
	datac => \counter:count[3]~regout\,
	datad => \counter:count[1]~regout\,
	combout => \count~1_combout\);

-- Location: LCFF_X47_Y35_N23
\counter:count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count~1_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter:count[3]~regout\);

-- Location: LCCOMB_X47_Y35_N8
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\counter:count[2]~regout\ & (!\counter:count[3]~regout\ & ((!\counter:count[1]~regout\) # (!\counter:count[0]~regout\)))) # (!\counter:count[2]~regout\ & (\counter:count[3]~regout\ $ (((\counter:count[1]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter:count[3]~regout\,
	datab => \counter:count[2]~regout\,
	datac => \counter:count[0]~regout\,
	datad => \counter:count[1]~regout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X47_Y35_N0
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\counter:count[0]~regout\ & ((\counter:count[1]~regout\) # (\counter:count[2]~regout\ $ (!\counter:count[3]~regout\)))) # (!\counter:count[0]~regout\ & ((\counter:count[2]~regout\ & (\counter:count[3]~regout\)) # 
-- (!\counter:count[2]~regout\ & ((\counter:count[1]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter:count[0]~regout\,
	datab => \counter:count[2]~regout\,
	datac => \counter:count[3]~regout\,
	datad => \counter:count[1]~regout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X47_Y35_N2
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\counter:count[0]~regout\) # ((\counter:count[1]~regout\ & ((\counter:count[3]~regout\))) # (!\counter:count[1]~regout\ & (\counter:count[2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter:count[0]~regout\,
	datab => \counter:count[2]~regout\,
	datac => \counter:count[3]~regout\,
	datad => \counter:count[1]~regout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X47_Y35_N28
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\counter:count[1]~regout\ & ((\counter:count[3]~regout\) # ((\counter:count[0]~regout\ & \counter:count[2]~regout\)))) # (!\counter:count[1]~regout\ & (\counter:count[2]~regout\ $ (((\counter:count[0]~regout\ & 
-- !\counter:count[3]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter:count[0]~regout\,
	datab => \counter:count[2]~regout\,
	datac => \counter:count[3]~regout\,
	datad => \counter:count[1]~regout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X47_Y35_N14
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\counter:count[2]~regout\ & (((\counter:count[3]~regout\)))) # (!\counter:count[2]~regout\ & (\counter:count[1]~regout\ & ((\counter:count[3]~regout\) # (!\counter:count[0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter:count[0]~regout\,
	datab => \counter:count[2]~regout\,
	datac => \counter:count[3]~regout\,
	datad => \counter:count[1]~regout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X47_Y35_N12
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\counter:count[2]~regout\ & ((\counter:count[3]~regout\) # (\counter:count[0]~regout\ $ (\counter:count[1]~regout\)))) # (!\counter:count[2]~regout\ & (((\counter:count[3]~regout\ & \counter:count[1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter:count[0]~regout\,
	datab => \counter:count[2]~regout\,
	datac => \counter:count[3]~regout\,
	datad => \counter:count[1]~regout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X47_Y35_N18
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\counter:count[1]~regout\ & (((\counter:count[3]~regout\)))) # (!\counter:count[1]~regout\ & (\counter:count[2]~regout\ $ (((\counter:count[0]~regout\ & !\counter:count[3]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter:count[0]~regout\,
	datab => \counter:count[2]~regout\,
	datac => \counter:count[3]~regout\,
	datad => \counter:count[1]~regout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X47_Y35_N4
\counter:count2[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter:count2[0]~0_combout\ = !\counter:count2[0]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter:count2[0]~regout\,
	combout => \counter:count2[0]~0_combout\);

-- Location: LCCOMB_X47_Y35_N16
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\counter:count[2]~regout\ & (\counter:count[3]~regout\ & (\counter:count[0]~regout\ & !\counter:count[1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter:count[2]~regout\,
	datab => \counter:count[3]~regout\,
	datac => \counter:count[0]~regout\,
	datad => \counter:count[1]~regout\,
	combout => \Equal1~0_combout\);

-- Location: LCFF_X47_Y35_N5
\counter:count2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter:count2[0]~0_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter:count2[0]~regout\);

-- Location: LCCOMB_X46_Y35_N30
\count2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \count2~0_combout\ = (\counter:count2[1]~regout\ & (((!\counter:count2[0]~regout\)))) # (!\counter:count2[1]~regout\ & (\counter:count2[0]~regout\ & ((\counter:count2[2]~regout\) # (!\counter:count2[3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter:count2[3]~regout\,
	datab => \counter:count2[1]~regout\,
	datac => \counter:count2[2]~regout\,
	datad => \counter:count2[0]~regout\,
	combout => \count2~0_combout\);

-- Location: LCFF_X47_Y35_N11
\counter:count2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \count2~0_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter:count2[1]~regout\);

-- Location: LCCOMB_X47_Y35_N24
\Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = \counter:count2[2]~regout\ $ (((\counter:count2[0]~regout\ & \counter:count2[1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter:count2[0]~regout\,
	datac => \counter:count2[2]~regout\,
	datad => \counter:count2[1]~regout\,
	combout => \Add2~0_combout\);

-- Location: LCFF_X47_Y35_N25
\counter:count2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add2~0_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter:count2[2]~regout\);

-- Location: LCCOMB_X47_Y35_N6
\count2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \count2~1_combout\ = (\counter:count2[1]~regout\ & (\counter:count2[3]~regout\ $ (((\counter:count2[0]~regout\ & \counter:count2[2]~regout\))))) # (!\counter:count2[1]~regout\ & (\counter:count2[3]~regout\ & ((\counter:count2[2]~regout\) # 
-- (!\counter:count2[0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter:count2[1]~regout\,
	datab => \counter:count2[0]~regout\,
	datac => \counter:count2[3]~regout\,
	datad => \counter:count2[2]~regout\,
	combout => \count2~1_combout\);

-- Location: LCFF_X47_Y35_N7
\counter:count2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count2~1_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter:count2[3]~regout\);

-- Location: LCCOMB_X46_Y35_N28
\Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\counter:count2[1]~regout\ & (!\counter:count2[3]~regout\ & ((!\counter:count2[0]~regout\) # (!\counter:count2[2]~regout\)))) # (!\counter:count2[1]~regout\ & (\counter:count2[3]~regout\ $ ((\counter:count2[2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter:count2[3]~regout\,
	datab => \counter:count2[1]~regout\,
	datac => \counter:count2[2]~regout\,
	datad => \counter:count2[0]~regout\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X46_Y35_N2
\Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\counter:count2[2]~regout\ & ((\counter:count2[3]~regout\) # ((\counter:count2[1]~regout\ & \counter:count2[0]~regout\)))) # (!\counter:count2[2]~regout\ & ((\counter:count2[1]~regout\) # ((!\counter:count2[3]~regout\ & 
-- \counter:count2[0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter:count2[3]~regout\,
	datab => \counter:count2[1]~regout\,
	datac => \counter:count2[2]~regout\,
	datad => \counter:count2[0]~regout\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X46_Y35_N20
\Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\counter:count2[0]~regout\) # ((\counter:count2[1]~regout\ & (\counter:count2[3]~regout\)) # (!\counter:count2[1]~regout\ & ((\counter:count2[2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter:count2[3]~regout\,
	datab => \counter:count2[1]~regout\,
	datac => \counter:count2[2]~regout\,
	datad => \counter:count2[0]~regout\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X46_Y35_N6
\Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\counter:count2[1]~regout\ & ((\counter:count2[3]~regout\) # ((\counter:count2[2]~regout\ & \counter:count2[0]~regout\)))) # (!\counter:count2[1]~regout\ & (\counter:count2[2]~regout\ $ (((!\counter:count2[3]~regout\ & 
-- \counter:count2[0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter:count2[3]~regout\,
	datab => \counter:count2[1]~regout\,
	datac => \counter:count2[2]~regout\,
	datad => \counter:count2[0]~regout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X46_Y35_N0
\Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\counter:count2[2]~regout\ & (\counter:count2[3]~regout\)) # (!\counter:count2[2]~regout\ & (\counter:count2[1]~regout\ & ((\counter:count2[3]~regout\) # (!\counter:count2[0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter:count2[3]~regout\,
	datab => \counter:count2[1]~regout\,
	datac => \counter:count2[2]~regout\,
	datad => \counter:count2[0]~regout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X46_Y35_N26
\Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\counter:count2[3]~regout\ & ((\counter:count2[1]~regout\) # ((\counter:count2[2]~regout\)))) # (!\counter:count2[3]~regout\ & (\counter:count2[2]~regout\ & (\counter:count2[1]~regout\ $ (\counter:count2[0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter:count2[3]~regout\,
	datab => \counter:count2[1]~regout\,
	datac => \counter:count2[2]~regout\,
	datad => \counter:count2[0]~regout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X46_Y35_N12
\Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\counter:count2[1]~regout\ & (\counter:count2[3]~regout\)) # (!\counter:count2[1]~regout\ & (\counter:count2[2]~regout\ $ (((!\counter:count2[3]~regout\ & \counter:count2[0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter:count2[3]~regout\,
	datab => \counter:count2[1]~regout\,
	datac => \counter:count2[2]~regout\,
	datad => \counter:count2[0]~regout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X48_Y35_N12
\counter:count3[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter:count3[0]~0_combout\ = !\counter:count3[0]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter:count3[0]~regout\,
	combout => \counter:count3[0]~0_combout\);

-- Location: LCCOMB_X47_Y35_N30
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\counter:count2[3]~regout\ & (\counter:count2[0]~regout\ & (!\counter:count2[2]~regout\ & !\counter:count2[1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter:count2[3]~regout\,
	datab => \counter:count2[0]~regout\,
	datac => \counter:count2[2]~regout\,
	datad => \counter:count2[1]~regout\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X48_Y35_N20
\counter:count4[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter:count4[0]~0_combout\ = (\Equal2~0_combout\ & \Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~0_combout\,
	datad => \Equal1~0_combout\,
	combout => \counter:count4[0]~0_combout\);

-- Location: LCFF_X48_Y35_N13
\counter:count3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter:count3[0]~0_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	ena => \counter:count4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter:count3[0]~regout\);

-- Location: LCCOMB_X48_Y35_N30
\count3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \count3~0_combout\ = (\counter:count3[0]~regout\ & (!\counter:count3[1]~regout\ & ((\counter:count3[2]~regout\) # (!\counter:count3[3]~regout\)))) # (!\counter:count3[0]~regout\ & (((\counter:count3[1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter:count3[2]~regout\,
	datab => \counter:count3[0]~regout\,
	datac => \counter:count3[1]~regout\,
	datad => \counter:count3[3]~regout\,
	combout => \count3~0_combout\);

-- Location: LCFF_X48_Y35_N31
\counter:count3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count3~0_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	ena => \counter:count4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter:count3[1]~regout\);

-- Location: LCCOMB_X48_Y35_N26
\count3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \count3~1_combout\ = (\counter:count3[2]~regout\ & (\counter:count3[3]~regout\ $ (((\counter:count3[0]~regout\ & \counter:count3[1]~regout\))))) # (!\counter:count3[2]~regout\ & (\counter:count3[3]~regout\ & ((\counter:count3[1]~regout\) # 
-- (!\counter:count3[0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter:count3[2]~regout\,
	datab => \counter:count3[0]~regout\,
	datac => \counter:count3[3]~regout\,
	datad => \counter:count3[1]~regout\,
	combout => \count3~1_combout\);

-- Location: LCFF_X48_Y35_N27
\counter:count3[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count3~1_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	ena => \counter:count4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter:count3[3]~regout\);

-- Location: LCCOMB_X48_Y35_N24
\Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = \counter:count3[2]~regout\ $ (((\counter:count3[0]~regout\ & \counter:count3[1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter:count3[0]~regout\,
	datac => \counter:count3[2]~regout\,
	datad => \counter:count3[1]~regout\,
	combout => \Add3~0_combout\);

-- Location: LCFF_X48_Y35_N25
\counter:count3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add3~0_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	ena => \counter:count4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter:count3[2]~regout\);

-- Location: LCCOMB_X49_Y35_N28
\Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\counter:count3[2]~regout\ & (!\counter:count3[3]~regout\ & ((!\counter:count3[0]~regout\) # (!\counter:count3[1]~regout\)))) # (!\counter:count3[2]~regout\ & (\counter:count3[3]~regout\ $ ((\counter:count3[1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter:count3[3]~regout\,
	datab => \counter:count3[2]~regout\,
	datac => \counter:count3[1]~regout\,
	datad => \counter:count3[0]~regout\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X49_Y35_N22
\Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\counter:count3[2]~regout\ & ((\counter:count3[3]~regout\) # ((\counter:count3[1]~regout\ & \counter:count3[0]~regout\)))) # (!\counter:count3[2]~regout\ & ((\counter:count3[1]~regout\) # ((!\counter:count3[3]~regout\ & 
-- \counter:count3[0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter:count3[3]~regout\,
	datab => \counter:count3[2]~regout\,
	datac => \counter:count3[1]~regout\,
	datad => \counter:count3[0]~regout\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X49_Y35_N0
\Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\counter:count3[0]~regout\) # ((\counter:count3[1]~regout\ & (\counter:count3[3]~regout\)) # (!\counter:count3[1]~regout\ & ((\counter:count3[2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter:count3[3]~regout\,
	datab => \counter:count3[2]~regout\,
	datac => \counter:count3[1]~regout\,
	datad => \counter:count3[0]~regout\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X49_Y35_N2
\Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\counter:count3[1]~regout\ & ((\counter:count3[3]~regout\) # ((\counter:count3[2]~regout\ & \counter:count3[0]~regout\)))) # (!\counter:count3[1]~regout\ & (\counter:count3[2]~regout\ $ (((!\counter:count3[3]~regout\ & 
-- \counter:count3[0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter:count3[3]~regout\,
	datab => \counter:count3[2]~regout\,
	datac => \counter:count3[1]~regout\,
	datad => \counter:count3[0]~regout\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X48_Y35_N16
\Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\counter:count3[2]~regout\ & (\counter:count3[3]~regout\)) # (!\counter:count3[2]~regout\ & (\counter:count3[1]~regout\ & ((\counter:count3[3]~regout\) # (!\counter:count3[0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter:count3[2]~regout\,
	datab => \counter:count3[3]~regout\,
	datac => \counter:count3[0]~regout\,
	datad => \counter:count3[1]~regout\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X49_Y35_N12
\Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\counter:count3[3]~regout\ & ((\counter:count3[2]~regout\) # ((\counter:count3[1]~regout\)))) # (!\counter:count3[3]~regout\ & (\counter:count3[2]~regout\ & (\counter:count3[1]~regout\ $ (\counter:count3[0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter:count3[3]~regout\,
	datab => \counter:count3[2]~regout\,
	datac => \counter:count3[1]~regout\,
	datad => \counter:count3[0]~regout\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X49_Y35_N18
\Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\counter:count3[1]~regout\ & (\counter:count3[3]~regout\)) # (!\counter:count3[1]~regout\ & (\counter:count3[2]~regout\ $ (((!\counter:count3[3]~regout\ & \counter:count3[0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter:count3[3]~regout\,
	datab => \counter:count3[2]~regout\,
	datac => \counter:count3[1]~regout\,
	datad => \counter:count3[0]~regout\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X48_Y35_N28
\count4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \count4~1_combout\ = (\counter:count4[0]~regout\ & (!\counter:count4[1]~regout\ & !\counter:count4[2]~regout\)) # (!\counter:count4[0]~regout\ & (\counter:count4[1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter:count4[0]~regout\,
	datac => \counter:count4[1]~regout\,
	datad => \counter:count4[2]~regout\,
	combout => \count4~1_combout\);

-- Location: LCCOMB_X48_Y35_N14
\Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (\counter:count3[0]~regout\ & (!\counter:count3[1]~regout\ & (!\counter:count3[2]~regout\ & \counter:count3[3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter:count3[0]~regout\,
	datab => \counter:count3[1]~regout\,
	datac => \counter:count3[2]~regout\,
	datad => \counter:count3[3]~regout\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X48_Y35_N4
\counter:count4[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter:count4[2]~0_combout\ = (\Equal3~0_combout\ & (\Equal2~0_combout\ & \Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal3~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal1~0_combout\,
	combout => \counter:count4[2]~0_combout\);

-- Location: LCFF_X48_Y35_N29
\counter:count4[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count4~1_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	ena => \counter:count4[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter:count4[1]~regout\);

-- Location: LCCOMB_X48_Y35_N18
\count4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \count4~0_combout\ = (\counter:count4[0]~regout\ & (!\counter:count4[2]~regout\ & \counter:count4[1]~regout\)) # (!\counter:count4[0]~regout\ & (\counter:count4[2]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter:count4[0]~regout\,
	datac => \counter:count4[2]~regout\,
	datad => \counter:count4[1]~regout\,
	combout => \count4~0_combout\);

-- Location: LCFF_X48_Y35_N19
\counter:count4[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count4~0_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	ena => \counter:count4[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter:count4[2]~regout\);

-- Location: LCCOMB_X37_Y35_N0
\Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\counter:count4[2]~regout\) # (\counter:count4[1]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter:count4[2]~regout\,
	datad => \counter:count4[1]~regout\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X48_Y35_N22
\counter:count4[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter:count4[0]~1_combout\ = !\counter:count4[0]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter:count4[0]~regout\,
	combout => \counter:count4[0]~1_combout\);

-- Location: LCFF_X48_Y35_N23
\counter:count4[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter:count4[0]~1_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	ena => \counter:count4[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter:count4[0]~regout\);

-- Location: LCCOMB_X37_Y35_N2
\Mux26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\counter:count4[2]~regout\) # ((!\counter:count4[0]~regout\ & !\counter:count4[1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter:count4[2]~regout\,
	datac => \counter:count4[0]~regout\,
	datad => \counter:count4[1]~regout\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X37_Y35_N12
\Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\counter:count4[0]~regout\) # ((\counter:count4[2]~regout\ & !\counter:count4[1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter:count4[2]~regout\,
	datac => \counter:count4[0]~regout\,
	datad => \counter:count4[1]~regout\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X37_Y35_N22
\Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (!\counter:count4[1]~regout\ & (\counter:count4[2]~regout\ $ (\counter:count4[0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter:count4[2]~regout\,
	datac => \counter:count4[0]~regout\,
	datad => \counter:count4[1]~regout\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X37_Y35_N24
\Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (!\counter:count4[2]~regout\ & (!\counter:count4[0]~regout\ & \counter:count4[1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter:count4[2]~regout\,
	datac => \counter:count4[0]~regout\,
	datad => \counter:count4[1]~regout\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X37_Y35_N10
\Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\counter:count4[2]~regout\ & (\counter:count4[0]~regout\ $ (\counter:count4[1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter:count4[2]~regout\,
	datac => \counter:count4[0]~regout\,
	datad => \counter:count4[1]~regout\,
	combout => \Mux22~0_combout\);

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\un_cen[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_un_cen(0));

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\un_cen[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_un_cen(1));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\un_cen[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_un_cen(2));

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\un_cen[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_un_cen(3));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\un_cen[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_un_cen(4));

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\un_cen[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_un_cen(5));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\un_cen[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_un_cen(6));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ten_cen[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ten_cen(0));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ten_cen[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ten_cen(1));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ten_cen[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ten_cen(2));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ten_cen[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ten_cen(3));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ten_cen[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ten_cen(4));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ten_cen[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ten_cen(5));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ten_cen[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ten_cen(6));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\un_sec[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_un_sec(0));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\un_sec[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_un_sec(1));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\un_sec[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_un_sec(2));

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\un_sec[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_un_sec(3));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\un_sec[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_un_sec(4));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\un_sec[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_un_sec(5));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\un_sec[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_un_sec(6));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ten_sec[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ten_sec(0));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ten_sec[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ten_sec(1));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ten_sec[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ten_sec(2));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ten_sec[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ten_sec(3));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ten_sec[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ten_sec(4));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ten_sec[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ten_sec(5));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ten_sec[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ten_sec(6));
END structure;


