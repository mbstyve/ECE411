--
-- VHDL Architecture ece411.BRADDR.untitled
--
-- Created:
--          by - styve1.ews (gelib-057-14.ews.illinois.edu)
--          at - 16:13:07 03/19/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY BRADDR IS
   PORT( 
      ADJ9      : IN     lc3b_word;
      iPC       : IN     lc3b_word;
      BRAddressOut : OUT    LC3b_word
   );

-- Declarations

END BRADDR ;

--
ARCHITECTURE untitled OF BRADDR IS
BEGIN
  PROCESS (iPC, ADJ9)
  BEGIN
    BRAddressOut <= STD_LOGIC_VECTOR(UNSIGNED(iPC) + UNSIGNED(ADJ9));  
  END PROCESS;
END ARCHITECTURE untitled;

