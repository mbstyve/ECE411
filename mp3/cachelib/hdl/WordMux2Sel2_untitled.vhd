--
-- VHDL Architecture cachelib.WordMux2Sel2.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-22.ews.illinois.edu)
--          at - 15:29:59 02/13/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY cachelib;
USE cachelib.LC3b_types.all;

ENTITY WordMux2Sel2 IS
   PORT( 
      A    : IN     LC3b_word;
      B    : IN     LC3b_word;
      InA  : IN     std_logic;
      out2 : OUT    LC3b_word
   );

-- Declarations

END WordMux2Sel2 ;

--
ARCHITECTURE untitled OF WordMux2Sel2 IS
BEGIN
  	PROCESS (A, B, InA)
	VARIABLE STATE : LC3B_WORD;
	BEGIN
		CASE InA IS
			WHEN '0' =>
				STATE := A;
			WHEN '1' =>
				STATE := B;
			WHEN OTHERS =>
				STATE := (OTHERS => 'X');
		END CASE;
	out2 <= STATE AFTER DELAY_MUX2;
	END PROCESS;
END ARCHITECTURE untitled;

