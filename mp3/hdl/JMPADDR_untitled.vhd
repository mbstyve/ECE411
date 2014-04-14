--
-- VHDL Architecture ece411.JMPADDR.untitled
--
-- Created:
--          by - styve1.ews (gelib-057-22.ews.illinois.edu)
--          at - 16:34:25 04/14/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY JMPADDR IS
   PORT( 
      ADJ11      : IN     lc3b_word;
      iPC        : IN     lc3b_word;
      JMPAddress : OUT    lc3b_word
   );

-- Declarations

END JMPADDR ;

--
ARCHITECTURE untitled OF JMPADDR IS
BEGIN
  PROCESS (iPC, ADJ11)
  BEGIN
    BRAddress <= STD_LOGIC_VECTOR(UNSIGNED(iPC) + UNSIGNED(ADJ11));  
  END PROCESS;
END ARCHITECTURE untitled;

