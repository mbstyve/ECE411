--
-- VHDL Architecture ece411.std_one.untitled
--
-- Created:
--          by - styve1.ews (gelib-057-03.ews.illinois.edu)
--          at - 14:31:24 04/30/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY std_one IS
   PORT( 
      Out0 : OUT    std_logic
   );

-- Declarations

END std_one ;

--
ARCHITECTURE untitled OF std_one IS
BEGIN
  Out0 <= '1';
END ARCHITECTURE untitled;

