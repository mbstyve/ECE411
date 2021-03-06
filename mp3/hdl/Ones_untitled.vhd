--
-- VHDL Architecture ece411.Ones.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-15.ews.illinois.edu)
--          at - 22:57:59 04/03/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Ones IS
   PORT( 
      MWRITEH_L : OUT    std_logic;
      MWRITEL_L : OUT    std_logic
   );

-- Declarations

END Ones ;

--
ARCHITECTURE untitled OF Ones IS
BEGIN
  MWRITEH_L <= '1';
  MWRITEL_L <= '1';
END ARCHITECTURE untitled;

