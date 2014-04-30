--
-- VHDL Architecture ece411.clkdelayed.untitled
--
-- Created:
--          by - freed2.ews (evrt-252-18.ews.illinois.edu)
--          at - 20:25:26 04/29/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY clkdelayed IS
   PORT( 
      clk        : IN     std_logic;
      clkdelayedout : OUT    std_logic
   );

-- Declarations

END clkdelayed ;

--
ARCHITECTURE untitled OF clkdelayed IS
BEGIN
  clkdelayedout <= clk'delayed(33 ns);
END ARCHITECTURE untitled;

