--
-- VHDL Architecture ece411.NZP.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-28.ews.illinois.edu)
--          at - 14:15:25 03/17/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY NZP IS
-- Declarations
  PORT(
    GENCCOUT  : IN    LC3B_CC;
    CLK       : IN    std_logic;
    LoadNZP   : IN    std_logic;
    RESET_L   : IN    std_logic;
    N         : OUT   std_logic;
    Z         : OUT   std_logic;
    P         : OUT   std_logic

  );

END NZP ;

--
ARCHITECTURE UNTITLED OF NZP IS
SIGNAL PRE_NZP : STD_LOGIC_VECTOR (2 DOWNTO 0);
BEGIN
	------------------------------
	VHDL_NZP : PROCESS (CLK, GENCCOUT, RESET_L)
	------------------------------
	BEGIN
	  IF(RESET_L = '0') THEN
	    PRE_NZP <= "010";
		ELSIF (CLK'EVENT AND (CLK = '1') AND (CLK'LAST_VALUE = '0')) THEN
			IF (LOADNZP = '1') THEN
				PRE_NZP <= GENCCOUT;
			END IF;
		END IF;
	END PROCESS VHDL_NZP;
	N <= PRE_NZP(2) AFTER DELAY_REG;
	Z <= PRE_NZP(1) AFTER DELAY_REG;
	P <= PRE_NZP(0) AFTER DELAY_REG;
END UNTITLED;

