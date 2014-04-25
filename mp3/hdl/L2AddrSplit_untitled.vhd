--
-- VHDL Architecture ece411.L2AddrSplit.untitled
--
-- Created:
--          by - draguna1.ews (gelib-057-22.ews.illinois.edu)
--          at - 22:17:24 04/24/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY L2AddrSplit IS
   PORT( 
      Address : IN     LC3b_word;
      Index   : OUT    LC3b_L2_index;
      Tag     : OUT    LC3b_L2_tag
   );

-- Declarations

END L2AddrSplit ;

--
ARCHITECTURE untitled OF L2AddrSplit IS
BEGIN
  Tag <= Address(15 DOWNTO 8);
  Index <= Address(7 DOWNTO 4);
END ARCHITECTURE untitled;

