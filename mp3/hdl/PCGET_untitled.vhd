--
-- VHDL Architecture ece411.PCGET.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-24.ews.illinois.edu)
--          at - 01:12:53 04/30/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY PCGET IS
   PORT( 
      PC_IN    : IN     lc3b_word;
      BTBINDEX : OUT    LC3b_byte
   );

-- Declarations

END PCGET ;

--
ARCHITECTURE untitled OF PCGET IS
BEGIN
  BTBINDEX <= PC_IN(8 downto 1);
END ARCHITECTURE untitled;

