--
-- VHDL Architecture ece411.STD_ONE1.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-26.ews.illinois.edu)
--          at - 23:32:42 02/20/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY STD_ONE1 IS
   PORT( 
      B : OUT    std_logic
   );

-- Declarations

END STD_ONE1 ;

--
ARCHITECTURE untitled OF STD_ONE1 IS
BEGIN
  B <= '1';
END ARCHITECTURE untitled;

