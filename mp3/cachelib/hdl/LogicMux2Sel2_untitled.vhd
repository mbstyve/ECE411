--
-- VHDL Architecture cachelib.LogicMux2Sel2.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-26.ews.illinois.edu)
--          at - 23:26:56 02/20/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY cachelib;
USE cachelib.LC3b_types.all;

ENTITY LogicMux2Sel2 IS
   PORT( 
      A      : IN     std_logic;
      B      : IN     std_logic;
      SelA   : IN     std_logic;
      SelB   : IN     std_logic;
      BitOut : OUT    std_logic
   );

-- Declarations

END LogicMux2Sel2 ;

--
ARCHITECTURE untitled OF LogicMux2Sel2 IS
BEGIN
    	PROCESS (A, B, SelA, SelB)
	VARIABLE STATE : LC3B_WORD;
	BEGIN
		CASE SelA & SelB IS
			WHEN "10" =>
				STATE := A;
			WHEN "01" =>
				STATE := B;
			WHEN OTHERS =>
				STATE := (OTHERS => 'X');
		END CASE;
	BitOut <= STATE AFTER DELAY_MUX2;
	END PROCESS;
END ARCHITECTURE untitled;

