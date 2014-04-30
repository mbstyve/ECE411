--
-- VHDL Architecture ece411.ByteZext.untitled
--
-- Created:
--          by - styve1.ews (gelib-057-20.ews.illinois.edu)
--          at - 17:14:40 04/16/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ByteZext IS
   PORT( 
      WriteData : IN     LC3b_word;
      B2        : OUT    LC3B_WORD
   );

-- Declarations

END ByteZext ;

--
ARCHITECTURE untitled OF ByteZext IS
BEGIN
  B2 <= "00000000" & WriteData(7 DOWNTO 0);
END ARCHITECTURE untitled;

