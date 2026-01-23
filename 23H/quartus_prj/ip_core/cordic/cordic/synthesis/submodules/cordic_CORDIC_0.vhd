-- ------------------------------------------------------------------------- 
-- High Level Design Compiler for Intel(R) FPGAs Version 18.0 (Release Build #614)
-- Quartus Prime development tool and MATLAB/Simulink Interface
-- 
-- Legal Notice: Copyright 2018 Intel Corporation.  All rights reserved.
-- Your use of  Intel Corporation's design tools,  logic functions and other
-- software and  tools, and its AMPP partner logic functions, and any output
-- files any  of the foregoing (including  device programming  or simulation
-- files), and  any associated  documentation  or information  are expressly
-- subject  to the terms and  conditions of the  Intel FPGA Software License
-- Agreement, Intel MegaCore Function License Agreement, or other applicable
-- license agreement,  including,  without limitation,  that your use is for
-- the  sole  purpose of  programming  logic devices  manufactured by  Intel
-- and  sold by Intel  or its authorized  distributors. Please refer  to the
-- applicable agreement for further details.
-- ---------------------------------------------------------------------------

-- VHDL created from cordic_CORDIC_0
-- VHDL created on Tue Jan 20 15:46:35 2026


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY lpm;
USE lpm.lpm_components.all;

entity cordic_CORDIC_0 is
    port (
        x : in std_logic_vector(9 downto 0);  -- sfix10
        y : in std_logic_vector(9 downto 0);  -- sfix10
        en : in std_logic_vector(0 downto 0);  -- ufix1
        q : out std_logic_vector(12 downto 0);  -- sfix13_en10
        clk : in std_logic;
        areset : in std_logic
    );
end cordic_CORDIC_0;

architecture normal of cordic_CORDIC_0 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal constantZero_uid6_atan2Test_q : STD_LOGIC_VECTOR (9 downto 0);
    signal signX_uid7_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal signY_uid8_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignX_uid9_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal absXE_uid10_atan2Test_a : STD_LOGIC_VECTOR (11 downto 0);
    signal absXE_uid10_atan2Test_b : STD_LOGIC_VECTOR (11 downto 0);
    signal absXE_uid10_atan2Test_o : STD_LOGIC_VECTOR (11 downto 0);
    signal absXE_uid10_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal absXE_uid10_atan2Test_q : STD_LOGIC_VECTOR (10 downto 0);
    signal invSignY_uid11_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal absYE_uid12_atan2Test_a : STD_LOGIC_VECTOR (11 downto 0);
    signal absYE_uid12_atan2Test_b : STD_LOGIC_VECTOR (11 downto 0);
    signal absYE_uid12_atan2Test_o : STD_LOGIC_VECTOR (11 downto 0);
    signal absYE_uid12_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal absYE_uid12_atan2Test_q : STD_LOGIC_VECTOR (10 downto 0);
    signal absX_uid13_atan2Test_in : STD_LOGIC_VECTOR (9 downto 0);
    signal absX_uid13_atan2Test_b : STD_LOGIC_VECTOR (9 downto 0);
    signal absY_uid14_atan2Test_in : STD_LOGIC_VECTOR (9 downto 0);
    signal absY_uid14_atan2Test_b : STD_LOGIC_VECTOR (9 downto 0);
    signal yNotZero_uid15_atan2Test_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal yNotZero_uid15_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yZero_uid16_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xNotZero_uid17_atan2Test_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal xNotZero_uid17_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xZero_uid18_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_1_uid23_atan2Test_a : STD_LOGIC_VECTOR (10 downto 0);
    signal xip1E_1_uid23_atan2Test_b : STD_LOGIC_VECTOR (10 downto 0);
    signal xip1E_1_uid23_atan2Test_o : STD_LOGIC_VECTOR (10 downto 0);
    signal xip1E_1_uid23_atan2Test_q : STD_LOGIC_VECTOR (10 downto 0);
    signal yip1E_1_uid24_atan2Test_a : STD_LOGIC_VECTOR (10 downto 0);
    signal yip1E_1_uid24_atan2Test_b : STD_LOGIC_VECTOR (10 downto 0);
    signal yip1E_1_uid24_atan2Test_o : STD_LOGIC_VECTOR (10 downto 0);
    signal yip1E_1_uid24_atan2Test_q : STD_LOGIC_VECTOR (10 downto 0);
    signal xMSB_uid32_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid37_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_2NA_uid39_atan2Test_q : STD_LOGIC_VECTOR (11 downto 0);
    signal xip1E_2sumAHighB_uid40_atan2Test_a : STD_LOGIC_VECTOR (14 downto 0);
    signal xip1E_2sumAHighB_uid40_atan2Test_b : STD_LOGIC_VECTOR (14 downto 0);
    signal xip1E_2sumAHighB_uid40_atan2Test_o : STD_LOGIC_VECTOR (14 downto 0);
    signal xip1E_2sumAHighB_uid40_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_2sumAHighB_uid40_atan2Test_q : STD_LOGIC_VECTOR (13 downto 0);
    signal yip1E_2NA_uid42_atan2Test_q : STD_LOGIC_VECTOR (11 downto 0);
    signal yip1E_2sumAHighB_uid43_atan2Test_a : STD_LOGIC_VECTOR (13 downto 0);
    signal yip1E_2sumAHighB_uid43_atan2Test_b : STD_LOGIC_VECTOR (13 downto 0);
    signal yip1E_2sumAHighB_uid43_atan2Test_o : STD_LOGIC_VECTOR (13 downto 0);
    signal yip1E_2sumAHighB_uid43_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_2sumAHighB_uid43_atan2Test_q : STD_LOGIC_VECTOR (12 downto 0);
    signal xip1_2_uid48_atan2Test_in : STD_LOGIC_VECTOR (11 downto 0);
    signal xip1_2_uid48_atan2Test_b : STD_LOGIC_VECTOR (11 downto 0);
    signal yip1_2_uid49_atan2Test_in : STD_LOGIC_VECTOR (11 downto 0);
    signal yip1_2_uid49_atan2Test_b : STD_LOGIC_VECTOR (11 downto 0);
    signal xMSB_uid51_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid56_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_3CostZeroPaddingA_uid57_atan2Test_q : STD_LOGIC_VECTOR (1 downto 0);
    signal xip1E_3NA_uid58_atan2Test_q : STD_LOGIC_VECTOR (13 downto 0);
    signal xip1E_3sumAHighB_uid59_atan2Test_a : STD_LOGIC_VECTOR (16 downto 0);
    signal xip1E_3sumAHighB_uid59_atan2Test_b : STD_LOGIC_VECTOR (16 downto 0);
    signal xip1E_3sumAHighB_uid59_atan2Test_o : STD_LOGIC_VECTOR (16 downto 0);
    signal xip1E_3sumAHighB_uid59_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_3sumAHighB_uid59_atan2Test_q : STD_LOGIC_VECTOR (15 downto 0);
    signal yip1E_3NA_uid61_atan2Test_q : STD_LOGIC_VECTOR (13 downto 0);
    signal yip1E_3sumAHighB_uid62_atan2Test_a : STD_LOGIC_VECTOR (15 downto 0);
    signal yip1E_3sumAHighB_uid62_atan2Test_b : STD_LOGIC_VECTOR (15 downto 0);
    signal yip1E_3sumAHighB_uid62_atan2Test_o : STD_LOGIC_VECTOR (15 downto 0);
    signal yip1E_3sumAHighB_uid62_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_3sumAHighB_uid62_atan2Test_q : STD_LOGIC_VECTOR (14 downto 0);
    signal xip1_3_uid67_atan2Test_in : STD_LOGIC_VECTOR (13 downto 0);
    signal xip1_3_uid67_atan2Test_b : STD_LOGIC_VECTOR (13 downto 0);
    signal yip1_3_uid68_atan2Test_in : STD_LOGIC_VECTOR (12 downto 0);
    signal yip1_3_uid68_atan2Test_b : STD_LOGIC_VECTOR (12 downto 0);
    signal xMSB_uid70_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid75_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_4CostZeroPaddingA_uid76_atan2Test_q : STD_LOGIC_VECTOR (2 downto 0);
    signal xip1E_4NA_uid77_atan2Test_q : STD_LOGIC_VECTOR (16 downto 0);
    signal xip1E_4sumAHighB_uid78_atan2Test_a : STD_LOGIC_VECTOR (19 downto 0);
    signal xip1E_4sumAHighB_uid78_atan2Test_b : STD_LOGIC_VECTOR (19 downto 0);
    signal xip1E_4sumAHighB_uid78_atan2Test_o : STD_LOGIC_VECTOR (19 downto 0);
    signal xip1E_4sumAHighB_uid78_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_4sumAHighB_uid78_atan2Test_q : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1E_4NA_uid80_atan2Test_q : STD_LOGIC_VECTOR (15 downto 0);
    signal yip1E_4sumAHighB_uid81_atan2Test_a : STD_LOGIC_VECTOR (17 downto 0);
    signal yip1E_4sumAHighB_uid81_atan2Test_b : STD_LOGIC_VECTOR (17 downto 0);
    signal yip1E_4sumAHighB_uid81_atan2Test_o : STD_LOGIC_VECTOR (17 downto 0);
    signal yip1E_4sumAHighB_uid81_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_4sumAHighB_uid81_atan2Test_q : STD_LOGIC_VECTOR (16 downto 0);
    signal xip1_4_uid86_atan2Test_in : STD_LOGIC_VECTOR (16 downto 0);
    signal xip1_4_uid86_atan2Test_b : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1_4_uid87_atan2Test_in : STD_LOGIC_VECTOR (14 downto 0);
    signal yip1_4_uid87_atan2Test_b : STD_LOGIC_VECTOR (14 downto 0);
    signal xMSB_uid89_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignOfSelectionSignal_uid94_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_5CostZeroPaddingA_uid95_atan2Test_q : STD_LOGIC_VECTOR (3 downto 0);
    signal xip1E_5NA_uid96_atan2Test_q : STD_LOGIC_VECTOR (20 downto 0);
    signal xip1E_5sumAHighB_uid97_atan2Test_a : STD_LOGIC_VECTOR (23 downto 0);
    signal xip1E_5sumAHighB_uid97_atan2Test_b : STD_LOGIC_VECTOR (23 downto 0);
    signal xip1E_5sumAHighB_uid97_atan2Test_o : STD_LOGIC_VECTOR (23 downto 0);
    signal xip1E_5sumAHighB_uid97_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_5sumAHighB_uid97_atan2Test_q : STD_LOGIC_VECTOR (22 downto 0);
    signal yip1E_5NA_uid99_atan2Test_q : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1E_5sumAHighB_uid100_atan2Test_a : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1E_5sumAHighB_uid100_atan2Test_b : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1E_5sumAHighB_uid100_atan2Test_o : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1E_5sumAHighB_uid100_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_5sumAHighB_uid100_atan2Test_q : STD_LOGIC_VECTOR (19 downto 0);
    signal xip1_5_uid105_atan2Test_in : STD_LOGIC_VECTOR (20 downto 0);
    signal xip1_5_uid105_atan2Test_b : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1_5_uid106_atan2Test_in : STD_LOGIC_VECTOR (17 downto 0);
    signal yip1_5_uid106_atan2Test_b : STD_LOGIC_VECTOR (17 downto 0);
    signal xMSB_uid108_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid112_atan2Test_b : STD_LOGIC_VECTOR (19 downto 0);
    signal twoToMiSiYip_uid113_atan2Test_b : STD_LOGIC_VECTOR (16 downto 0);
    signal invSignOfSelectionSignal_uid115_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_6NA_uid117_atan2Test_q : STD_LOGIC_VECTOR (24 downto 0);
    signal xip1E_6sumAHighB_uid118_atan2Test_a : STD_LOGIC_VECTOR (27 downto 0);
    signal xip1E_6sumAHighB_uid118_atan2Test_b : STD_LOGIC_VECTOR (27 downto 0);
    signal xip1E_6sumAHighB_uid118_atan2Test_o : STD_LOGIC_VECTOR (27 downto 0);
    signal xip1E_6sumAHighB_uid118_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_6sumAHighB_uid118_atan2Test_q : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1E_6NA_uid120_atan2Test_q : STD_LOGIC_VECTOR (21 downto 0);
    signal yip1E_6sumAHighB_uid121_atan2Test_a : STD_LOGIC_VECTOR (23 downto 0);
    signal yip1E_6sumAHighB_uid121_atan2Test_b : STD_LOGIC_VECTOR (23 downto 0);
    signal yip1E_6sumAHighB_uid121_atan2Test_o : STD_LOGIC_VECTOR (23 downto 0);
    signal yip1E_6sumAHighB_uid121_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_6sumAHighB_uid121_atan2Test_q : STD_LOGIC_VECTOR (22 downto 0);
    signal xip1_6_uid126_atan2Test_in : STD_LOGIC_VECTOR (24 downto 0);
    signal xip1_6_uid126_atan2Test_b : STD_LOGIC_VECTOR (24 downto 0);
    signal yip1_6_uid127_atan2Test_in : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1_6_uid127_atan2Test_b : STD_LOGIC_VECTOR (20 downto 0);
    signal xMSB_uid129_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid133_atan2Test_b : STD_LOGIC_VECTOR (18 downto 0);
    signal twoToMiSiYip_uid134_atan2Test_b : STD_LOGIC_VECTOR (14 downto 0);
    signal invSignOfSelectionSignal_uid136_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_7_uid137_atan2Test_a : STD_LOGIC_VECTOR (27 downto 0);
    signal xip1E_7_uid137_atan2Test_b : STD_LOGIC_VECTOR (27 downto 0);
    signal xip1E_7_uid137_atan2Test_o : STD_LOGIC_VECTOR (27 downto 0);
    signal xip1E_7_uid137_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_7_uid137_atan2Test_q : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1E_7_uid138_atan2Test_a : STD_LOGIC_VECTOR (22 downto 0);
    signal yip1E_7_uid138_atan2Test_b : STD_LOGIC_VECTOR (22 downto 0);
    signal yip1E_7_uid138_atan2Test_o : STD_LOGIC_VECTOR (22 downto 0);
    signal yip1E_7_uid138_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_7_uid138_atan2Test_q : STD_LOGIC_VECTOR (21 downto 0);
    signal xip1_7_uid143_atan2Test_in : STD_LOGIC_VECTOR (24 downto 0);
    signal xip1_7_uid143_atan2Test_b : STD_LOGIC_VECTOR (24 downto 0);
    signal yip1_7_uid144_atan2Test_in : STD_LOGIC_VECTOR (19 downto 0);
    signal yip1_7_uid144_atan2Test_b : STD_LOGIC_VECTOR (19 downto 0);
    signal xMSB_uid146_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid150_atan2Test_b : STD_LOGIC_VECTOR (17 downto 0);
    signal twoToMiSiYip_uid151_atan2Test_b : STD_LOGIC_VECTOR (12 downto 0);
    signal invSignOfSelectionSignal_uid153_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_8_uid154_atan2Test_a : STD_LOGIC_VECTOR (27 downto 0);
    signal xip1E_8_uid154_atan2Test_b : STD_LOGIC_VECTOR (27 downto 0);
    signal xip1E_8_uid154_atan2Test_o : STD_LOGIC_VECTOR (27 downto 0);
    signal xip1E_8_uid154_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_8_uid154_atan2Test_q : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1E_8_uid155_atan2Test_a : STD_LOGIC_VECTOR (21 downto 0);
    signal yip1E_8_uid155_atan2Test_b : STD_LOGIC_VECTOR (21 downto 0);
    signal yip1E_8_uid155_atan2Test_o : STD_LOGIC_VECTOR (21 downto 0);
    signal yip1E_8_uid155_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_8_uid155_atan2Test_q : STD_LOGIC_VECTOR (20 downto 0);
    signal xip1_8_uid160_atan2Test_in : STD_LOGIC_VECTOR (24 downto 0);
    signal xip1_8_uid160_atan2Test_b : STD_LOGIC_VECTOR (24 downto 0);
    signal yip1_8_uid161_atan2Test_in : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1_8_uid161_atan2Test_b : STD_LOGIC_VECTOR (18 downto 0);
    signal xMSB_uid163_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid167_atan2Test_b : STD_LOGIC_VECTOR (16 downto 0);
    signal twoToMiSiYip_uid168_atan2Test_b : STD_LOGIC_VECTOR (10 downto 0);
    signal invSignOfSelectionSignal_uid170_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_9_uid171_atan2Test_a : STD_LOGIC_VECTOR (27 downto 0);
    signal xip1E_9_uid171_atan2Test_b : STD_LOGIC_VECTOR (27 downto 0);
    signal xip1E_9_uid171_atan2Test_o : STD_LOGIC_VECTOR (27 downto 0);
    signal xip1E_9_uid171_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_9_uid171_atan2Test_q : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1E_9_uid172_atan2Test_a : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1E_9_uid172_atan2Test_b : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1E_9_uid172_atan2Test_o : STD_LOGIC_VECTOR (20 downto 0);
    signal yip1E_9_uid172_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_9_uid172_atan2Test_q : STD_LOGIC_VECTOR (19 downto 0);
    signal xip1_9_uid177_atan2Test_in : STD_LOGIC_VECTOR (24 downto 0);
    signal xip1_9_uid177_atan2Test_b : STD_LOGIC_VECTOR (24 downto 0);
    signal yip1_9_uid178_atan2Test_in : STD_LOGIC_VECTOR (17 downto 0);
    signal yip1_9_uid178_atan2Test_b : STD_LOGIC_VECTOR (17 downto 0);
    signal xMSB_uid180_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid184_atan2Test_b : STD_LOGIC_VECTOR (15 downto 0);
    signal twoToMiSiYip_uid185_atan2Test_b : STD_LOGIC_VECTOR (8 downto 0);
    signal invSignOfSelectionSignal_uid187_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_10_uid188_atan2Test_a : STD_LOGIC_VECTOR (27 downto 0);
    signal xip1E_10_uid188_atan2Test_b : STD_LOGIC_VECTOR (27 downto 0);
    signal xip1E_10_uid188_atan2Test_o : STD_LOGIC_VECTOR (27 downto 0);
    signal xip1E_10_uid188_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_10_uid188_atan2Test_q : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1E_10_uid189_atan2Test_a : STD_LOGIC_VECTOR (19 downto 0);
    signal yip1E_10_uid189_atan2Test_b : STD_LOGIC_VECTOR (19 downto 0);
    signal yip1E_10_uid189_atan2Test_o : STD_LOGIC_VECTOR (19 downto 0);
    signal yip1E_10_uid189_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_10_uid189_atan2Test_q : STD_LOGIC_VECTOR (18 downto 0);
    signal xip1_10_uid194_atan2Test_in : STD_LOGIC_VECTOR (24 downto 0);
    signal xip1_10_uid194_atan2Test_b : STD_LOGIC_VECTOR (24 downto 0);
    signal yip1_10_uid195_atan2Test_in : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1_10_uid195_atan2Test_b : STD_LOGIC_VECTOR (16 downto 0);
    signal xMSB_uid197_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid201_atan2Test_b : STD_LOGIC_VECTOR (14 downto 0);
    signal twoToMiSiYip_uid202_atan2Test_b : STD_LOGIC_VECTOR (6 downto 0);
    signal invSignOfSelectionSignal_uid204_atan2Test_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_11_uid205_atan2Test_a : STD_LOGIC_VECTOR (27 downto 0);
    signal xip1E_11_uid205_atan2Test_b : STD_LOGIC_VECTOR (27 downto 0);
    signal xip1E_11_uid205_atan2Test_o : STD_LOGIC_VECTOR (27 downto 0);
    signal xip1E_11_uid205_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal xip1E_11_uid205_atan2Test_q : STD_LOGIC_VECTOR (26 downto 0);
    signal yip1E_11_uid206_atan2Test_a : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1E_11_uid206_atan2Test_b : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1E_11_uid206_atan2Test_o : STD_LOGIC_VECTOR (18 downto 0);
    signal yip1E_11_uid206_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_11_uid206_atan2Test_q : STD_LOGIC_VECTOR (17 downto 0);
    signal xip1_11_uid211_atan2Test_in : STD_LOGIC_VECTOR (24 downto 0);
    signal xip1_11_uid211_atan2Test_b : STD_LOGIC_VECTOR (24 downto 0);
    signal yip1_11_uid212_atan2Test_in : STD_LOGIC_VECTOR (15 downto 0);
    signal yip1_11_uid212_atan2Test_b : STD_LOGIC_VECTOR (15 downto 0);
    signal xMSB_uid214_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal twoToMiSiXip_uid218_atan2Test_b : STD_LOGIC_VECTOR (13 downto 0);
    signal yip1E_12_uid223_atan2Test_a : STD_LOGIC_VECTOR (17 downto 0);
    signal yip1E_12_uid223_atan2Test_b : STD_LOGIC_VECTOR (17 downto 0);
    signal yip1E_12_uid223_atan2Test_o : STD_LOGIC_VECTOR (17 downto 0);
    signal yip1E_12_uid223_atan2Test_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yip1E_12_uid223_atan2Test_q : STD_LOGIC_VECTOR (16 downto 0);
    signal yip1_12_uid229_atan2Test_in : STD_LOGIC_VECTOR (14 downto 0);
    signal yip1_12_uid229_atan2Test_b : STD_LOGIC_VECTOR (14 downto 0);
    signal xMSB_uid231_atan2Test_b : STD_LOGIC_VECTOR (0 downto 0);
    signal concSignVector_uid248_atan2Test_q : STD_LOGIC_VECTOR (12 downto 0);
    signal table_l3_uid250_atan2Test_q : STD_LOGIC_VECTOR (17 downto 0);
    signal table_l7_uid254_atan2Test_q : STD_LOGIC_VECTOR (13 downto 0);
    signal table_l11_uid258_atan2Test_q : STD_LOGIC_VECTOR (9 downto 0);
    signal table_l12_uid262_atan2Test_q : STD_LOGIC_VECTOR (5 downto 0);
    signal lev1_a0_uid265_atan2Test_a : STD_LOGIC_VECTOR (18 downto 0);
    signal lev1_a0_uid265_atan2Test_b : STD_LOGIC_VECTOR (18 downto 0);
    signal lev1_a0_uid265_atan2Test_o : STD_LOGIC_VECTOR (18 downto 0);
    signal lev1_a0_uid265_atan2Test_q : STD_LOGIC_VECTOR (18 downto 0);
    signal lev1_a1_uid266_atan2Test_a : STD_LOGIC_VECTOR (10 downto 0);
    signal lev1_a1_uid266_atan2Test_b : STD_LOGIC_VECTOR (10 downto 0);
    signal lev1_a1_uid266_atan2Test_o : STD_LOGIC_VECTOR (10 downto 0);
    signal lev1_a1_uid266_atan2Test_q : STD_LOGIC_VECTOR (10 downto 0);
    signal lev2_a0_uid267_atan2Test_a : STD_LOGIC_VECTOR (19 downto 0);
    signal lev2_a0_uid267_atan2Test_b : STD_LOGIC_VECTOR (19 downto 0);
    signal lev2_a0_uid267_atan2Test_o : STD_LOGIC_VECTOR (19 downto 0);
    signal lev2_a0_uid267_atan2Test_q : STD_LOGIC_VECTOR (19 downto 0);
    signal atanRes_uid268_atan2Test_in : STD_LOGIC_VECTOR (17 downto 0);
    signal atanRes_uid268_atan2Test_b : STD_LOGIC_VECTOR (13 downto 0);
    signal cstZeroOutFormat_uid269_atan2Test_q : STD_LOGIC_VECTOR (13 downto 0);
    signal constPiP2uE_uid270_atan2Test_q : STD_LOGIC_VECTOR (12 downto 0);
    signal constPio2P2u_mergedSignalTM_uid273_atan2Test_q : STD_LOGIC_VECTOR (13 downto 0);
    signal concXZeroYZero_uid275_atan2Test_q : STD_LOGIC_VECTOR (1 downto 0);
    signal atanResPostExc_uid276_atan2Test_s : STD_LOGIC_VECTOR (1 downto 0);
    signal atanResPostExc_uid276_atan2Test_q : STD_LOGIC_VECTOR (13 downto 0);
    signal concSigns_uid277_atan2Test_q : STD_LOGIC_VECTOR (1 downto 0);
    signal constPiP2u_uid278_atan2Test_q : STD_LOGIC_VECTOR (13 downto 0);
    signal constPi_uid279_atan2Test_q : STD_LOGIC_VECTOR (13 downto 0);
    signal constantZeroOutFormat_uid280_atan2Test_q : STD_LOGIC_VECTOR (13 downto 0);
    signal constantZeroOutFormatP2u_uid281_atan2Test_q : STD_LOGIC_VECTOR (13 downto 0);
    signal firstOperand_uid283_atan2Test_s : STD_LOGIC_VECTOR (1 downto 0);
    signal firstOperand_uid283_atan2Test_q : STD_LOGIC_VECTOR (13 downto 0);
    signal secondOperand_uid284_atan2Test_s : STD_LOGIC_VECTOR (1 downto 0);
    signal secondOperand_uid284_atan2Test_q : STD_LOGIC_VECTOR (13 downto 0);
    signal outResExtended_uid285_atan2Test_a : STD_LOGIC_VECTOR (14 downto 0);
    signal outResExtended_uid285_atan2Test_b : STD_LOGIC_VECTOR (14 downto 0);
    signal outResExtended_uid285_atan2Test_o : STD_LOGIC_VECTOR (14 downto 0);
    signal outResExtended_uid285_atan2Test_q : STD_LOGIC_VECTOR (14 downto 0);
    signal atanResPostRR_uid286_atan2Test_b : STD_LOGIC_VECTOR (12 downto 0);
    signal is0_uid249_atan2Test_merged_bit_select_b : STD_LOGIC_VECTOR (3 downto 0);
    signal is0_uid249_atan2Test_merged_bit_select_c : STD_LOGIC_VECTOR (3 downto 0);
    signal is0_uid249_atan2Test_merged_bit_select_d : STD_LOGIC_VECTOR (3 downto 0);
    signal is0_uid249_atan2Test_merged_bit_select_e : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_yip1_8_uid161_atan2Test_b_1_q : STD_LOGIC_VECTOR (18 downto 0);
    signal redist1_xip1_8_uid160_atan2Test_b_1_q : STD_LOGIC_VECTOR (24 downto 0);
    signal redist2_xMSB_uid146_atan2Test_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_xMSB_uid129_atan2Test_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_xMSB_uid108_atan2Test_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_xMSB_uid89_atan2Test_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_xMSB_uid70_atan2Test_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_xMSB_uid51_atan2Test_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_xMSB_uid32_atan2Test_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_signY_uid8_atan2Test_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_signX_uid7_atan2Test_b_1_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- constPi_uid279_atan2Test(CONSTANT,278)
    constPi_uid279_atan2Test_q <= "11001001000100";

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- constPiP2uE_uid270_atan2Test(CONSTANT,269)
    constPiP2uE_uid270_atan2Test_q <= "1100100100100";

    -- constPio2P2u_mergedSignalTM_uid273_atan2Test(BITJOIN,272)@1
    constPio2P2u_mergedSignalTM_uid273_atan2Test_q <= GND_q & constPiP2uE_uid270_atan2Test_q;

    -- cstZeroOutFormat_uid269_atan2Test(CONSTANT,268)
    cstZeroOutFormat_uid269_atan2Test_q <= "00000000000010";

    -- signX_uid7_atan2Test(BITSELECT,6)@0
    signX_uid7_atan2Test_b <= STD_LOGIC_VECTOR(x(9 downto 9));

    -- invSignX_uid9_atan2Test(LOGICAL,8)@0
    invSignX_uid9_atan2Test_q <= not (signX_uid7_atan2Test_b);

    -- constantZero_uid6_atan2Test(CONSTANT,5)
    constantZero_uid6_atan2Test_q <= "0000000000";

    -- absXE_uid10_atan2Test(ADDSUB,9)@0
    absXE_uid10_atan2Test_s <= invSignX_uid9_atan2Test_q;
    absXE_uid10_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 10 => constantZero_uid6_atan2Test_q(9)) & constantZero_uid6_atan2Test_q));
    absXE_uid10_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 10 => x(9)) & x));
    absXE_uid10_atan2Test_combproc: PROCESS (absXE_uid10_atan2Test_a, absXE_uid10_atan2Test_b, absXE_uid10_atan2Test_s)
    BEGIN
        IF (absXE_uid10_atan2Test_s = "1") THEN
            absXE_uid10_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(absXE_uid10_atan2Test_a) + SIGNED(absXE_uid10_atan2Test_b));
        ELSE
            absXE_uid10_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(absXE_uid10_atan2Test_a) - SIGNED(absXE_uid10_atan2Test_b));
        END IF;
    END PROCESS;
    absXE_uid10_atan2Test_q <= absXE_uid10_atan2Test_o(10 downto 0);

    -- absX_uid13_atan2Test(BITSELECT,12)@0
    absX_uid13_atan2Test_in <= absXE_uid10_atan2Test_q(9 downto 0);
    absX_uid13_atan2Test_b <= absX_uid13_atan2Test_in(9 downto 0);

    -- signY_uid8_atan2Test(BITSELECT,7)@0
    signY_uid8_atan2Test_b <= STD_LOGIC_VECTOR(y(9 downto 9));

    -- invSignY_uid11_atan2Test(LOGICAL,10)@0
    invSignY_uid11_atan2Test_q <= not (signY_uid8_atan2Test_b);

    -- absYE_uid12_atan2Test(ADDSUB,11)@0
    absYE_uid12_atan2Test_s <= invSignY_uid11_atan2Test_q;
    absYE_uid12_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 10 => constantZero_uid6_atan2Test_q(9)) & constantZero_uid6_atan2Test_q));
    absYE_uid12_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 10 => y(9)) & y));
    absYE_uid12_atan2Test_combproc: PROCESS (absYE_uid12_atan2Test_a, absYE_uid12_atan2Test_b, absYE_uid12_atan2Test_s)
    BEGIN
        IF (absYE_uid12_atan2Test_s = "1") THEN
            absYE_uid12_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(absYE_uid12_atan2Test_a) + SIGNED(absYE_uid12_atan2Test_b));
        ELSE
            absYE_uid12_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(absYE_uid12_atan2Test_a) - SIGNED(absYE_uid12_atan2Test_b));
        END IF;
    END PROCESS;
    absYE_uid12_atan2Test_q <= absYE_uid12_atan2Test_o(10 downto 0);

    -- absY_uid14_atan2Test(BITSELECT,13)@0
    absY_uid14_atan2Test_in <= absYE_uid12_atan2Test_q(9 downto 0);
    absY_uid14_atan2Test_b <= absY_uid14_atan2Test_in(9 downto 0);

    -- yip1E_1_uid24_atan2Test(SUB,23)@0
    yip1E_1_uid24_atan2Test_a <= STD_LOGIC_VECTOR("0" & absY_uid14_atan2Test_b);
    yip1E_1_uid24_atan2Test_b <= STD_LOGIC_VECTOR("0" & absX_uid13_atan2Test_b);
    yip1E_1_uid24_atan2Test_o <= STD_LOGIC_VECTOR(UNSIGNED(yip1E_1_uid24_atan2Test_a) - UNSIGNED(yip1E_1_uid24_atan2Test_b));
    yip1E_1_uid24_atan2Test_q <= yip1E_1_uid24_atan2Test_o(10 downto 0);

    -- xMSB_uid32_atan2Test(BITSELECT,31)@0
    xMSB_uid32_atan2Test_b <= STD_LOGIC_VECTOR(yip1E_1_uid24_atan2Test_q(10 downto 10));

    -- redist8_xMSB_uid32_atan2Test_b_1(DELAY,296)
    redist8_xMSB_uid32_atan2Test_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid32_atan2Test_b, xout => redist8_xMSB_uid32_atan2Test_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- xip1E_1_uid23_atan2Test(ADD,22)@0
    xip1E_1_uid23_atan2Test_a <= STD_LOGIC_VECTOR("0" & absX_uid13_atan2Test_b);
    xip1E_1_uid23_atan2Test_b <= STD_LOGIC_VECTOR("0" & absY_uid14_atan2Test_b);
    xip1E_1_uid23_atan2Test_o <= STD_LOGIC_VECTOR(UNSIGNED(xip1E_1_uid23_atan2Test_a) + UNSIGNED(xip1E_1_uid23_atan2Test_b));
    xip1E_1_uid23_atan2Test_q <= xip1E_1_uid23_atan2Test_o(10 downto 0);

    -- yip1E_2NA_uid42_atan2Test(BITJOIN,41)@0
    yip1E_2NA_uid42_atan2Test_q <= yip1E_1_uid24_atan2Test_q & GND_q;

    -- yip1E_2sumAHighB_uid43_atan2Test(ADDSUB,42)@0
    yip1E_2sumAHighB_uid43_atan2Test_s <= xMSB_uid32_atan2Test_b;
    yip1E_2sumAHighB_uid43_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 12 => yip1E_2NA_uid42_atan2Test_q(11)) & yip1E_2NA_uid42_atan2Test_q));
    yip1E_2sumAHighB_uid43_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & xip1E_1_uid23_atan2Test_q));
    yip1E_2sumAHighB_uid43_atan2Test_combproc: PROCESS (yip1E_2sumAHighB_uid43_atan2Test_a, yip1E_2sumAHighB_uid43_atan2Test_b, yip1E_2sumAHighB_uid43_atan2Test_s)
    BEGIN
        IF (yip1E_2sumAHighB_uid43_atan2Test_s = "1") THEN
            yip1E_2sumAHighB_uid43_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_2sumAHighB_uid43_atan2Test_a) + SIGNED(yip1E_2sumAHighB_uid43_atan2Test_b));
        ELSE
            yip1E_2sumAHighB_uid43_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_2sumAHighB_uid43_atan2Test_a) - SIGNED(yip1E_2sumAHighB_uid43_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_2sumAHighB_uid43_atan2Test_q <= yip1E_2sumAHighB_uid43_atan2Test_o(12 downto 0);

    -- yip1_2_uid49_atan2Test(BITSELECT,48)@0
    yip1_2_uid49_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_2sumAHighB_uid43_atan2Test_q(11 downto 0));
    yip1_2_uid49_atan2Test_b <= STD_LOGIC_VECTOR(yip1_2_uid49_atan2Test_in(11 downto 0));

    -- xMSB_uid51_atan2Test(BITSELECT,50)@0
    xMSB_uid51_atan2Test_b <= STD_LOGIC_VECTOR(yip1_2_uid49_atan2Test_b(11 downto 11));

    -- redist7_xMSB_uid51_atan2Test_b_1(DELAY,295)
    redist7_xMSB_uid51_atan2Test_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid51_atan2Test_b, xout => redist7_xMSB_uid51_atan2Test_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- invSignOfSelectionSignal_uid37_atan2Test(LOGICAL,36)@0
    invSignOfSelectionSignal_uid37_atan2Test_q <= not (xMSB_uid32_atan2Test_b);

    -- xip1E_2NA_uid39_atan2Test(BITJOIN,38)@0
    xip1E_2NA_uid39_atan2Test_q <= xip1E_1_uid23_atan2Test_q & GND_q;

    -- xip1E_2sumAHighB_uid40_atan2Test(ADDSUB,39)@0
    xip1E_2sumAHighB_uid40_atan2Test_s <= invSignOfSelectionSignal_uid37_atan2Test_q;
    xip1E_2sumAHighB_uid40_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & xip1E_2NA_uid39_atan2Test_q));
    xip1E_2sumAHighB_uid40_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 11 => yip1E_1_uid24_atan2Test_q(10)) & yip1E_1_uid24_atan2Test_q));
    xip1E_2sumAHighB_uid40_atan2Test_combproc: PROCESS (xip1E_2sumAHighB_uid40_atan2Test_a, xip1E_2sumAHighB_uid40_atan2Test_b, xip1E_2sumAHighB_uid40_atan2Test_s)
    BEGIN
        IF (xip1E_2sumAHighB_uid40_atan2Test_s = "1") THEN
            xip1E_2sumAHighB_uid40_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_2sumAHighB_uid40_atan2Test_a) + SIGNED(xip1E_2sumAHighB_uid40_atan2Test_b));
        ELSE
            xip1E_2sumAHighB_uid40_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_2sumAHighB_uid40_atan2Test_a) - SIGNED(xip1E_2sumAHighB_uid40_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_2sumAHighB_uid40_atan2Test_q <= xip1E_2sumAHighB_uid40_atan2Test_o(13 downto 0);

    -- xip1_2_uid48_atan2Test(BITSELECT,47)@0
    xip1_2_uid48_atan2Test_in <= xip1E_2sumAHighB_uid40_atan2Test_q(11 downto 0);
    xip1_2_uid48_atan2Test_b <= xip1_2_uid48_atan2Test_in(11 downto 0);

    -- xip1E_3CostZeroPaddingA_uid57_atan2Test(CONSTANT,56)
    xip1E_3CostZeroPaddingA_uid57_atan2Test_q <= "00";

    -- yip1E_3NA_uid61_atan2Test(BITJOIN,60)@0
    yip1E_3NA_uid61_atan2Test_q <= yip1_2_uid49_atan2Test_b & xip1E_3CostZeroPaddingA_uid57_atan2Test_q;

    -- yip1E_3sumAHighB_uid62_atan2Test(ADDSUB,61)@0
    yip1E_3sumAHighB_uid62_atan2Test_s <= xMSB_uid51_atan2Test_b;
    yip1E_3sumAHighB_uid62_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 14 => yip1E_3NA_uid61_atan2Test_q(13)) & yip1E_3NA_uid61_atan2Test_q));
    yip1E_3sumAHighB_uid62_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & xip1_2_uid48_atan2Test_b));
    yip1E_3sumAHighB_uid62_atan2Test_combproc: PROCESS (yip1E_3sumAHighB_uid62_atan2Test_a, yip1E_3sumAHighB_uid62_atan2Test_b, yip1E_3sumAHighB_uid62_atan2Test_s)
    BEGIN
        IF (yip1E_3sumAHighB_uid62_atan2Test_s = "1") THEN
            yip1E_3sumAHighB_uid62_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_3sumAHighB_uid62_atan2Test_a) + SIGNED(yip1E_3sumAHighB_uid62_atan2Test_b));
        ELSE
            yip1E_3sumAHighB_uid62_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_3sumAHighB_uid62_atan2Test_a) - SIGNED(yip1E_3sumAHighB_uid62_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_3sumAHighB_uid62_atan2Test_q <= yip1E_3sumAHighB_uid62_atan2Test_o(14 downto 0);

    -- yip1_3_uid68_atan2Test(BITSELECT,67)@0
    yip1_3_uid68_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_3sumAHighB_uid62_atan2Test_q(12 downto 0));
    yip1_3_uid68_atan2Test_b <= STD_LOGIC_VECTOR(yip1_3_uid68_atan2Test_in(12 downto 0));

    -- xMSB_uid70_atan2Test(BITSELECT,69)@0
    xMSB_uid70_atan2Test_b <= STD_LOGIC_VECTOR(yip1_3_uid68_atan2Test_b(12 downto 12));

    -- redist6_xMSB_uid70_atan2Test_b_1(DELAY,294)
    redist6_xMSB_uid70_atan2Test_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid70_atan2Test_b, xout => redist6_xMSB_uid70_atan2Test_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- invSignOfSelectionSignal_uid56_atan2Test(LOGICAL,55)@0
    invSignOfSelectionSignal_uid56_atan2Test_q <= not (xMSB_uid51_atan2Test_b);

    -- xip1E_3NA_uid58_atan2Test(BITJOIN,57)@0
    xip1E_3NA_uid58_atan2Test_q <= xip1_2_uid48_atan2Test_b & xip1E_3CostZeroPaddingA_uid57_atan2Test_q;

    -- xip1E_3sumAHighB_uid59_atan2Test(ADDSUB,58)@0
    xip1E_3sumAHighB_uid59_atan2Test_s <= invSignOfSelectionSignal_uid56_atan2Test_q;
    xip1E_3sumAHighB_uid59_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & xip1E_3NA_uid58_atan2Test_q));
    xip1E_3sumAHighB_uid59_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 12 => yip1_2_uid49_atan2Test_b(11)) & yip1_2_uid49_atan2Test_b));
    xip1E_3sumAHighB_uid59_atan2Test_combproc: PROCESS (xip1E_3sumAHighB_uid59_atan2Test_a, xip1E_3sumAHighB_uid59_atan2Test_b, xip1E_3sumAHighB_uid59_atan2Test_s)
    BEGIN
        IF (xip1E_3sumAHighB_uid59_atan2Test_s = "1") THEN
            xip1E_3sumAHighB_uid59_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_3sumAHighB_uid59_atan2Test_a) + SIGNED(xip1E_3sumAHighB_uid59_atan2Test_b));
        ELSE
            xip1E_3sumAHighB_uid59_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_3sumAHighB_uid59_atan2Test_a) - SIGNED(xip1E_3sumAHighB_uid59_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_3sumAHighB_uid59_atan2Test_q <= xip1E_3sumAHighB_uid59_atan2Test_o(15 downto 0);

    -- xip1_3_uid67_atan2Test(BITSELECT,66)@0
    xip1_3_uid67_atan2Test_in <= xip1E_3sumAHighB_uid59_atan2Test_q(13 downto 0);
    xip1_3_uid67_atan2Test_b <= xip1_3_uid67_atan2Test_in(13 downto 0);

    -- xip1E_4CostZeroPaddingA_uid76_atan2Test(CONSTANT,75)
    xip1E_4CostZeroPaddingA_uid76_atan2Test_q <= "000";

    -- yip1E_4NA_uid80_atan2Test(BITJOIN,79)@0
    yip1E_4NA_uid80_atan2Test_q <= yip1_3_uid68_atan2Test_b & xip1E_4CostZeroPaddingA_uid76_atan2Test_q;

    -- yip1E_4sumAHighB_uid81_atan2Test(ADDSUB,80)@0
    yip1E_4sumAHighB_uid81_atan2Test_s <= xMSB_uid70_atan2Test_b;
    yip1E_4sumAHighB_uid81_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 16 => yip1E_4NA_uid80_atan2Test_q(15)) & yip1E_4NA_uid80_atan2Test_q));
    yip1E_4sumAHighB_uid81_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & xip1_3_uid67_atan2Test_b));
    yip1E_4sumAHighB_uid81_atan2Test_combproc: PROCESS (yip1E_4sumAHighB_uid81_atan2Test_a, yip1E_4sumAHighB_uid81_atan2Test_b, yip1E_4sumAHighB_uid81_atan2Test_s)
    BEGIN
        IF (yip1E_4sumAHighB_uid81_atan2Test_s = "1") THEN
            yip1E_4sumAHighB_uid81_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_4sumAHighB_uid81_atan2Test_a) + SIGNED(yip1E_4sumAHighB_uid81_atan2Test_b));
        ELSE
            yip1E_4sumAHighB_uid81_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_4sumAHighB_uid81_atan2Test_a) - SIGNED(yip1E_4sumAHighB_uid81_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_4sumAHighB_uid81_atan2Test_q <= yip1E_4sumAHighB_uid81_atan2Test_o(16 downto 0);

    -- yip1_4_uid87_atan2Test(BITSELECT,86)@0
    yip1_4_uid87_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_4sumAHighB_uid81_atan2Test_q(14 downto 0));
    yip1_4_uid87_atan2Test_b <= STD_LOGIC_VECTOR(yip1_4_uid87_atan2Test_in(14 downto 0));

    -- xMSB_uid89_atan2Test(BITSELECT,88)@0
    xMSB_uid89_atan2Test_b <= STD_LOGIC_VECTOR(yip1_4_uid87_atan2Test_b(14 downto 14));

    -- redist5_xMSB_uid89_atan2Test_b_1(DELAY,293)
    redist5_xMSB_uid89_atan2Test_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid89_atan2Test_b, xout => redist5_xMSB_uid89_atan2Test_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- invSignOfSelectionSignal_uid75_atan2Test(LOGICAL,74)@0
    invSignOfSelectionSignal_uid75_atan2Test_q <= not (xMSB_uid70_atan2Test_b);

    -- xip1E_4NA_uid77_atan2Test(BITJOIN,76)@0
    xip1E_4NA_uid77_atan2Test_q <= xip1_3_uid67_atan2Test_b & xip1E_4CostZeroPaddingA_uid76_atan2Test_q;

    -- xip1E_4sumAHighB_uid78_atan2Test(ADDSUB,77)@0
    xip1E_4sumAHighB_uid78_atan2Test_s <= invSignOfSelectionSignal_uid75_atan2Test_q;
    xip1E_4sumAHighB_uid78_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & xip1E_4NA_uid77_atan2Test_q));
    xip1E_4sumAHighB_uid78_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 13 => yip1_3_uid68_atan2Test_b(12)) & yip1_3_uid68_atan2Test_b));
    xip1E_4sumAHighB_uid78_atan2Test_combproc: PROCESS (xip1E_4sumAHighB_uid78_atan2Test_a, xip1E_4sumAHighB_uid78_atan2Test_b, xip1E_4sumAHighB_uid78_atan2Test_s)
    BEGIN
        IF (xip1E_4sumAHighB_uid78_atan2Test_s = "1") THEN
            xip1E_4sumAHighB_uid78_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_4sumAHighB_uid78_atan2Test_a) + SIGNED(xip1E_4sumAHighB_uid78_atan2Test_b));
        ELSE
            xip1E_4sumAHighB_uid78_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_4sumAHighB_uid78_atan2Test_a) - SIGNED(xip1E_4sumAHighB_uid78_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_4sumAHighB_uid78_atan2Test_q <= xip1E_4sumAHighB_uid78_atan2Test_o(18 downto 0);

    -- xip1_4_uid86_atan2Test(BITSELECT,85)@0
    xip1_4_uid86_atan2Test_in <= xip1E_4sumAHighB_uid78_atan2Test_q(16 downto 0);
    xip1_4_uid86_atan2Test_b <= xip1_4_uid86_atan2Test_in(16 downto 0);

    -- xip1E_5CostZeroPaddingA_uid95_atan2Test(CONSTANT,94)
    xip1E_5CostZeroPaddingA_uid95_atan2Test_q <= "0000";

    -- yip1E_5NA_uid99_atan2Test(BITJOIN,98)@0
    yip1E_5NA_uid99_atan2Test_q <= yip1_4_uid87_atan2Test_b & xip1E_5CostZeroPaddingA_uid95_atan2Test_q;

    -- yip1E_5sumAHighB_uid100_atan2Test(ADDSUB,99)@0
    yip1E_5sumAHighB_uid100_atan2Test_s <= xMSB_uid89_atan2Test_b;
    yip1E_5sumAHighB_uid100_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 19 => yip1E_5NA_uid99_atan2Test_q(18)) & yip1E_5NA_uid99_atan2Test_q));
    yip1E_5sumAHighB_uid100_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & xip1_4_uid86_atan2Test_b));
    yip1E_5sumAHighB_uid100_atan2Test_combproc: PROCESS (yip1E_5sumAHighB_uid100_atan2Test_a, yip1E_5sumAHighB_uid100_atan2Test_b, yip1E_5sumAHighB_uid100_atan2Test_s)
    BEGIN
        IF (yip1E_5sumAHighB_uid100_atan2Test_s = "1") THEN
            yip1E_5sumAHighB_uid100_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_5sumAHighB_uid100_atan2Test_a) + SIGNED(yip1E_5sumAHighB_uid100_atan2Test_b));
        ELSE
            yip1E_5sumAHighB_uid100_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_5sumAHighB_uid100_atan2Test_a) - SIGNED(yip1E_5sumAHighB_uid100_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_5sumAHighB_uid100_atan2Test_q <= yip1E_5sumAHighB_uid100_atan2Test_o(19 downto 0);

    -- yip1_5_uid106_atan2Test(BITSELECT,105)@0
    yip1_5_uid106_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_5sumAHighB_uid100_atan2Test_q(17 downto 0));
    yip1_5_uid106_atan2Test_b <= STD_LOGIC_VECTOR(yip1_5_uid106_atan2Test_in(17 downto 0));

    -- xMSB_uid108_atan2Test(BITSELECT,107)@0
    xMSB_uid108_atan2Test_b <= STD_LOGIC_VECTOR(yip1_5_uid106_atan2Test_b(17 downto 17));

    -- redist4_xMSB_uid108_atan2Test_b_1(DELAY,292)
    redist4_xMSB_uid108_atan2Test_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid108_atan2Test_b, xout => redist4_xMSB_uid108_atan2Test_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- invSignOfSelectionSignal_uid94_atan2Test(LOGICAL,93)@0
    invSignOfSelectionSignal_uid94_atan2Test_q <= not (xMSB_uid89_atan2Test_b);

    -- xip1E_5NA_uid96_atan2Test(BITJOIN,95)@0
    xip1E_5NA_uid96_atan2Test_q <= xip1_4_uid86_atan2Test_b & xip1E_5CostZeroPaddingA_uid95_atan2Test_q;

    -- xip1E_5sumAHighB_uid97_atan2Test(ADDSUB,96)@0
    xip1E_5sumAHighB_uid97_atan2Test_s <= invSignOfSelectionSignal_uid94_atan2Test_q;
    xip1E_5sumAHighB_uid97_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & xip1E_5NA_uid96_atan2Test_q));
    xip1E_5sumAHighB_uid97_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 15 => yip1_4_uid87_atan2Test_b(14)) & yip1_4_uid87_atan2Test_b));
    xip1E_5sumAHighB_uid97_atan2Test_combproc: PROCESS (xip1E_5sumAHighB_uid97_atan2Test_a, xip1E_5sumAHighB_uid97_atan2Test_b, xip1E_5sumAHighB_uid97_atan2Test_s)
    BEGIN
        IF (xip1E_5sumAHighB_uid97_atan2Test_s = "1") THEN
            xip1E_5sumAHighB_uid97_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_5sumAHighB_uid97_atan2Test_a) + SIGNED(xip1E_5sumAHighB_uid97_atan2Test_b));
        ELSE
            xip1E_5sumAHighB_uid97_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_5sumAHighB_uid97_atan2Test_a) - SIGNED(xip1E_5sumAHighB_uid97_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_5sumAHighB_uid97_atan2Test_q <= xip1E_5sumAHighB_uid97_atan2Test_o(22 downto 0);

    -- xip1_5_uid105_atan2Test(BITSELECT,104)@0
    xip1_5_uid105_atan2Test_in <= xip1E_5sumAHighB_uid97_atan2Test_q(20 downto 0);
    xip1_5_uid105_atan2Test_b <= xip1_5_uid105_atan2Test_in(20 downto 0);

    -- twoToMiSiXip_uid112_atan2Test(BITSELECT,111)@0
    twoToMiSiXip_uid112_atan2Test_b <= xip1_5_uid105_atan2Test_b(20 downto 1);

    -- yip1E_6NA_uid120_atan2Test(BITJOIN,119)@0
    yip1E_6NA_uid120_atan2Test_q <= yip1_5_uid106_atan2Test_b & xip1E_5CostZeroPaddingA_uid95_atan2Test_q;

    -- yip1E_6sumAHighB_uid121_atan2Test(ADDSUB,120)@0
    yip1E_6sumAHighB_uid121_atan2Test_s <= xMSB_uid108_atan2Test_b;
    yip1E_6sumAHighB_uid121_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 22 => yip1E_6NA_uid120_atan2Test_q(21)) & yip1E_6NA_uid120_atan2Test_q));
    yip1E_6sumAHighB_uid121_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & twoToMiSiXip_uid112_atan2Test_b));
    yip1E_6sumAHighB_uid121_atan2Test_combproc: PROCESS (yip1E_6sumAHighB_uid121_atan2Test_a, yip1E_6sumAHighB_uid121_atan2Test_b, yip1E_6sumAHighB_uid121_atan2Test_s)
    BEGIN
        IF (yip1E_6sumAHighB_uid121_atan2Test_s = "1") THEN
            yip1E_6sumAHighB_uid121_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_6sumAHighB_uid121_atan2Test_a) + SIGNED(yip1E_6sumAHighB_uid121_atan2Test_b));
        ELSE
            yip1E_6sumAHighB_uid121_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_6sumAHighB_uid121_atan2Test_a) - SIGNED(yip1E_6sumAHighB_uid121_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_6sumAHighB_uid121_atan2Test_q <= yip1E_6sumAHighB_uid121_atan2Test_o(22 downto 0);

    -- yip1_6_uid127_atan2Test(BITSELECT,126)@0
    yip1_6_uid127_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_6sumAHighB_uid121_atan2Test_q(20 downto 0));
    yip1_6_uid127_atan2Test_b <= STD_LOGIC_VECTOR(yip1_6_uid127_atan2Test_in(20 downto 0));

    -- xMSB_uid129_atan2Test(BITSELECT,128)@0
    xMSB_uid129_atan2Test_b <= STD_LOGIC_VECTOR(yip1_6_uid127_atan2Test_b(20 downto 20));

    -- redist3_xMSB_uid129_atan2Test_b_1(DELAY,291)
    redist3_xMSB_uid129_atan2Test_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid129_atan2Test_b, xout => redist3_xMSB_uid129_atan2Test_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- invSignOfSelectionSignal_uid115_atan2Test(LOGICAL,114)@0
    invSignOfSelectionSignal_uid115_atan2Test_q <= not (xMSB_uid108_atan2Test_b);

    -- twoToMiSiYip_uid113_atan2Test(BITSELECT,112)@0
    twoToMiSiYip_uid113_atan2Test_b <= STD_LOGIC_VECTOR(yip1_5_uid106_atan2Test_b(17 downto 1));

    -- xip1E_6NA_uid117_atan2Test(BITJOIN,116)@0
    xip1E_6NA_uid117_atan2Test_q <= xip1_5_uid105_atan2Test_b & xip1E_5CostZeroPaddingA_uid95_atan2Test_q;

    -- xip1E_6sumAHighB_uid118_atan2Test(ADDSUB,117)@0
    xip1E_6sumAHighB_uid118_atan2Test_s <= invSignOfSelectionSignal_uid115_atan2Test_q;
    xip1E_6sumAHighB_uid118_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & xip1E_6NA_uid117_atan2Test_q));
    xip1E_6sumAHighB_uid118_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 17 => twoToMiSiYip_uid113_atan2Test_b(16)) & twoToMiSiYip_uid113_atan2Test_b));
    xip1E_6sumAHighB_uid118_atan2Test_combproc: PROCESS (xip1E_6sumAHighB_uid118_atan2Test_a, xip1E_6sumAHighB_uid118_atan2Test_b, xip1E_6sumAHighB_uid118_atan2Test_s)
    BEGIN
        IF (xip1E_6sumAHighB_uid118_atan2Test_s = "1") THEN
            xip1E_6sumAHighB_uid118_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_6sumAHighB_uid118_atan2Test_a) + SIGNED(xip1E_6sumAHighB_uid118_atan2Test_b));
        ELSE
            xip1E_6sumAHighB_uid118_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_6sumAHighB_uid118_atan2Test_a) - SIGNED(xip1E_6sumAHighB_uid118_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_6sumAHighB_uid118_atan2Test_q <= xip1E_6sumAHighB_uid118_atan2Test_o(26 downto 0);

    -- xip1_6_uid126_atan2Test(BITSELECT,125)@0
    xip1_6_uid126_atan2Test_in <= xip1E_6sumAHighB_uid118_atan2Test_q(24 downto 0);
    xip1_6_uid126_atan2Test_b <= xip1_6_uid126_atan2Test_in(24 downto 0);

    -- twoToMiSiXip_uid133_atan2Test(BITSELECT,132)@0
    twoToMiSiXip_uid133_atan2Test_b <= xip1_6_uid126_atan2Test_b(24 downto 6);

    -- yip1E_7_uid138_atan2Test(ADDSUB,137)@0
    yip1E_7_uid138_atan2Test_s <= xMSB_uid129_atan2Test_b;
    yip1E_7_uid138_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 21 => yip1_6_uid127_atan2Test_b(20)) & yip1_6_uid127_atan2Test_b));
    yip1E_7_uid138_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & twoToMiSiXip_uid133_atan2Test_b));
    yip1E_7_uid138_atan2Test_combproc: PROCESS (yip1E_7_uid138_atan2Test_a, yip1E_7_uid138_atan2Test_b, yip1E_7_uid138_atan2Test_s)
    BEGIN
        IF (yip1E_7_uid138_atan2Test_s = "1") THEN
            yip1E_7_uid138_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_7_uid138_atan2Test_a) + SIGNED(yip1E_7_uid138_atan2Test_b));
        ELSE
            yip1E_7_uid138_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_7_uid138_atan2Test_a) - SIGNED(yip1E_7_uid138_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_7_uid138_atan2Test_q <= yip1E_7_uid138_atan2Test_o(21 downto 0);

    -- yip1_7_uid144_atan2Test(BITSELECT,143)@0
    yip1_7_uid144_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_7_uid138_atan2Test_q(19 downto 0));
    yip1_7_uid144_atan2Test_b <= STD_LOGIC_VECTOR(yip1_7_uid144_atan2Test_in(19 downto 0));

    -- xMSB_uid146_atan2Test(BITSELECT,145)@0
    xMSB_uid146_atan2Test_b <= STD_LOGIC_VECTOR(yip1_7_uid144_atan2Test_b(19 downto 19));

    -- redist2_xMSB_uid146_atan2Test_b_1(DELAY,290)
    redist2_xMSB_uid146_atan2Test_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid146_atan2Test_b, xout => redist2_xMSB_uid146_atan2Test_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- invSignOfSelectionSignal_uid136_atan2Test(LOGICAL,135)@0
    invSignOfSelectionSignal_uid136_atan2Test_q <= not (xMSB_uid129_atan2Test_b);

    -- twoToMiSiYip_uid134_atan2Test(BITSELECT,133)@0
    twoToMiSiYip_uid134_atan2Test_b <= STD_LOGIC_VECTOR(yip1_6_uid127_atan2Test_b(20 downto 6));

    -- xip1E_7_uid137_atan2Test(ADDSUB,136)@0
    xip1E_7_uid137_atan2Test_s <= invSignOfSelectionSignal_uid136_atan2Test_q;
    xip1E_7_uid137_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & xip1_6_uid126_atan2Test_b));
    xip1E_7_uid137_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 15 => twoToMiSiYip_uid134_atan2Test_b(14)) & twoToMiSiYip_uid134_atan2Test_b));
    xip1E_7_uid137_atan2Test_combproc: PROCESS (xip1E_7_uid137_atan2Test_a, xip1E_7_uid137_atan2Test_b, xip1E_7_uid137_atan2Test_s)
    BEGIN
        IF (xip1E_7_uid137_atan2Test_s = "1") THEN
            xip1E_7_uid137_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_7_uid137_atan2Test_a) + SIGNED(xip1E_7_uid137_atan2Test_b));
        ELSE
            xip1E_7_uid137_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_7_uid137_atan2Test_a) - SIGNED(xip1E_7_uid137_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_7_uid137_atan2Test_q <= xip1E_7_uid137_atan2Test_o(26 downto 0);

    -- xip1_7_uid143_atan2Test(BITSELECT,142)@0
    xip1_7_uid143_atan2Test_in <= xip1E_7_uid137_atan2Test_q(24 downto 0);
    xip1_7_uid143_atan2Test_b <= xip1_7_uid143_atan2Test_in(24 downto 0);

    -- twoToMiSiXip_uid150_atan2Test(BITSELECT,149)@0
    twoToMiSiXip_uid150_atan2Test_b <= xip1_7_uid143_atan2Test_b(24 downto 7);

    -- yip1E_8_uid155_atan2Test(ADDSUB,154)@0
    yip1E_8_uid155_atan2Test_s <= xMSB_uid146_atan2Test_b;
    yip1E_8_uid155_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 20 => yip1_7_uid144_atan2Test_b(19)) & yip1_7_uid144_atan2Test_b));
    yip1E_8_uid155_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & twoToMiSiXip_uid150_atan2Test_b));
    yip1E_8_uid155_atan2Test_combproc: PROCESS (yip1E_8_uid155_atan2Test_a, yip1E_8_uid155_atan2Test_b, yip1E_8_uid155_atan2Test_s)
    BEGIN
        IF (yip1E_8_uid155_atan2Test_s = "1") THEN
            yip1E_8_uid155_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_8_uid155_atan2Test_a) + SIGNED(yip1E_8_uid155_atan2Test_b));
        ELSE
            yip1E_8_uid155_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_8_uid155_atan2Test_a) - SIGNED(yip1E_8_uid155_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_8_uid155_atan2Test_q <= yip1E_8_uid155_atan2Test_o(20 downto 0);

    -- yip1_8_uid161_atan2Test(BITSELECT,160)@0
    yip1_8_uid161_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_8_uid155_atan2Test_q(18 downto 0));
    yip1_8_uid161_atan2Test_b <= STD_LOGIC_VECTOR(yip1_8_uid161_atan2Test_in(18 downto 0));

    -- redist0_yip1_8_uid161_atan2Test_b_1(DELAY,288)
    redist0_yip1_8_uid161_atan2Test_b_1 : dspba_delay
    GENERIC MAP ( width => 19, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yip1_8_uid161_atan2Test_b, xout => redist0_yip1_8_uid161_atan2Test_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- xMSB_uid163_atan2Test(BITSELECT,162)@1
    xMSB_uid163_atan2Test_b <= STD_LOGIC_VECTOR(redist0_yip1_8_uid161_atan2Test_b_1_q(18 downto 18));

    -- invSignOfSelectionSignal_uid153_atan2Test(LOGICAL,152)@0
    invSignOfSelectionSignal_uid153_atan2Test_q <= not (xMSB_uid146_atan2Test_b);

    -- twoToMiSiYip_uid151_atan2Test(BITSELECT,150)@0
    twoToMiSiYip_uid151_atan2Test_b <= STD_LOGIC_VECTOR(yip1_7_uid144_atan2Test_b(19 downto 7));

    -- xip1E_8_uid154_atan2Test(ADDSUB,153)@0
    xip1E_8_uid154_atan2Test_s <= invSignOfSelectionSignal_uid153_atan2Test_q;
    xip1E_8_uid154_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & xip1_7_uid143_atan2Test_b));
    xip1E_8_uid154_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 13 => twoToMiSiYip_uid151_atan2Test_b(12)) & twoToMiSiYip_uid151_atan2Test_b));
    xip1E_8_uid154_atan2Test_combproc: PROCESS (xip1E_8_uid154_atan2Test_a, xip1E_8_uid154_atan2Test_b, xip1E_8_uid154_atan2Test_s)
    BEGIN
        IF (xip1E_8_uid154_atan2Test_s = "1") THEN
            xip1E_8_uid154_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_8_uid154_atan2Test_a) + SIGNED(xip1E_8_uid154_atan2Test_b));
        ELSE
            xip1E_8_uid154_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_8_uid154_atan2Test_a) - SIGNED(xip1E_8_uid154_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_8_uid154_atan2Test_q <= xip1E_8_uid154_atan2Test_o(26 downto 0);

    -- xip1_8_uid160_atan2Test(BITSELECT,159)@0
    xip1_8_uid160_atan2Test_in <= xip1E_8_uid154_atan2Test_q(24 downto 0);
    xip1_8_uid160_atan2Test_b <= xip1_8_uid160_atan2Test_in(24 downto 0);

    -- redist1_xip1_8_uid160_atan2Test_b_1(DELAY,289)
    redist1_xip1_8_uid160_atan2Test_b_1 : dspba_delay
    GENERIC MAP ( width => 25, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xip1_8_uid160_atan2Test_b, xout => redist1_xip1_8_uid160_atan2Test_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- twoToMiSiXip_uid167_atan2Test(BITSELECT,166)@1
    twoToMiSiXip_uid167_atan2Test_b <= redist1_xip1_8_uid160_atan2Test_b_1_q(24 downto 8);

    -- yip1E_9_uid172_atan2Test(ADDSUB,171)@1
    yip1E_9_uid172_atan2Test_s <= xMSB_uid163_atan2Test_b;
    yip1E_9_uid172_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 19 => redist0_yip1_8_uid161_atan2Test_b_1_q(18)) & redist0_yip1_8_uid161_atan2Test_b_1_q));
    yip1E_9_uid172_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & twoToMiSiXip_uid167_atan2Test_b));
    yip1E_9_uid172_atan2Test_combproc: PROCESS (yip1E_9_uid172_atan2Test_a, yip1E_9_uid172_atan2Test_b, yip1E_9_uid172_atan2Test_s)
    BEGIN
        IF (yip1E_9_uid172_atan2Test_s = "1") THEN
            yip1E_9_uid172_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_9_uid172_atan2Test_a) + SIGNED(yip1E_9_uid172_atan2Test_b));
        ELSE
            yip1E_9_uid172_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_9_uid172_atan2Test_a) - SIGNED(yip1E_9_uid172_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_9_uid172_atan2Test_q <= yip1E_9_uid172_atan2Test_o(19 downto 0);

    -- yip1_9_uid178_atan2Test(BITSELECT,177)@1
    yip1_9_uid178_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_9_uid172_atan2Test_q(17 downto 0));
    yip1_9_uid178_atan2Test_b <= STD_LOGIC_VECTOR(yip1_9_uid178_atan2Test_in(17 downto 0));

    -- xMSB_uid180_atan2Test(BITSELECT,179)@1
    xMSB_uid180_atan2Test_b <= STD_LOGIC_VECTOR(yip1_9_uid178_atan2Test_b(17 downto 17));

    -- invSignOfSelectionSignal_uid170_atan2Test(LOGICAL,169)@1
    invSignOfSelectionSignal_uid170_atan2Test_q <= not (xMSB_uid163_atan2Test_b);

    -- twoToMiSiYip_uid168_atan2Test(BITSELECT,167)@1
    twoToMiSiYip_uid168_atan2Test_b <= STD_LOGIC_VECTOR(redist0_yip1_8_uid161_atan2Test_b_1_q(18 downto 8));

    -- xip1E_9_uid171_atan2Test(ADDSUB,170)@1
    xip1E_9_uid171_atan2Test_s <= invSignOfSelectionSignal_uid170_atan2Test_q;
    xip1E_9_uid171_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & redist1_xip1_8_uid160_atan2Test_b_1_q));
    xip1E_9_uid171_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 11 => twoToMiSiYip_uid168_atan2Test_b(10)) & twoToMiSiYip_uid168_atan2Test_b));
    xip1E_9_uid171_atan2Test_combproc: PROCESS (xip1E_9_uid171_atan2Test_a, xip1E_9_uid171_atan2Test_b, xip1E_9_uid171_atan2Test_s)
    BEGIN
        IF (xip1E_9_uid171_atan2Test_s = "1") THEN
            xip1E_9_uid171_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_9_uid171_atan2Test_a) + SIGNED(xip1E_9_uid171_atan2Test_b));
        ELSE
            xip1E_9_uid171_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_9_uid171_atan2Test_a) - SIGNED(xip1E_9_uid171_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_9_uid171_atan2Test_q <= xip1E_9_uid171_atan2Test_o(26 downto 0);

    -- xip1_9_uid177_atan2Test(BITSELECT,176)@1
    xip1_9_uid177_atan2Test_in <= xip1E_9_uid171_atan2Test_q(24 downto 0);
    xip1_9_uid177_atan2Test_b <= xip1_9_uid177_atan2Test_in(24 downto 0);

    -- twoToMiSiXip_uid184_atan2Test(BITSELECT,183)@1
    twoToMiSiXip_uid184_atan2Test_b <= xip1_9_uid177_atan2Test_b(24 downto 9);

    -- yip1E_10_uid189_atan2Test(ADDSUB,188)@1
    yip1E_10_uid189_atan2Test_s <= xMSB_uid180_atan2Test_b;
    yip1E_10_uid189_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 18 => yip1_9_uid178_atan2Test_b(17)) & yip1_9_uid178_atan2Test_b));
    yip1E_10_uid189_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & twoToMiSiXip_uid184_atan2Test_b));
    yip1E_10_uid189_atan2Test_combproc: PROCESS (yip1E_10_uid189_atan2Test_a, yip1E_10_uid189_atan2Test_b, yip1E_10_uid189_atan2Test_s)
    BEGIN
        IF (yip1E_10_uid189_atan2Test_s = "1") THEN
            yip1E_10_uid189_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_10_uid189_atan2Test_a) + SIGNED(yip1E_10_uid189_atan2Test_b));
        ELSE
            yip1E_10_uid189_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_10_uid189_atan2Test_a) - SIGNED(yip1E_10_uid189_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_10_uid189_atan2Test_q <= yip1E_10_uid189_atan2Test_o(18 downto 0);

    -- yip1_10_uid195_atan2Test(BITSELECT,194)@1
    yip1_10_uid195_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_10_uid189_atan2Test_q(16 downto 0));
    yip1_10_uid195_atan2Test_b <= STD_LOGIC_VECTOR(yip1_10_uid195_atan2Test_in(16 downto 0));

    -- xMSB_uid197_atan2Test(BITSELECT,196)@1
    xMSB_uid197_atan2Test_b <= STD_LOGIC_VECTOR(yip1_10_uid195_atan2Test_b(16 downto 16));

    -- invSignOfSelectionSignal_uid187_atan2Test(LOGICAL,186)@1
    invSignOfSelectionSignal_uid187_atan2Test_q <= not (xMSB_uid180_atan2Test_b);

    -- twoToMiSiYip_uid185_atan2Test(BITSELECT,184)@1
    twoToMiSiYip_uid185_atan2Test_b <= STD_LOGIC_VECTOR(yip1_9_uid178_atan2Test_b(17 downto 9));

    -- xip1E_10_uid188_atan2Test(ADDSUB,187)@1
    xip1E_10_uid188_atan2Test_s <= invSignOfSelectionSignal_uid187_atan2Test_q;
    xip1E_10_uid188_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & xip1_9_uid177_atan2Test_b));
    xip1E_10_uid188_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 9 => twoToMiSiYip_uid185_atan2Test_b(8)) & twoToMiSiYip_uid185_atan2Test_b));
    xip1E_10_uid188_atan2Test_combproc: PROCESS (xip1E_10_uid188_atan2Test_a, xip1E_10_uid188_atan2Test_b, xip1E_10_uid188_atan2Test_s)
    BEGIN
        IF (xip1E_10_uid188_atan2Test_s = "1") THEN
            xip1E_10_uid188_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_10_uid188_atan2Test_a) + SIGNED(xip1E_10_uid188_atan2Test_b));
        ELSE
            xip1E_10_uid188_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_10_uid188_atan2Test_a) - SIGNED(xip1E_10_uid188_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_10_uid188_atan2Test_q <= xip1E_10_uid188_atan2Test_o(26 downto 0);

    -- xip1_10_uid194_atan2Test(BITSELECT,193)@1
    xip1_10_uid194_atan2Test_in <= xip1E_10_uid188_atan2Test_q(24 downto 0);
    xip1_10_uid194_atan2Test_b <= xip1_10_uid194_atan2Test_in(24 downto 0);

    -- twoToMiSiXip_uid201_atan2Test(BITSELECT,200)@1
    twoToMiSiXip_uid201_atan2Test_b <= xip1_10_uid194_atan2Test_b(24 downto 10);

    -- yip1E_11_uid206_atan2Test(ADDSUB,205)@1
    yip1E_11_uid206_atan2Test_s <= xMSB_uid197_atan2Test_b;
    yip1E_11_uid206_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => yip1_10_uid195_atan2Test_b(16)) & yip1_10_uid195_atan2Test_b));
    yip1E_11_uid206_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & twoToMiSiXip_uid201_atan2Test_b));
    yip1E_11_uid206_atan2Test_combproc: PROCESS (yip1E_11_uid206_atan2Test_a, yip1E_11_uid206_atan2Test_b, yip1E_11_uid206_atan2Test_s)
    BEGIN
        IF (yip1E_11_uid206_atan2Test_s = "1") THEN
            yip1E_11_uid206_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_11_uid206_atan2Test_a) + SIGNED(yip1E_11_uid206_atan2Test_b));
        ELSE
            yip1E_11_uid206_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_11_uid206_atan2Test_a) - SIGNED(yip1E_11_uid206_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_11_uid206_atan2Test_q <= yip1E_11_uid206_atan2Test_o(17 downto 0);

    -- yip1_11_uid212_atan2Test(BITSELECT,211)@1
    yip1_11_uid212_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_11_uid206_atan2Test_q(15 downto 0));
    yip1_11_uid212_atan2Test_b <= STD_LOGIC_VECTOR(yip1_11_uid212_atan2Test_in(15 downto 0));

    -- xMSB_uid214_atan2Test(BITSELECT,213)@1
    xMSB_uid214_atan2Test_b <= STD_LOGIC_VECTOR(yip1_11_uid212_atan2Test_b(15 downto 15));

    -- invSignOfSelectionSignal_uid204_atan2Test(LOGICAL,203)@1
    invSignOfSelectionSignal_uid204_atan2Test_q <= not (xMSB_uid197_atan2Test_b);

    -- twoToMiSiYip_uid202_atan2Test(BITSELECT,201)@1
    twoToMiSiYip_uid202_atan2Test_b <= STD_LOGIC_VECTOR(yip1_10_uid195_atan2Test_b(16 downto 10));

    -- xip1E_11_uid205_atan2Test(ADDSUB,204)@1
    xip1E_11_uid205_atan2Test_s <= invSignOfSelectionSignal_uid204_atan2Test_q;
    xip1E_11_uid205_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & xip1_10_uid194_atan2Test_b));
    xip1E_11_uid205_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 7 => twoToMiSiYip_uid202_atan2Test_b(6)) & twoToMiSiYip_uid202_atan2Test_b));
    xip1E_11_uid205_atan2Test_combproc: PROCESS (xip1E_11_uid205_atan2Test_a, xip1E_11_uid205_atan2Test_b, xip1E_11_uid205_atan2Test_s)
    BEGIN
        IF (xip1E_11_uid205_atan2Test_s = "1") THEN
            xip1E_11_uid205_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_11_uid205_atan2Test_a) + SIGNED(xip1E_11_uid205_atan2Test_b));
        ELSE
            xip1E_11_uid205_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(xip1E_11_uid205_atan2Test_a) - SIGNED(xip1E_11_uid205_atan2Test_b));
        END IF;
    END PROCESS;
    xip1E_11_uid205_atan2Test_q <= xip1E_11_uid205_atan2Test_o(26 downto 0);

    -- xip1_11_uid211_atan2Test(BITSELECT,210)@1
    xip1_11_uid211_atan2Test_in <= xip1E_11_uid205_atan2Test_q(24 downto 0);
    xip1_11_uid211_atan2Test_b <= xip1_11_uid211_atan2Test_in(24 downto 0);

    -- twoToMiSiXip_uid218_atan2Test(BITSELECT,217)@1
    twoToMiSiXip_uid218_atan2Test_b <= xip1_11_uid211_atan2Test_b(24 downto 11);

    -- yip1E_12_uid223_atan2Test(ADDSUB,222)@1
    yip1E_12_uid223_atan2Test_s <= xMSB_uid214_atan2Test_b;
    yip1E_12_uid223_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 16 => yip1_11_uid212_atan2Test_b(15)) & yip1_11_uid212_atan2Test_b));
    yip1E_12_uid223_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & twoToMiSiXip_uid218_atan2Test_b));
    yip1E_12_uid223_atan2Test_combproc: PROCESS (yip1E_12_uid223_atan2Test_a, yip1E_12_uid223_atan2Test_b, yip1E_12_uid223_atan2Test_s)
    BEGIN
        IF (yip1E_12_uid223_atan2Test_s = "1") THEN
            yip1E_12_uid223_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_12_uid223_atan2Test_a) + SIGNED(yip1E_12_uid223_atan2Test_b));
        ELSE
            yip1E_12_uid223_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(yip1E_12_uid223_atan2Test_a) - SIGNED(yip1E_12_uid223_atan2Test_b));
        END IF;
    END PROCESS;
    yip1E_12_uid223_atan2Test_q <= yip1E_12_uid223_atan2Test_o(16 downto 0);

    -- yip1_12_uid229_atan2Test(BITSELECT,228)@1
    yip1_12_uid229_atan2Test_in <= STD_LOGIC_VECTOR(yip1E_12_uid223_atan2Test_q(14 downto 0));
    yip1_12_uid229_atan2Test_b <= STD_LOGIC_VECTOR(yip1_12_uid229_atan2Test_in(14 downto 0));

    -- xMSB_uid231_atan2Test(BITSELECT,230)@1
    xMSB_uid231_atan2Test_b <= STD_LOGIC_VECTOR(yip1_12_uid229_atan2Test_b(14 downto 14));

    -- concSignVector_uid248_atan2Test(BITJOIN,247)@1
    concSignVector_uid248_atan2Test_q <= GND_q & redist8_xMSB_uid32_atan2Test_b_1_q & redist7_xMSB_uid51_atan2Test_b_1_q & redist6_xMSB_uid70_atan2Test_b_1_q & redist5_xMSB_uid89_atan2Test_b_1_q & redist4_xMSB_uid108_atan2Test_b_1_q & redist3_xMSB_uid129_atan2Test_b_1_q & redist2_xMSB_uid146_atan2Test_b_1_q & xMSB_uid163_atan2Test_b & xMSB_uid180_atan2Test_b & xMSB_uid197_atan2Test_b & xMSB_uid214_atan2Test_b & xMSB_uid231_atan2Test_b;

    -- is0_uid249_atan2Test_merged_bit_select(BITSELECT,287)@1
    is0_uid249_atan2Test_merged_bit_select_b <= concSignVector_uid248_atan2Test_q(12 downto 9);
    is0_uid249_atan2Test_merged_bit_select_c <= concSignVector_uid248_atan2Test_q(8 downto 5);
    is0_uid249_atan2Test_merged_bit_select_d <= concSignVector_uid248_atan2Test_q(4 downto 1);
    is0_uid249_atan2Test_merged_bit_select_e <= concSignVector_uid248_atan2Test_q(0 downto 0);

    -- table_l12_uid262_atan2Test(LOOKUP,261)@1
    table_l12_uid262_atan2Test_combproc: PROCESS (is0_uid249_atan2Test_merged_bit_select_e)
    BEGIN
        -- Begin reserved scope level
        CASE (is0_uid249_atan2Test_merged_bit_select_e) IS
            WHEN "0" => table_l12_uid262_atan2Test_q <= "010000";
            WHEN "1" => table_l12_uid262_atan2Test_q <= "110000";
            WHEN OTHERS => -- unreachable
                           table_l12_uid262_atan2Test_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- table_l11_uid258_atan2Test(LOOKUP,257)@1
    table_l11_uid258_atan2Test_combproc: PROCESS (is0_uid249_atan2Test_merged_bit_select_d)
    BEGIN
        -- Begin reserved scope level
        CASE (is0_uid249_atan2Test_merged_bit_select_d) IS
            WHEN "0000" => table_l11_uid258_atan2Test_q <= "0111100000";
            WHEN "0001" => table_l11_uid258_atan2Test_q <= "0110100000";
            WHEN "0010" => table_l11_uid258_atan2Test_q <= "0101100000";
            WHEN "0011" => table_l11_uid258_atan2Test_q <= "0100100000";
            WHEN "0100" => table_l11_uid258_atan2Test_q <= "0011100000";
            WHEN "0101" => table_l11_uid258_atan2Test_q <= "0010100000";
            WHEN "0110" => table_l11_uid258_atan2Test_q <= "0001100000";
            WHEN "0111" => table_l11_uid258_atan2Test_q <= "0000100000";
            WHEN "1000" => table_l11_uid258_atan2Test_q <= "1111100000";
            WHEN "1001" => table_l11_uid258_atan2Test_q <= "1110100000";
            WHEN "1010" => table_l11_uid258_atan2Test_q <= "1101100000";
            WHEN "1011" => table_l11_uid258_atan2Test_q <= "1100100000";
            WHEN "1100" => table_l11_uid258_atan2Test_q <= "1011100000";
            WHEN "1101" => table_l11_uid258_atan2Test_q <= "1010100000";
            WHEN "1110" => table_l11_uid258_atan2Test_q <= "1001100000";
            WHEN "1111" => table_l11_uid258_atan2Test_q <= "1000100000";
            WHEN OTHERS => -- unreachable
                           table_l11_uid258_atan2Test_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- lev1_a1_uid266_atan2Test(ADD,265)@1
    lev1_a1_uid266_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 10 => table_l11_uid258_atan2Test_q(9)) & table_l11_uid258_atan2Test_q));
    lev1_a1_uid266_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 6 => table_l12_uid262_atan2Test_q(5)) & table_l12_uid262_atan2Test_q));
    lev1_a1_uid266_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(lev1_a1_uid266_atan2Test_a) + SIGNED(lev1_a1_uid266_atan2Test_b));
    lev1_a1_uid266_atan2Test_q <= lev1_a1_uid266_atan2Test_o(10 downto 0);

    -- table_l7_uid254_atan2Test(LOOKUP,253)@1
    table_l7_uid254_atan2Test_combproc: PROCESS (is0_uid249_atan2Test_merged_bit_select_c)
    BEGIN
        -- Begin reserved scope level
        CASE (is0_uid249_atan2Test_merged_bit_select_c) IS
            WHEN "0000" => table_l7_uid254_atan2Test_q <= "01110111111010";
            WHEN "0001" => table_l7_uid254_atan2Test_q <= "01100111111010";
            WHEN "0010" => table_l7_uid254_atan2Test_q <= "01010111111010";
            WHEN "0011" => table_l7_uid254_atan2Test_q <= "01000111111010";
            WHEN "0100" => table_l7_uid254_atan2Test_q <= "00110111111011";
            WHEN "0101" => table_l7_uid254_atan2Test_q <= "00100111111011";
            WHEN "0110" => table_l7_uid254_atan2Test_q <= "00010111111011";
            WHEN "0111" => table_l7_uid254_atan2Test_q <= "00000111111011";
            WHEN "1000" => table_l7_uid254_atan2Test_q <= "11111000000101";
            WHEN "1001" => table_l7_uid254_atan2Test_q <= "11101000000101";
            WHEN "1010" => table_l7_uid254_atan2Test_q <= "11011000000101";
            WHEN "1011" => table_l7_uid254_atan2Test_q <= "11001000000101";
            WHEN "1100" => table_l7_uid254_atan2Test_q <= "10111000000110";
            WHEN "1101" => table_l7_uid254_atan2Test_q <= "10101000000110";
            WHEN "1110" => table_l7_uid254_atan2Test_q <= "10011000000110";
            WHEN "1111" => table_l7_uid254_atan2Test_q <= "10001000000110";
            WHEN OTHERS => -- unreachable
                           table_l7_uid254_atan2Test_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- table_l3_uid250_atan2Test(LOOKUP,249)@1
    table_l3_uid250_atan2Test_combproc: PROCESS (is0_uid249_atan2Test_merged_bit_select_b)
    BEGIN
        -- Begin reserved scope level
        CASE (is0_uid249_atan2Test_merged_bit_select_b) IS
            WHEN "0000" => table_l3_uid250_atan2Test_q <= "011001111001101110";
            WHEN "0001" => table_l3_uid250_atan2Test_q <= "010101111011000011";
            WHEN "0010" => table_l3_uid250_atan2Test_q <= "010010000100000000";
            WHEN "0011" => table_l3_uid250_atan2Test_q <= "001110000101010101";
            WHEN "0100" => table_l3_uid250_atan2Test_q <= "001011000100001011";
            WHEN "0101" => table_l3_uid250_atan2Test_q <= "000111000101011111";
            WHEN "0110" => table_l3_uid250_atan2Test_q <= "000011001110011101";
            WHEN "0111" => table_l3_uid250_atan2Test_q <= "111111001111110010";
            WHEN "1000" => table_l3_uid250_atan2Test_q <= "000000110001001110";
            WHEN "1001" => table_l3_uid250_atan2Test_q <= "111100110010100011";
            WHEN "1010" => table_l3_uid250_atan2Test_q <= "111000111011100001";
            WHEN "1011" => table_l3_uid250_atan2Test_q <= "110100111100110101";
            WHEN "1100" => table_l3_uid250_atan2Test_q <= "110001111011101011";
            WHEN "1101" => table_l3_uid250_atan2Test_q <= "101101111101000000";
            WHEN "1110" => table_l3_uid250_atan2Test_q <= "101010000101111101";
            WHEN "1111" => table_l3_uid250_atan2Test_q <= "100110000111010010";
            WHEN OTHERS => -- unreachable
                           table_l3_uid250_atan2Test_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- lev1_a0_uid265_atan2Test(ADD,264)@1
    lev1_a0_uid265_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => table_l3_uid250_atan2Test_q(17)) & table_l3_uid250_atan2Test_q));
    lev1_a0_uid265_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 14 => table_l7_uid254_atan2Test_q(13)) & table_l7_uid254_atan2Test_q));
    lev1_a0_uid265_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(lev1_a0_uid265_atan2Test_a) + SIGNED(lev1_a0_uid265_atan2Test_b));
    lev1_a0_uid265_atan2Test_q <= lev1_a0_uid265_atan2Test_o(18 downto 0);

    -- lev2_a0_uid267_atan2Test(ADD,266)@1
    lev2_a0_uid267_atan2Test_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => lev1_a0_uid265_atan2Test_q(18)) & lev1_a0_uid265_atan2Test_q));
    lev2_a0_uid267_atan2Test_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 11 => lev1_a1_uid266_atan2Test_q(10)) & lev1_a1_uid266_atan2Test_q));
    lev2_a0_uid267_atan2Test_o <= STD_LOGIC_VECTOR(SIGNED(lev2_a0_uid267_atan2Test_a) + SIGNED(lev2_a0_uid267_atan2Test_b));
    lev2_a0_uid267_atan2Test_q <= lev2_a0_uid267_atan2Test_o(19 downto 0);

    -- atanRes_uid268_atan2Test(BITSELECT,267)@1
    atanRes_uid268_atan2Test_in <= lev2_a0_uid267_atan2Test_q(17 downto 0);
    atanRes_uid268_atan2Test_b <= atanRes_uid268_atan2Test_in(17 downto 4);

    -- xNotZero_uid17_atan2Test(LOGICAL,16)@0 + 1
    xNotZero_uid17_atan2Test_qi <= "1" WHEN x /= "0000000000" ELSE "0";
    xNotZero_uid17_atan2Test_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xNotZero_uid17_atan2Test_qi, xout => xNotZero_uid17_atan2Test_q, ena => en(0), clk => clk, aclr => areset );

    -- xZero_uid18_atan2Test(LOGICAL,17)@1
    xZero_uid18_atan2Test_q <= not (xNotZero_uid17_atan2Test_q);

    -- yNotZero_uid15_atan2Test(LOGICAL,14)@0 + 1
    yNotZero_uid15_atan2Test_qi <= "1" WHEN y /= "0000000000" ELSE "0";
    yNotZero_uid15_atan2Test_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yNotZero_uid15_atan2Test_qi, xout => yNotZero_uid15_atan2Test_q, ena => en(0), clk => clk, aclr => areset );

    -- yZero_uid16_atan2Test(LOGICAL,15)@1
    yZero_uid16_atan2Test_q <= not (yNotZero_uid15_atan2Test_q);

    -- concXZeroYZero_uid275_atan2Test(BITJOIN,274)@1
    concXZeroYZero_uid275_atan2Test_q <= xZero_uid18_atan2Test_q & yZero_uid16_atan2Test_q;

    -- atanResPostExc_uid276_atan2Test(MUX,275)@1
    atanResPostExc_uid276_atan2Test_s <= concXZeroYZero_uid275_atan2Test_q;
    atanResPostExc_uid276_atan2Test_combproc: PROCESS (atanResPostExc_uid276_atan2Test_s, en, atanRes_uid268_atan2Test_b, cstZeroOutFormat_uid269_atan2Test_q, constPio2P2u_mergedSignalTM_uid273_atan2Test_q)
    BEGIN
        CASE (atanResPostExc_uid276_atan2Test_s) IS
            WHEN "00" => atanResPostExc_uid276_atan2Test_q <= atanRes_uid268_atan2Test_b;
            WHEN "01" => atanResPostExc_uid276_atan2Test_q <= cstZeroOutFormat_uid269_atan2Test_q;
            WHEN "10" => atanResPostExc_uid276_atan2Test_q <= constPio2P2u_mergedSignalTM_uid273_atan2Test_q;
            WHEN "11" => atanResPostExc_uid276_atan2Test_q <= cstZeroOutFormat_uid269_atan2Test_q;
            WHEN OTHERS => atanResPostExc_uid276_atan2Test_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- constantZeroOutFormat_uid280_atan2Test(CONSTANT,279)
    constantZeroOutFormat_uid280_atan2Test_q <= "00000000000000";

    -- redist10_signX_uid7_atan2Test_b_1(DELAY,298)
    redist10_signX_uid7_atan2Test_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => signX_uid7_atan2Test_b, xout => redist10_signX_uid7_atan2Test_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- redist9_signY_uid8_atan2Test_b_1(DELAY,297)
    redist9_signY_uid8_atan2Test_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => signY_uid8_atan2Test_b, xout => redist9_signY_uid8_atan2Test_b_1_q, ena => en(0), clk => clk, aclr => areset );

    -- concSigns_uid277_atan2Test(BITJOIN,276)@1
    concSigns_uid277_atan2Test_q <= redist10_signX_uid7_atan2Test_b_1_q & redist9_signY_uid8_atan2Test_b_1_q;

    -- secondOperand_uid284_atan2Test(MUX,283)@1
    secondOperand_uid284_atan2Test_s <= concSigns_uid277_atan2Test_q;
    secondOperand_uid284_atan2Test_combproc: PROCESS (secondOperand_uid284_atan2Test_s, en, constantZeroOutFormat_uid280_atan2Test_q, atanResPostExc_uid276_atan2Test_q, constPi_uid279_atan2Test_q)
    BEGIN
        CASE (secondOperand_uid284_atan2Test_s) IS
            WHEN "00" => secondOperand_uid284_atan2Test_q <= constantZeroOutFormat_uid280_atan2Test_q;
            WHEN "01" => secondOperand_uid284_atan2Test_q <= atanResPostExc_uid276_atan2Test_q;
            WHEN "10" => secondOperand_uid284_atan2Test_q <= atanResPostExc_uid276_atan2Test_q;
            WHEN "11" => secondOperand_uid284_atan2Test_q <= constPi_uid279_atan2Test_q;
            WHEN OTHERS => secondOperand_uid284_atan2Test_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- constPiP2u_uid278_atan2Test(CONSTANT,277)
    constPiP2u_uid278_atan2Test_q <= "11001001000111";

    -- constantZeroOutFormatP2u_uid281_atan2Test(CONSTANT,280)
    constantZeroOutFormatP2u_uid281_atan2Test_q <= "00000000000100";

    -- firstOperand_uid283_atan2Test(MUX,282)@1
    firstOperand_uid283_atan2Test_s <= concSigns_uid277_atan2Test_q;
    firstOperand_uid283_atan2Test_combproc: PROCESS (firstOperand_uid283_atan2Test_s, en, atanResPostExc_uid276_atan2Test_q, constantZeroOutFormatP2u_uid281_atan2Test_q, constPiP2u_uid278_atan2Test_q)
    BEGIN
        CASE (firstOperand_uid283_atan2Test_s) IS
            WHEN "00" => firstOperand_uid283_atan2Test_q <= atanResPostExc_uid276_atan2Test_q;
            WHEN "01" => firstOperand_uid283_atan2Test_q <= constantZeroOutFormatP2u_uid281_atan2Test_q;
            WHEN "10" => firstOperand_uid283_atan2Test_q <= constPiP2u_uid278_atan2Test_q;
            WHEN "11" => firstOperand_uid283_atan2Test_q <= atanResPostExc_uid276_atan2Test_q;
            WHEN OTHERS => firstOperand_uid283_atan2Test_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- outResExtended_uid285_atan2Test(SUB,284)@1
    outResExtended_uid285_atan2Test_a <= STD_LOGIC_VECTOR("0" & firstOperand_uid283_atan2Test_q);
    outResExtended_uid285_atan2Test_b <= STD_LOGIC_VECTOR("0" & secondOperand_uid284_atan2Test_q);
    outResExtended_uid285_atan2Test_o <= STD_LOGIC_VECTOR(UNSIGNED(outResExtended_uid285_atan2Test_a) - UNSIGNED(outResExtended_uid285_atan2Test_b));
    outResExtended_uid285_atan2Test_q <= outResExtended_uid285_atan2Test_o(14 downto 0);

    -- atanResPostRR_uid286_atan2Test(BITSELECT,285)@1
    atanResPostRR_uid286_atan2Test_b <= STD_LOGIC_VECTOR(outResExtended_uid285_atan2Test_q(14 downto 2));

    -- xOut(GPOUT,4)@1
    q <= atanResPostRR_uid286_atan2Test_b;

END normal;
