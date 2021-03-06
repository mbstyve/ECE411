--
-- VHDL Architecture cachelib.Reg16.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-40.ews.illinois.edu)
--          at - 15:14:58 01/22/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY cachelib;
USE cachelib.LC3b_types.all;

ENTITY Reg16 IS
   PORT( 
      Input  : IN     LC3b_word;
      RESET  : IN     std_logic;
      clk    : IN     std_logic;
      load   : IN     std_logic;
      Output : OUT    LC3b_word
   );

-- Declarations

END Reg16 ;

--
ARCHITECTURE UNTITLED OF REG16 IS
SIGNAL PRE_OUT : LC3B_WORD;
BEGIN
	PROCESS (CLK, RESET, INPUT)
	BEGIN
		IF RESET = '0' THEN
			PRE_OUT <= (OTHERS => '0');
		ELSIF CLK'EVENT AND CLK = '1' THEN
			IF (LOAD = '1') THEN
				PRE_OUT <= INPUT;
			END IF;
		END IF;
	END PROCESS;
	OUTPUT <= PRE_OUT AFTER DELAY_REG;
END UNTITLED;

