--
-- VHDL Architecture cachelib.ADJ11.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-27.ews.illinois.edu)
--          at - 15:06:16 02/05/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY cachelib;
USE cachelib.LC3b_types.all;

ENTITY ADJ11 IS
   PORT( 
      ADJ11out : OUT    LC3b_word;
      clk      : IN     std_logic;
      offset11 : IN     LC3B_OFFSET11
   );

-- Declarations

END ADJ11 ;

--
ARCHITECTURE untitled OF ADJ11 IS
BEGIN
  	ADJ11OUT <= offset11(10) & offset11(10) & offset11(10) & offset11(10) & offset11 & '0' AFTER DELAY_MUX2;

END ARCHITECTURE untitled;

