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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/26/2020 09:27:03"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Practica9 IS
    PORT (
	reset_n : IN std_logic;
	clk : IN std_logic;
	p1 : IN std_logic;
	p0 : IN std_logic;
	valid : OUT std_logic;
	espera : OUT std_logic
	);
END Practica9;

-- Design Ports Information
-- valid	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- espera	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_n	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p0	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- p1	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Practica9 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_p1 : std_logic;
SIGNAL ww_p0 : std_logic;
SIGNAL ww_valid : std_logic;
SIGNAL ww_espera : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_n~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Detector_secu|estado_act.EP01~regout\ : std_logic;
SIGNAL \Detector_secu|estado_act.EP0~regout\ : std_logic;
SIGNAL \Detector_secu|Selector2~0_combout\ : std_logic;
SIGNAL \Detector_secu|Selector2~1_combout\ : std_logic;
SIGNAL \Detector_secu|estado_act.Reposo~regout\ : std_logic;
SIGNAL \Detector_secu|Selector1~0_combout\ : std_logic;
SIGNAL \Detector_secu|Selector1~1_combout\ : std_logic;
SIGNAL \Detector_secu|Selector0~0_combout\ : std_logic;
SIGNAL \Detector_secu|Selector0~1_combout\ : std_logic;
SIGNAL \Detector_secu|Selector0~2_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \p0~combout\ : std_logic;
SIGNAL \DetectorFlanco_2|estado_act.Esp0~0_combout\ : std_logic;
SIGNAL \reset_n~combout\ : std_logic;
SIGNAL \reset_n~clkctrl_outclk\ : std_logic;
SIGNAL \DetectorFlanco_2|estado_act.Esp0~regout\ : std_logic;
SIGNAL \DetectorFlanco_2|Selector1~0_combout\ : std_logic;
SIGNAL \DetectorFlanco_2|estado_act.Pulso~regout\ : std_logic;
SIGNAL \p1~combout\ : std_logic;
SIGNAL \DetectorFlanco_1|estado_act.Esp0~0_combout\ : std_logic;
SIGNAL \DetectorFlanco_1|estado_act.Esp0~regout\ : std_logic;
SIGNAL \DetectorFlanco_1|Selector1~0_combout\ : std_logic;
SIGNAL \DetectorFlanco_1|estado_act.Pulso~regout\ : std_logic;
SIGNAL \Detector_secu|Selector3~0_combout\ : std_logic;
SIGNAL \Detector_secu|estado_act.EP011~regout\ : std_logic;
SIGNAL \Detector_secu|Selector4~0_combout\ : std_logic;
SIGNAL \Detector_secu|estado_act.EP0110~regout\ : std_logic;
SIGNAL \ALT_INV_reset_n~clkctrl_outclk\ : std_logic;
SIGNAL \Detector_secu|ALT_INV_estado_act.EP0110~regout\ : std_logic;
SIGNAL \ALT_INV_clk~clkctrl_outclk\ : std_logic;

BEGIN

ww_reset_n <= reset_n;
ww_clk <= clk;
ww_p1 <= p1;
ww_p0 <= p0;
valid <= ww_valid;
espera <= ww_espera;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\reset_n~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset_n~combout\);
\ALT_INV_reset_n~clkctrl_outclk\ <= NOT \reset_n~clkctrl_outclk\;
\Detector_secu|ALT_INV_estado_act.EP0110~regout\ <= NOT \Detector_secu|estado_act.EP0110~regout\;
\ALT_INV_clk~clkctrl_outclk\ <= NOT \clk~clkctrl_outclk\;

-- Location: LCFF_X1_Y22_N17
\Detector_secu|estado_act.EP01\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \Detector_secu|Selector2~1_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Detector_secu|estado_act.EP01~regout\);

-- Location: LCFF_X1_Y22_N7
\Detector_secu|estado_act.EP0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \Detector_secu|Selector1~1_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Detector_secu|estado_act.EP0~regout\);

