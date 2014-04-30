--
-- VHDL Architecture ece411.ClockDelay22.untitled
--
-- Created:
--          by - draguna1.ews (gelib-057-08.ews.illinois.edu)
--          at - 01:32:30 04/30/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY ClockDelay22 IS
   PORT( 
      clk    : IN     std_logic;
      ClkDelay22 : OUT    std_logic
   );

-- Declarations

END ClockDelay22 ;

--
ARCHITECTURE untitled OF ClockDelay22 IS
BEGIN
  ClkDelay22 <= clk'delayed(22 ns);
END ARCHITECTURE untitled;

