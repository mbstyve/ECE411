--
-- VHDL Architecture ece411.SIGGEN111.untitled
--
-- Created:
--          by - styve1.ews (gelib-057-14.ews.illinois.edu)
--          at - 23:10:20 04/15/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY SIGGEN111 IS
   PORT( 
      B : OUT    LC3b_reg
   );

-- Declarations

END SIGGEN111 ;

--
ARCHITECTURE untitled OF SIGGEN111 IS
BEGIN
  B <= "111";
END ARCHITECTURE untitled;

