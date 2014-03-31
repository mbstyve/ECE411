--
-- VHDL Architecture cachelib.BusFuse.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-22.ews.illinois.edu)
--          at - 22:23:09 02/06/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY cachelib;
USE cachelib.LC3b_types.all;

ENTITY BusFuse IS
   PORT( 
      IMMD11Sel  : IN     std_logic;
      IMMD7Sel   : IN     std_logic;
      clk        : IN     std_logic;
      imm5selout : OUT    LC3b_4Mux_sel
   );

-- Declarations

END BusFuse ;

--
ARCHITECTURE untitled OF BusFuse IS
BEGIN
  imm5selout <=  IMMD11Sel & IMMD7Sel;
END ARCHITECTURE untitled;

