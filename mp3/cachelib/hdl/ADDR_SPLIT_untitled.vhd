--
-- VHDL Architecture cachelib.ADDR_SPLIT.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-22.ews.illinois.edu)
--          at - 16:00:17 02/13/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY cachelib;
USE cachelib.LC3b_types.all;

ENTITY ADDR_SPLIT IS
   PORT( 
      ADDRESS : IN     LC3b_word;
      offset  : OUT    LC3B_C_OFFSET;
      tag     : OUT    LC3B_C_TAG;
      index   : OUT    LC3B_C_INDEX
   );

-- Declarations

END ADDR_SPLIT ;

--
ARCHITECTURE untitled OF ADDR_SPLIT IS
BEGIN
  offset <= address(3 DOWNTO 1);
  index <=  address(6 DOWNTO 4);
  tag <=    address(15 DOWNTO 7);
END ARCHITECTURE untitled;

