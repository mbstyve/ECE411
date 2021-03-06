--
-- VHDL ARCHITECTURE ECE411.COMP8.UNTITLED
--
-- CREATED:
--          BY - HERSTAD.STDT (EESN25.EWS.UIUC.EDU)
--          AT - 14:31:41 03/12/03
--
-- GENERATED BY MENTOR GRAPHICS' HDL DESIGNER(TM) 2001.5 (BUILD 170)
--
-- HDS INTERFACE_START
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
LIBRARY ECE411;
USE ECE411.LC3B_TYPES.ALL;

ENTITY COMP8 IS
PORT( 
	A : IN     LC3B_BYTE;
	B : IN     LC3B_BYTE;
	F : OUT    STD_LOGIC
);
-- DECLARATIONS
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