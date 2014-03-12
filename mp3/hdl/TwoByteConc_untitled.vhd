--
-- VHDL Architecture ece411.TwoByteConc.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-08.ews.illinois.edu)
--          at - 23:51:24 02/27/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY TwoByteConc IS
   PORT( 
      ByteHIGHOUT : IN     LC3B_BYTE;
      ByteLOWOUT  : IN     LC3B_BYTE;
      WORDOUT     : OUT    LC3B_WORD
   );

-- Declarations

END TwoByteConc ;

--
ARCHITECTURE untitled OF TwoByteConc IS
BEGIN
  WORDOUT <= Bytehighout & bytelowout;
END ARCHITECTURE untitled;

