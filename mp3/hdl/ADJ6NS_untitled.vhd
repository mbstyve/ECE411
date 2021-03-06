--
-- VHDL Architecture ece411.ADJ6NS.untitled
--
-- Created:
--          by - styve1.ews (gelib-057-14.ews.illinois.edu)
--          at - 00:03:03 04/16/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADJ6NS IS
   PORT( 
      clk    : IN     std_logic;
      index6 : IN     LC3b_index6;
      ADJ6NSout : OUT    LC3b_word
   );

-- Declarations

END ADJ6NS ;

--
ARCHITECTURE untitled OF ADJ6NS IS
BEGIN
  ADJ6NSout <= INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & 
             INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & 
             INDEX6(5) & INDEX6(5) & INDEX6 AFTER DELAY_MUX2;
END ARCHITECTURE untitled;

