--
-- VHDL Architecture ece411.L2AddrRejoin.untitled
--
-- Created:
--          by - draguna1.ews (gelib-057-22.ews.illinois.edu)
--          at - 22:09:24 04/24/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY L2AddrRejoin IS
   PORT( 
      Index       : IN     LC3b_L2_Index;
      LineAddress : OUT    LC3b_Word;
      Tag         : IN     LC3b_L2_Tag
   );

-- Declarations

END L2AddrRejoin ;

--
ARCHITECTURE untitled OF L2AddrRejoin IS
BEGIN  
  LineAddress <= Tag & Index & "0000";
END ARCHITECTURE untitled;

