--
-- VHDL Architecture ece411.LDBDataRip.untitled
--
-- Created:
--          by - styve1.ews (gelib-057-14.ews.illinois.edu)
--          at - 00:40:57 04/16/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY LDBDataRip IS
   PORT( 
      D_DATAIN : IN     LC3b_word;
      A1       : OUT    LC3B_WORD;
      B1       : OUT    LC3B_WORD
   );

-- Declarations

END LDBDataRip ;

--
ARCHITECTURE untitled OF LDBDataRip IS
BEGIN
  A1 <= "00000000" & D_DATAIN(7 DOWNTO 0);
  B1 <= "00000000" & D_DATAIN(15 DOWNTO 8);
END ARCHITECTURE untitled;

