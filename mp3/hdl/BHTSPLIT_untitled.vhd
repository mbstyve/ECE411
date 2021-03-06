--
-- VHDL Architecture ece411.BHTSPLIT.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-02.ews.illinois.edu)
--          at - 15:31:30 04/30/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY BHTSPLIT IS
   PORT( 
      Old_BHT   : IN     std_logic;
      BHT_TAKEN : OUT    std_logic
   );

-- Declarations

END BHTSPLIT ;

--
ARCHITECTURE untitled OF BHTSPLIT IS
BEGIN
  BHT_TAKEN <= Old_BHT(0);
END ARCHITECTURE untitled;

