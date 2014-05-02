--
-- VHDL Architecture ece411.AddrADJ.untitled
--
-- Created:
--          by - styve1.ews (gelib-057-37.ews.illinois.edu)
--          at - 17:26:08 05/01/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY AddrADJ IS
   PORT( 
      ADDRESS : IN     LC3b_word;
      ADJAddr : OUT    lc3b_word
   );

-- Declarations

END AddrADJ ;

--
ARCHITECTURE untitled OF AddrADJ IS
BEGIN
  ADJAddr <= ADDRESS(15 DOWNTO 7) & "0000000";
END ARCHITECTURE untitled;

