--
-- VHDL Architecture ece411.IR.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-14.ews.illinois.edu)
--          at - 16:48:22 01/23/14
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
      LoadIR  : IN     std_logic;
      MDRout  : IN     LC3b_word;
      clk     : IN     std_logic;
      Opcode  : OUT    LC3B_OPCODE;
      SrcA    : OUT    LC3b_reg;
      SrcB    : OUT    LC3b_reg;
      dest    : OUT    LC3b_reg;
      index6  : OUT    LC3b_index6;
      imm5    : OUT    LC3B_IMM5;
      imm4    : OUT    LC3B_NIBBLE;
      offset9 : OUT    LC3b_offset9;
      offset11: OUT    LC3B_OFFSET11;
      BIT11   : OUT    std_logic;
      trapvect8 : OUT   LC3B_TRAPVECT8;
      SHFTOP    : OUT    LC3B_SHFTOP;
      BIT5    : OUT    std_logic
   );

-- Declarations

END IR ;

--
ARCHITECTURE UNTITLED OF IR IS
SIGNAL VAL_IR : LC3B_WORD;
BEGIN
	------------------------------
	VHDL_REG_IR : PROCESS (CLK, LOADIR, MDROUT)
	------------------------------
	BEGIN
		IF (CLK'EVENT AND (CLK = '1') AND (CLK'LAST_VALUE = '0')) THEN
			IF (LOADIR = '1') THEN
				VAL_IR <= MDROUT AFTER DELAY_REG;
			END IF;
		END IF;
	END PROCESS VHDL_REG_IR;
	OPCODE <= VAL_IR(15 DOWNTO 12);
	
	SRCA <= VAL_IR(8 DOWNTO 6);
	SRCB <= VAL_IR(2 DOWNTO 0);
	DEST <= VAL_IR(11 DOWNTO 9);
	imm5 <= VAL_IR(4 DOWNTO 0);
	imm4 <= VAL_IR(3 downto 0);
	BIT11 <= VAL_IR(11);
	SHFTOP <= VAL_IR(5) & VAL_IR(4);
	BIT5 <= VAL_IR(5);
	OFFSET11 <= VAL_IR (10 downto 0);
	trapvect8 <= VAL_IR(7 downto 0);
	OFFSET9 <= VAL_IR(8 DOWNTO 0);
	INDEX6 <= VAL_IR(5 DOWNTO 0);
END UNTITLED;

