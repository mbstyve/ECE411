--
-- VHDL Architecture ece411.delayforflush.untitled
--
-- Created:
--          by - styve1.ews (gelib-057-37.ews.illinois.edu)
--          at - 20:43:52 05/01/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY delayforflush IS
-- Declarations
  PORT(
      Clk : in std_logic;
      flushclk :out std_logic
    );

END delayforflush ;

--
ARCHITECTURE untitled OF delayforflush IS
BEGIN
  flushclk <= clk'delayed(CLOCK_PERIOD - DELAY_REG - DELAY_LOGIC2);
END ARCHITECTURE untitled;

