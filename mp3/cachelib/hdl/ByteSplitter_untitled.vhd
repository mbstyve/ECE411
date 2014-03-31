--
-- VHDL Architecture cachelib.ByteSplitter.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-08.ews.illinois.edu)
--          at - 23:27:12 02/27/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY cachelib;
USE cachelib.LC3b_types.all;

ENTITY ByteSplitter IS
   PORT( 
      MUX8OUT : IN     LC3B_WORD;
      HighByte  : OUT   LC3B_BYTE;
      LowByte   : OUT   LC3B_BYTE
   );

-- Declarations

END ByteSplitter ;

--
ARCHITECTURE untitled OF ByteSplitter IS
BEGIN
  HighByte <= MUX8OUT(15 downto 8);
  LowByte <= MUX8OUT(7 downto 0);
END ARCHITECTURE untitled;

