--
-- VHDL Architecture ece411.IR.untitled
--
-- Created:
--          by - styve1.ews (linux-a1.ews.illinois.edu)
--          at - 13:55:26 03/14/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY IR IS
   PORT( 
      RESET_L  : IN     std_logic;
      clk      : IN     std_logic;
      Load_IR  : IN     std_logic;
      MDRout   : IN     LC3b_word;
      OPCODE   : OUT    LC3b_opcode;
      SRCA     : OUT    LC3b_reg;
      SRCB     : OUT    LC3b_reg;
      DEST     : OUT    LC3b_reg;
      OFFSET11 : OUT    LC3b_offset11;
      OFFSET9  : OUT    LC3b_offset9;
      INDEX6   : OUT    LC3b_index6;
      IMM5     : OUT    LC3b_imm5;
      IMM4     : OUT    LC3b_imm4;
      IMM5Sel   : OUT   std_logic;
      SHFTOP   : OUT    LC3b_SHFTOP;
      JSR11    : OUT    std_logic;
      TrapOff   : OUT   LC3b_trapvect8
   );

-- Declarations

END IR ;

--
ARCHITECTURE untitled OF IR IS
SIGNAL VAL_IR : LC3B_WORD;
BEGIN
  VAL_IR <= MDROUT;
	OPCODE <= VAL_IR(15 DOWNTO 12);
	SRCA <= VAL_IR(8 DOWNTO 6);
	SRCB <= VAL_IR(2 DOWNTO 0);
	DEST <= VAL_IR(11 DOWNTO 9);
	OFFSET11 <= VAL_IR (10 DOWNTO 0);
	OFFSET9 <= VAL_IR(8 DOWNTO 0);
	INDEX6 <= VAL_IR(5 DOWNTO 0);
	IMM5 <= VAL_IR(4 DOWNTO 0);
	IMM4 <= VAL_IR(3 DOWNTO 0);
	IMM5Sel <= VAL_IR (5);
	SHFTOP <= VAL_IR(5 DOWNTO 4); 
	JSR11 <= VAL_IR(11); 
	TrapOff <= VAL_IR(7 DOWNTO 0);
END ARCHITECTURE untitled;

