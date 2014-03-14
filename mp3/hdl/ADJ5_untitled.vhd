--
-- VHDL Architecture ece411.ADJ7.untitled
--
-- Created:
--          by - styve1.ews (gelib-057-28.ews.illinois.edu)
--          at - 16:30:30 01/30/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADJ5 IS
   PORT( 
      clk     : IN     std_logic;
      imm5    : IN     LC3b_imm5;
      ADJ5out : OUT    LC3b_word
   );

-- Declarations

END ADJ5 ;

--
ARCHITECTURE untitled OF ADJ5 IS
BEGIN
  	ADJ5out <= imm5(4) & imm5(4) & imm5(4) & imm5(4) & imm5(4) & 
  	           imm5(4) & imm5(4) & imm5(4) & imm5(4) & imm5(4) & 
  	           imm5(4) & imm5 AFTER DELAY_MUX2;
END ARCHITECTURE untitled;
