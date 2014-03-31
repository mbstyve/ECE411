--
-- VHDL Architecture cachelib.InputSplitter.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-08.ews.illinois.edu)
--          at - 22:29:57 02/27/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY cachelib;
USE cachelib.LC3b_types.all;

ENTITY InputSplitter IS
   PORT( 
      StoreData : IN     LC3B_WORD;
      StoreDataH : OUT   LC3B_BYTE;
      StoreDataL : OUT   LC3B_BYTE;
      StoreDataFull : OUT LC3B_WORD
   );

-- Declarations

END InputSplitter ;

--
ARCHITECTURE untitled OF InputSplitter IS
BEGIN
  StoreDataH <= StoreData(15 downto 8);
  StoreDataL <= StoreData(7 downto 0);
  StoreDataFull <= StoreData;
  
END ARCHITECTURE untitled;

