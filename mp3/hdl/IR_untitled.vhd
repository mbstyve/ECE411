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
      IMM4     : OUT    LC3b_imm4
   );

-- Declarations

END IR ;

--
ARCHITECTURE untitled OF IR IS
SIGNAL VAL_IR : LC3B_WORD;
BEGIN
	------------------------------
	VHDL_REG_IR : PROCESS (CLK, LOAD_IR, MDROUT)
	------------------------------
	BEGIN
		IF (CLK'EVENT AND (CLK = '1') AND (CLK'LAST_VALUE = '0')) THEN
			IF (LOAD_IR = '1') THEN
				VAL_IR <= MDROUT AFTER DELAY_REG;
			END IF;
		END IF;
	END PROCESS VHDL_REG_IR;
	OPCODE <= VAL_IR(15 DOWNTO 12);
	SRCA <= VAL_IR(8 DOWNTO 6);
	SRCB <= VAL_IR(2 DOWNTO 0);
	DEST <= VAL_IR(11 DOWNTO 9);
	OFFSET9 <= VAL_IR(8 DOWNTO 0);
	INDEX6 <= VAL_IR(5 DOWNTO 0);
END ARCHITECTURE untitled;

