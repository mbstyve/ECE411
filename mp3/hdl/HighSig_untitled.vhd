--
-- VHDL Architecture ece411.HighSig.untitled
--
-- Created:
--          by - styve1.ews (gelib-057-22.ews.illinois.edu)
--          at - 16:39:52 04/14/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY HighSig IS
   PORT( 
      C : OUT    STD_LOGIC
   );

-- Declarations

END HighSig ;

--
ARCHITECTURE untitled OF HighSig IS
BEGIN
    c <= '1';
END ARCHITECTURE untitled;

