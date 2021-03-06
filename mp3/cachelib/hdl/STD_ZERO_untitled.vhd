--
-- VHDL Architecture cachelib.STD_ZERO.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-26.ews.illinois.edu)
--          at - 23:31:04 02/20/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY cachelib;
USE cachelib.LC3b_types.all;

ENTITY STD_ZERO IS
   PORT( 
      A : OUT    std_logic
   );

-- Declarations

END STD_ZERO ;

--
ARCHITECTURE untitled OF STD_ZERO IS
BEGIN
  A <= '0';
END ARCHITECTURE untitled;

