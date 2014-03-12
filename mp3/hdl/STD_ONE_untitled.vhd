--
-- VHDL Architecture ece411.STD_ONE.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-26.ews.illinois.edu)
--          at - 21:27:38 02/20/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY STD_ONE IS
   PORT( 
      ONE_OUT : OUT    std_logic
   );

-- Declarations

END STD_ONE ;

--
ARCHITECTURE untitled OF STD_ONE IS
BEGIN
  ONE_OUT <= '1';
END ARCHITECTURE untitled;

