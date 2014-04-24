--
-- VHDL Architecture ece411.NAND2.untitled
--
-- Created:
--          by - draguna1.ews (gelib-057-04.ews.illinois.edu)
--          at - 21:12:27 04/23/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
LIBRARY ECE411;
USE ECE411.LC3B_TYPES.ALL;

ENTITY NAND2 IS
   PORT( 
      A : IN     STD_LOGIC;
      B : IN     STD_LOGIC;
      F : OUT    STD_LOGIC
   );

-- Declarations

END NAND2 ;

-- HDS INTERFACE_END
ARCHITECTURE UNTITLED OF NAND2 IS
BEGIN
	NAND2: PROCESS(A,B)
	BEGIN
		F <= A NAND B AFTER DELAY_LOGIC;
	END PROCESS NAND2;
END UNTITLED;
