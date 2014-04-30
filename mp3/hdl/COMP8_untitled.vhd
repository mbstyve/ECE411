--
-- VHDL Architecture ece411.COMP8.untitled
--
-- Created:
--          by - draguna1.ews (gelib-057-22.ews.illinois.edu)
--          at - 22:06:10 04/24/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY COMP8 IS
   PORT( 
      A : IN     LC3B_BYTE;
      B : IN     LC3B_BYTE;
      F : OUT    STD_LOGIC
   );

-- Declarations

END COMP8 ;

-- HDS INTERFACE_END
ARCHITECTURE UNTITLED OF COMP8 IS
BEGIN
	COMP8: PROCESS (A, B)
	BEGIN 
		IF (A = B) THEN
			F <= '1' AFTER DELAY_COMPARE8;
		ELSE
			F <= '0' AFTER DELAY_COMPARE8;
		END IF;
	END PROCESS COMP8;
END UNTITLED;
