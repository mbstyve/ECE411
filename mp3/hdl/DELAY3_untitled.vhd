--
-- VHDL Architecture ece411.DELAY3.untitled
--
-- Created:
--          by - styve1.ews (gelib-057-37.ews.illinois.edu)
--          at - 18:40:35 05/01/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY DELAY3 IS
   PORT( 
      writeback : IN     std_logic;
      A         : OUT    STD_LOGIC
   );

-- Declarations

END DELAY3 ;

--
ARCHITECTURE untitled OF DELAY3 IS
BEGIN
  A <= writeback AFTER 2ns;
END ARCHITECTURE untitled;

