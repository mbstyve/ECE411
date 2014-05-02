--
-- VHDL Architecture ece411.RESPDelay.untitled
--
-- Created:
--          by - styve1.ews (gelib-057-08.ews.illinois.edu)
--          at - 10:50:17 05/01/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY RESPDelay IS
   PORT( 
      D_MRESP_H : IN     std_logic;
      SEL       : OUT    STD_LOGIC
   );

-- Declarations

END RESPDelay ;

--
ARCHITECTURE untitled OF RESPDelay IS
BEGIN
  SEL <= D_MRESP_H AFTER 5ns;
END ARCHITECTURE untitled;

