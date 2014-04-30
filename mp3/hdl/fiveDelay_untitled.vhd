--
-- VHDL Architecture ece411.fiveDelay.untitled
--
-- Created:
--          by - styve1.ews (gelib-057-24.ews.illinois.edu)
--          at - 14:10:51 04/25/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY fiveDelay IS
   PORT( 
      F7     : IN     LC3B_WORD;
      D_ADDR : OUT    LC3b_word
   );

-- Declarations

END fiveDelay ;

--
ARCHITECTURE untitled OF fiveDelay IS
BEGIN
  D_ADDR <= F7 AFTER 1ns;
END ARCHITECTURE untitled;

