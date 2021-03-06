--
-- VHDL Architecture cachelib.OR2.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-23.ews.illinois.edu)
--          at - 16:22:47 02/12/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY cachelib;
USE cachelib.LC3b_types.all;

ENTITY OR2 IS
   PORT( 
      A : IN     std_logic;
      B : IN     std_logic;
      F : OUT    std_logic
   );

-- Declarations

END OR2 ;

--
ARCHITECTURE untitled OF OR2 IS
BEGIN
  F <= A OR B AFTER delay_logic2;
END ARCHITECTURE untitled;

