--
-- VHDL Architecture ece411.PLUS2.untitled
--
-- Created:
--          by - styve1.ews (linux-a1.ews.illinois.edu)
--          at - 12:29:15 03/14/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY PLUS2 IS
   PORT( 
      PCin    : IN     LC3b_word;
      PCplus2 : OUT    LC3b_word
   );

-- Declarations

END PLUS2 ;

--
ARCHITECTURE untitled OF PLUS2 IS
BEGIN
	VHDL_ADD_2 : PROCESS (PCin)
	BEGIN  -- PROCESS
		PCPLUS2 <= STD_LOGIC_VECTOR(UNSIGNED(PCin) + 2 ) AFTER DELAY_ADDER;
	END PROCESS; 
END ARCHITECTURE untitled;

