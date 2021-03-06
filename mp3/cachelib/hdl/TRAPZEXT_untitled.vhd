--
-- VHDL Architecture cachelib.TRAPZEXT.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-22.ews.illinois.edu)
--          at - 20:55:16 02/06/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY cachelib;
USE cachelib.LC3b_types.all;

ENTITY TRAPZEXT IS
   PORT( 
      clk         : IN     std_logic;
      trapvect8   : IN     LC3B_TRAPVECT8;
      TRAPzextout : OUT    LC3b_word
   );

-- Declarations

END TRAPZEXT ;

--
ARCHITECTURE untitled OF TRAPZEXT IS
BEGIN
  TRAPzextout <= '0'&'0'&'0'&'0'&'0'&'0'&'0'& trapvect8 & '0';
END ARCHITECTURE untitled;

