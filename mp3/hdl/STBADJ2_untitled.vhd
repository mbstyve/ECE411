--
-- VHDL Architecture ece411.STBADJ2.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-24.ews.illinois.edu)
--          at - 13:42:08 02/07/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY STBADJ2 IS
   PORT( 
      BusMuxOut     : IN     LC3b_word;
      clk           : IN     std_logic;
      STBADJout     : OUT    LC3b_word
   );

-- Declarations

END STBADJ2 ;

--
ARCHITECTURE untitled OF STBADJ2 IS
BEGIN
  STBADJout <= BusMuxOut(7 downto 0) & BusMuxOut(7 downto 0);
END ARCHITECTURE untitled;

