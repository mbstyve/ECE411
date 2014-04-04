--
-- VHDL Architecture ece411.longnotaf.alongnot
--
-- Created:
--          by - freed2.ews (gelib-057-15.ews.illinois.edu)
--          at - 02:11:04 04/04/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY longnotaf IS
   PORT( 
      din          : IN     std_logic;
      Cache_Access : OUT    std_logic
   );

-- Declarations

END longnotaf ;

--
ARCHITECTURE alongnot OF longnotaf IS
BEGIN
  Cache_Access <= NOT(din) after delay_logic;
END ARCHITECTURE alongnot;

