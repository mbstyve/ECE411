--
-- VHDL Architecture ece411.invclkdelay.untitled
--
-- Created:
--          by - freed2.ews (evrt-252-18.ews.illinois.edu)
--          at - 20:22:31 04/29/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY invclkdelay IS
   PORT( 
      clk           : IN     std_logic;
      invclkdelayed : OUT    std_logic
   );

-- Declarations

END invclkdelay ;

--
ARCHITECTURE untitled OF invclkdelay IS
BEGIN
  invclkdelayed <= clk'delayed(22 ns);
END ARCHITECTURE untitled;

