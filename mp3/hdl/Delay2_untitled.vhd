--
-- VHDL Architecture ece411.Delay2.untitled
--
-- Created:
--          by - styve1.ews (gelib-057-03.ews.illinois.edu)
--          at - 14:36:46 04/30/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Delay2 IS
   PORT( 
      F24    : IN     LC3B_WORD;
      D_ADDR : OUT    LC3b_word
   );

-- Declarations

END Delay2 ;

--
ARCHITECTURE untitled OF Delay2 IS
BEGIN
  D_ADDR <= F24 AFTER 2ns;
END ARCHITECTURE untitled;

