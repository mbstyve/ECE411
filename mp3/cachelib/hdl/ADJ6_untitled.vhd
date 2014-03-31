--
-- VHDL Architecture cachelib.ADJ6.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-14.ews.illinois.edu)
--          at - 16:57:22 01/23/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY cachelib;
USE cachelib.LC3b_types.all;

ENTITY ADJ6 IS
   PORT( 
      clk     : IN     std_logic;
      index6  : IN     LC3b_index6;
      ADJ6out : OUT    LC3b_word
   );

-- Declarations

END ADJ6 ;

--
ARCHITECTURE UNTITLED OF ADJ6 IS
BEGIN
	ADJ6OUT <= INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6 & '0' AFTER DELAY_MUX2;
END UNTITLED;
