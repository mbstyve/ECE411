--
-- VHDL Architecture cachelib.AND4Bit.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-18.ews.illinois.edu)
--          at - 16:08:57 02/21/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY cachelib;
USE cachelib.LC3b_types.all;

ENTITY AND4Bit IS
   PORT( 
      A    : IN     std_logic;
      B    : IN     std_logic;
      C    : IN     std_logic;
      D    : IN     std_logic;
      Out4 : OUT    std_logic
   );

-- Declarations

END AND4Bit ;

--
ARCHITECTURE untitled OF AND4Bit IS
BEGIN
  Out4 <= A AND B AND C AND D after delay_logic4;
END ARCHITECTURE untitled;

