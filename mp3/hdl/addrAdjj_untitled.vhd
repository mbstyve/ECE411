--
-- VHDL Architecture ece411.addrAdjj.untitled
--
-- Created:
--          by - styve1.ews (gelib-057-37.ews.illinois.edu)
--          at - 17:45:25 05/01/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY addrAdjj IS
   PORT( 
      ADDRESS : IN     LC3b_word;
      A       : OUT    LC3b_word
   );

-- Declarations

END addrAdjj ;

--
ARCHITECTURE untitled OF addrAdjj IS
BEGIN
  A <= ADDRESS(15 DOWNTO 1) & '0';
END ARCHITECTURE untitled;

