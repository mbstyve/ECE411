--
-- VHDL Architecture ece411.ADJ4.untitled
--
-- Created:
--          by - styve1.ews (gelib-057-23.ews.illinois.edu)
--          at - 19:33:58 02/06/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADJ4 IS
   PORT( 
      clk     : IN     std_logic;
      imm4    : IN     LC3b_nibble;
      ADJ4out : OUT    LC3b_word
   );

-- Declarations

END ADJ4 ;

--
ARCHITECTURE untitled OF ADJ4 IS
BEGIN
  ADJ4out <= imm4(3) & imm4(3) & imm4(3) & imm4(3) &
             imm4(3) & imm4(3) & imm4(3) & imm4(3) &
             imm4(3) & imm4(3) & imm4(3) & imm4(3) &
             imm4 AFTER DELAY_MUX2;
END ARCHITECTURE untitled;
