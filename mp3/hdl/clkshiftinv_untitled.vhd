--
-- VHDL Architecture ece411.clkshiftinv.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-19.ews.illinois.edu)
--          at - 00:25:23 04/30/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY clkshiftinv IS
   PORT( 
      clk   : IN     STD_LOGIC;
      clksh : OUT    STD_LOGIC
   );

-- Declarations

END clkshiftinv ;

--
ARCHITECTURE untitled OF clkshiftinv IS
BEGIN
  clksh <= clk'delayed(HALF_CLOCK_PERIOD);
END ARCHITECTURE untitled;