-- Location: LCCOMB_X1_Y22_N0
\Detector_secu|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Detector_secu|Selector2~0_combout\ = (\DetectorFlanco_1|estado_act.Pulso~regout\ & (!\DetectorFlanco_2|estado_act.Pulso~regout\ & ((\Detector_secu|estado_act.EP0110~regout\) # (\Detector_secu|estado_act.EP0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DetectorFlanco_1|estado_act.Pulso~regout\,
	datab => \DetectorFlanco_2|estado_act.Pulso~regout\,
	datac => \Detector_secu|estado_act.EP0110~regout\,
	datad => \Detector_secu|estado_act.EP0~regout\,
	combout => \Detector_secu|Selector2~0_combout\);

-- Location: LCCOMB_X1_Y22_N16
\Detector_secu|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Detector_secu|Selector2~1_combout\ = (\Detector_secu|Selector2~0_combout\) # ((!\DetectorFlanco_1|estado_act.Pulso~regout\ & (!\DetectorFlanco_2|estado_act.Pulso~regout\ & \Detector_secu|estado_act.EP01~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DetectorFlanco_1|estado_act.Pulso~regout\,
	datab => \DetectorFlanco_2|estado_act.Pulso~regout\,
	datac => \Detector_secu|estado_act.EP01~regout\,
	datad => \Detector_secu|Selector2~0_combout\,
	combout => \Detector_secu|Selector2~1_combout\);

-- Location: LCFF_X1_Y22_N27
\Detector_secu|estado_act.Reposo\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \Detector_secu|Selector0~2_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Detector_secu|estado_act.Reposo~regout\);

-- Location: LCCOMB_X1_Y22_N28
\Detector_secu|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Detector_secu|Selector1~0_combout\ = (\Detector_secu|estado_act.Reposo~regout\ & ((\DetectorFlanco_1|estado_act.Pulso~regout\) # ((!\Detector_secu|estado_act.EP0110~regout\ & !\Detector_secu|estado_act.EP01~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DetectorFlanco_1|estado_act.Pulso~regout\,
	datab => \Detector_secu|estado_act.EP0110~regout\,
	datac => \Detector_secu|estado_act.EP01~regout\,
	datad => \Detector_secu|estado_act.Reposo~regout\,
	combout => \Detector_secu|Selector1~0_combout\);

-- Location: LCCOMB_X1_Y22_N6
\Detector_secu|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Detector_secu|Selector1~1_combout\ = (\DetectorFlanco_1|estado_act.Pulso~regout\ & (((\Detector_secu|estado_act.EP0~regout\ & !\Detector_secu|Selector1~0_combout\)))) # (!\DetectorFlanco_1|estado_act.Pulso~regout\ & 
-- ((\Detector_secu|estado_act.EP0~regout\) # ((\DetectorFlanco_2|estado_act.Pulso~regout\ & !\Detector_secu|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DetectorFlanco_1|estado_act.Pulso~regout\,
	datab => \DetectorFlanco_2|estado_act.Pulso~regout\,
	datac => \Detector_secu|estado_act.EP0~regout\,
	datad => \Detector_secu|Selector1~0_combout\,
	combout => \Detector_secu|Selector1~1_combout\);

-- Location: LCCOMB_X1_Y22_N2
\Detector_secu|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Detector_secu|Selector0~0_combout\ = (\DetectorFlanco_1|estado_act.Pulso~regout\ & (((\Detector_secu|estado_act.EP011~regout\)) # (!\Detector_secu|estado_act.Reposo~regout\))) # (!\DetectorFlanco_1|estado_act.Pulso~regout\ & 
-- (!\Detector_secu|estado_act.Reposo~regout\ & (!\DetectorFlanco_2|estado_act.Pulso~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DetectorFlanco_1|estado_act.Pulso~regout\,
	datab => \Detector_secu|estado_act.Reposo~regout\,
	datac => \DetectorFlanco_2|estado_act.Pulso~regout\,
	datad => \Detector_secu|estado_act.EP011~regout\,
	combout => \Detector_secu|Selector0~0_combout\);

-- Location: LCCOMB_X1_Y22_N24
\Detector_secu|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Detector_secu|Selector0~1_combout\ = (\DetectorFlanco_2|estado_act.Pulso~regout\ & ((\Detector_secu|estado_act.EP0~regout\) # ((\Detector_secu|estado_act.EP0110~regout\) # (\Detector_secu|estado_act.EP01~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Detector_secu|estado_act.EP0~regout\,
	datab => \DetectorFlanco_2|estado_act.Pulso~regout\,
	datac => \Detector_secu|estado_act.EP0110~regout\,
	datad => \Detector_secu|estado_act.EP01~regout\,
	combout => \Detector_secu|Selector0~1_combout\);

-- Location: LCCOMB_X1_Y22_N26
\Detector_secu|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Detector_secu|Selector0~2_combout\ = (!\Detector_secu|Selector0~0_combout\ & ((!\Detector_secu|Selector0~1_combout\) # (!\DetectorFlanco_1|estado_act.Pulso~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DetectorFlanco_1|estado_act.Pulso~regout\,
	datac => \Detector_secu|Selector0~1_combout\,
	datad => \Detector_secu|Selector0~0_combout\,
	combout => \Detector_secu|Selector0~2_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
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

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\p0~I\ : cycloneii_io
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
	padio => ww_p0,
	combout => \p0~combout\);

-- Location: LCCOMB_X1_Y22_N30
\DetectorFlanco_2|estado_act.Esp0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DetectorFlanco_2|estado_act.Esp0~0_combout\ = !\p0~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p0~combout\,
	combout => \DetectorFlanco_2|estado_act.Esp0~0_combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset_n~I\ : cycloneii_io
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
	padio => ww_reset_n,
	combout => \reset_n~combout\);

-- Location: CLKCTRL_G1
\reset_n~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_n~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_n~clkctrl_outclk\);

-- Location: LCFF_X1_Y22_N31
\DetectorFlanco_2|estado_act.Esp0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \DetectorFlanco_2|estado_act.Esp0~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DetectorFlanco_2|estado_act.Esp0~regout\);

-- Location: LCCOMB_X1_Y22_N8
\DetectorFlanco_2|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DetectorFlanco_2|Selector1~0_combout\ = (!\p0~combout\ & !\DetectorFlanco_2|estado_act.Esp0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p0~combout\,
	datac => \DetectorFlanco_2|estado_act.Esp0~regout\,
	combout => \DetectorFlanco_2|Selector1~0_combout\);

-- Location: LCFF_X1_Y22_N9
\DetectorFlanco_2|estado_act.Pulso\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \DetectorFlanco_2|Selector1~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DetectorFlanco_2|estado_act.Pulso~regout\);

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\p1~I\ : cycloneii_io
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
	padio => ww_p1,
	combout => \p1~combout\);

-- Location: LCCOMB_X1_Y22_N20
\DetectorFlanco_1|estado_act.Esp0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DetectorFlanco_1|estado_act.Esp0~0_combout\ = !\p1~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p1~combout\,
	combout => \DetectorFlanco_1|estado_act.Esp0~0_combout\);

