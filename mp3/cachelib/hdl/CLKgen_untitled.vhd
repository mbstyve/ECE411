--
-- VHDL Architecture cachelib.CLKgen.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-40.ews.illinois.edu)
--          at - 15:21:48 01/22/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY cachelib;
USE cachelib.LC3b_types.all;

ENTITY CLKgen IS
   PORT( 
      clk : INOUT  std_logic  := '0'
   );

-- Declarations

END CLKgen ;

--
ARCHITECTURE untitled OF CLKgen IS
BEGIN
  PROCESS (clk)
  BEGIN
    clk <= NOT clk AFTER HALF_CLOCK_PERIOD;
  END PROCESS;
END ARCHITECTURE untitled;
