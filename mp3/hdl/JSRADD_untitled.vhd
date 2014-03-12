--
-- VHDL Architecture ece411.JSRADD.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-22.ews.illinois.edu)
--          at - 00:27:24 02/07/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY JSRADD IS
   PORT( 
      clk       : IN     std_logic;
      ADJ11out  : IN     LC3b_word;
      JSRADDout : OUT    LC3b_word;
      PCout     : IN     LC3b_word
   );

-- Declarations

END JSRADD ;

--
ARCHITECTURE untitled OF JSRADD IS
BEGIN
  PROCESS (ADJ11out, PCout)
  BEGIN
    JSRADDout <= STD_LOGIC_VECTOR(UNSIGNED(ADJ11out) + UNSIGNED(PCout)) after DELAY_ADDER;
  END PROCESS;
END ARCHITECTURE untitled;

