--
-- VHDL Architecture ece411.Zeroes.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-15.ews.illinois.edu)
--          at - 23:00:41 04/03/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Zeroes IS
   PORT( 
      I_DATAOUT : OUT    LC3b_word
   );

-- Declarations

END Zeroes ;

--
ARCHITECTURE untitled OF Zeroes IS
BEGIN
  I_DATAOUT <= "0000000000000000";
END ARCHITECTURE untitled;

