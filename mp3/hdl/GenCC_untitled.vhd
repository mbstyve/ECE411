--
-- VHDL Architecture ece411.GenCC.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-28.ews.illinois.edu)
--          at - 14:10:43 03/17/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY GenCC IS
-- Declarations
   PORT( 
      RFMUXOUT  : IN     LC3B_WORD;
      GENCCOUT  : OUT    LC3B_CC

   );

END GenCC ;

--
ARCHITECTURE untitled OF GenCC IS
BEGIN

	VHDL_GENCC : PROCESS (RFMUXOUT)
	BEGIN    
		IF (RFMUXOUT = "0000000000000000") THEN
			GENCCOUT <= "010" AFTER DELAY_GENCC;
		ELSIF (RFMUXOUT(15) = '1') THEN
			GENCCOUT <= "100" AFTER DELAY_GENCC;
		ELSE
			GENCCOUT <= "001" AFTER DELAY_GENCC;
		END IF;
	END PROCESS VHDL_GENCC;
END ARCHITECTURE untitled;

