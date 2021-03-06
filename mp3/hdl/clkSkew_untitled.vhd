--
-- VHDL Architecture ece411.clkSkew.untitled
--
-- Created:
--          by - styve1.ews (gelib-057-03.ews.illinois.edu)
--          at - 12:14:34 05/02/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY clkSkew IS
   PORT( 
      Clk        : IN     std_logic;
      clkskewOut : OUT    std_logic
   );

-- Declarations

END clkSkew ;

--
ARCHITECTURE untitled OF clkSkew IS
BEGIN
clkskewOut <= clk'delayed(CLOCK_PERIOD - DELAY_REG - DELAY_Mux2 -1ns);
END ARCHITECTURE untitled;

