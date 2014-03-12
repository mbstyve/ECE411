--
-- VHDL Architecture ece411.Bit0RIP.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-24.ews.illinois.edu)
--          at - 12:36:32 02/07/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Bit0RIP IS
   PORT( 
      clk     : IN     std_logic;
      BIT0    : OUT    std_logic;
      ADDRESS : IN     LC3b_word
   );

-- Declarations

END Bit0RIP ;

--
ARCHITECTURE untitled OF Bit0RIP IS
BEGIN
  BIT0 <= ADDRESS(0);
END ARCHITECTURE untitled;

