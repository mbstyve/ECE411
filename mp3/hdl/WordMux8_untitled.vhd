--
-- VHDL Architecture ece411.WordMux8.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-23.ews.illinois.edu)
--          at - 16:15:36 02/12/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY WordMux8 IS
   PORT( 
      A000    : IN     LC3B_WORD;
      B001    : IN     LC3B_WORD;
      C010    : IN     LC3B_WORD;
      D011    : IN     LC3B_WORD;
      E100    : IN     LC3B_WORD;
      F101    : IN     LC3B_WORD;
      G110    : IN     LC3B_WORD;
      H111    : IN     LC3B_WORD;
      SEL8    : IN     LC3B_8MUX_SEL;
      MUX8OUT : OUT    LC3B_WORD
   );

-- Declarations

END WordMux8 ;

--
ARCHITECTURE untitled OF WordMux8 IS
BEGIN
	PROCESS (A000, B001,C010,D011,E100,F101,G110,H111, SEL8)
	VARIABLE STATE : LC3B_WORD;
	BEGIN
		CASE SEL8 IS
			WHEN "000" =>
				STATE := A000;
			WHEN "001" =>
				STATE := B001;
			WHEN "010" =>
				STATE := C010;
			WHEN "011" =>
				STATE := D011;
			WHEN "100" =>
				STATE := E100;
			WHEN "101" =>
				STATE := F101;
			WHEN "110" =>
				STATE := G110;
			WHEN "111" =>
				STATE := H111;
			WHEN OTHERS =>
				STATE := (OTHERS => 'X');
		END CASE;
	MUX8OUT <= STATE AFTER DELAY_MUX8;
	END PROCESS;
END UNTITLED;

