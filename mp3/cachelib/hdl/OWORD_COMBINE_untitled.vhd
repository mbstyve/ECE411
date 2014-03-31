--
-- VHDL Architecture cachelib.OWORD_COMBINE.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-08.ews.illinois.edu)
--          at - 01:55:20 02/28/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY cachelib;
USE cachelib.LC3b_types.all;

ENTITY OWORD_COMBINE IS
   PORT( 
      F  : IN     LC3b_word;
      F1 : IN     LC3b_word;
      F2 : IN     LC3b_word;
      F3 : IN     LC3b_word;
      F4 : IN     LC3b_word;
      F5 : IN     LC3b_word;
      F6 : IN     LC3b_word;
      F7 : IN     LC3b_word;
      FINALOUT : OUT LC3B_OWORD
   );

-- Declarations

END OWORD_COMBINE ;

--
ARCHITECTURE untitled OF OWORD_COMBINE IS
BEGIN
  FINALOUT <= f7&f6&f5&f4&f3&f2&f1&f;
END ARCHITECTURE untitled;

