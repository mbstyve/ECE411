--
-- VHDL Architecture cachelib.ADJ6NoShift.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-22.ews.illinois.edu)
--          at - 02:20:25 02/07/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY cachelib;
USE cachelib.LC3b_types.all;

ENTITY ADJ6NoShift IS
   PORT( 
      clk            : IN     std_logic;
      index6         : IN     LC3b_index6;
      ADJ6NoShiftOut : OUT    LC3b_word
   );

-- Declarations

END ADJ6NoShift ;

--
ARCHITECTURE untitled OF ADJ6NoShift IS
BEGIN

	ADJ6NoShiftOut <= INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6 AFTER DELAY_MUX2;

END ARCHITECTURE untitled;

