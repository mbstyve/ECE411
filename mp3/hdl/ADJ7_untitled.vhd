--
-- VHDL Architecture ece411.ADJ7.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-29.ews.illinois.edu)
--          at - 16:29:18 01/30/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADJ7 IS
   PORT( 
      clk     : IN     std_logic;
      ADJ7out : OUT    LC3B_WORD;
      imm5    : IN     LC3B_IMM5
   );

-- Declarations

END ADJ7 ;

--
ARCHITECTURE untitled OF ADJ7 IS
BEGIN
	ADJ7OUT <= imm5(4) & imm5(4) & imm5(4) & imm5(4) & imm5(4) & imm5(4) & imm5(4) & imm5(4) & imm5(4) & imm5(4) & imm5(4) & imm5 AFTER DELAY_MUX2;
END UNTITLED;

