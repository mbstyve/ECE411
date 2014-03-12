--
-- VHDL Architecture ece411.Plus2.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-14.ews.illinois.edu)
--          at - 16:50:31 01/23/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Plus2 IS
   PORT( 
      PCout  : IN     LC3b_word;
      clk    : IN     std_logic;
      PC2out : OUT    lc3b_word
   );

-- Declarations

END Plus2 ;

--
ARCHITECTURE UNTITLED OF PLUS2 IS
BEGIN
	VHDL_ADD_2 : PROCESS (PCOUT)
	BEGIN  -- PROCESS
		PC2out <= STD_LOGIC_VECTOR(UNSIGNED(PCOUT) + 2 ) AFTER DELAY_ADDER;
	END PROCESS;
END UNTITLED;

