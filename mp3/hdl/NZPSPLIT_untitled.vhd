--
-- VHDL Architecture ece411.NZPSPLIT.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-28.ews.illinois.edu)
--          at - 14:20:12 03/17/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY NZPSPLIT IS
-- Declarations
  PORT(
    DEST  : IN   LC3B_REG;
    CHECKN: OUT  STD_LOGIC;
    CHECKZ: OUT  std_logic;
    CHECKP: OUT  std_logic
  );

END NZPSPLIT ;

--
ARCHITECTURE UNTITLED OF NZPSPLIT IS
BEGIN
	CHECKN <= DEST(2);
	CHECKZ <= DEST(1);
	CHECKP <= DEST(0);
END UNTITLED;

