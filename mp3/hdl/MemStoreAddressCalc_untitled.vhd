--
-- VHDL Architecture ece411.MemStoreAddressCalc.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-08.ews.illinois.edu)
--          at - 03:21:23 02/28/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY MemStoreAddressCalc IS
   PORT( 
      Way1ADDR     : OUT    lc3b_word;
      Way0ADDR     : OUT    lc3b_word;
      index        : IN     LC3B_C_INDEX;
      Tagarray0out : IN     LC3B_C_TAG;
      Tagarray1out : IN     LC3B_C_TAG
   );

-- Declarations

END MemStoreAddressCalc ;

--
ARCHITECTURE untitled OF MemStoreAddressCalc IS
BEGIN
  Way0ADDR <= Tagarray0out&index&"0000";
  Way1ADDR <= Tagarray1out&index&"0000";
END ARCHITECTURE untitled;