-- Location: LCFF_X1_Y22_N21
\DetectorFlanco_1|estado_act.Esp0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \DetectorFlanco_1|estado_act.Esp0~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DetectorFlanco_1|estado_act.Esp0~regout\);

-- Location: LCCOMB_X1_Y22_N10
\DetectorFlanco_1|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DetectorFlanco_1|Selector1~0_combout\ = (!\p1~combout\ & !\DetectorFlanco_1|estado_act.Esp0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1~combout\,
	datad => \DetectorFlanco_1|estado_act.Esp0~regout\,
	combout => \DetectorFlanco_1|Selector1~0_combout\);

-- Location: LCFF_X1_Y22_N11
\DetectorFlanco_1|estado_act.Pulso\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \DetectorFlanco_1|Selector1~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DetectorFlanco_1|estado_act.Pulso~regout\);

-- Location: LCCOMB_X1_Y22_N22
\Detector_secu|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Detector_secu|Selector3~0_combout\ = (!\DetectorFlanco_2|estado_act.Pulso~regout\ & ((\DetectorFlanco_1|estado_act.Pulso~regout\ & (\Detector_secu|estado_act.EP01~regout\)) # (!\DetectorFlanco_1|estado_act.Pulso~regout\ & 
-- ((\Detector_secu|estado_act.EP011~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Detector_secu|estado_act.EP01~regout\,
	datab => \DetectorFlanco_2|estado_act.Pulso~regout\,
	datac => \Detector_secu|estado_act.EP011~regout\,
	datad => \DetectorFlanco_1|estado_act.Pulso~regout\,
	combout => \Detector_secu|Selector3~0_combout\);

-- Location: LCFF_X1_Y22_N23
\Detector_secu|estado_act.EP011\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \Detector_secu|Selector3~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Detector_secu|estado_act.EP011~regout\);

-- Location: LCCOMB_X1_Y22_N4
\Detector_secu|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Detector_secu|Selector4~0_combout\ = (!\DetectorFlanco_1|estado_act.Pulso~regout\ & ((\DetectorFlanco_2|estado_act.Pulso~regout\ & ((\Detector_secu|estado_act.EP011~regout\))) # (!\DetectorFlanco_2|estado_act.Pulso~regout\ & 
-- (\Detector_secu|estado_act.EP0110~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DetectorFlanco_1|estado_act.Pulso~regout\,
	datab => \DetectorFlanco_2|estado_act.Pulso~regout\,
	datac => \Detector_secu|estado_act.EP0110~regout\,
	datad => \Detector_secu|estado_act.EP011~regout\,
	combout => \Detector_secu|Selector4~0_combout\);

-- Location: LCFF_X1_Y22_N5
\Detector_secu|estado_act.EP0110\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \Detector_secu|Selector4~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Detector_secu|estado_act.EP0110~regout\);

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\valid~I\ : cycloneii_io
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
	datain => \Detector_secu|estado_act.EP0110~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_valid);

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\espera~I\ : cycloneii_io
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
	datain => \Detector_secu|ALT_INV_estado_act.EP0110~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_espera);
END structure;


