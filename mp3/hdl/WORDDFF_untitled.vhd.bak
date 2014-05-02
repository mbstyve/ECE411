--
-- VHDL Architecture ece411.WORDDFF.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-11.ews.illinois.edu)
--          at - 20:53:41 04/17/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3B_TYPES.all;

ENTITY WORDDFF IS
   PORT( 
      D    : IN     LC3b_word;
      En   : IN     std_logic;
      Q    : OUT    LC3b_word;
      Qbar : OUT    LC3b_word
   );

-- Declarations

END WORDDFF ;

--
ARCHITECTURE untitled OF WORDDFF IS
BEGIN
	DFF16: PROCESS(D, En)
	VARIABLE STATE : LC3b_word;
	BEGIN
	  -- Note: the D Flip Flop has no default value and cannot be reset!
		IF(EN = '1') THEN -- HIGH ENABLE
			STATE := D;
		ELSIF(EN /= '0' AND EN /= '1') THEN
			STATE := (OTHERS => 'X');
		END IF;
		Q <= STATE AFTER 4NS;
		Qbar <= not(STATE) AFTER 4ns;
	END PROCESS DFF16;
END ARCHITECTURE untitled;
