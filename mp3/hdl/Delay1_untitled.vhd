--
-- VHDL Architecture ece411.Delay1.untitled
--
-- Created:
--          by - styve1.ews (gelib-057-25.ews.illinois.edu)
--          at - 01:27:47 04/30/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Delay1 IS
-- Declarations
PORT( 
	D_ADDRrip : IN     STD_LOGIC;
	c1 : OUT    STD_LOGIC
);

END Delay1 ;

--
ARCHITECTURE untitled OF Delay1 IS
BEGIN
  c1 <= D_ADDRrip AFTER 1ns;
END ARCHITECTURE untitled;

