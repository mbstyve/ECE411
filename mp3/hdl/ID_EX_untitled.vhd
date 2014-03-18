--
-- VHDL Architecture ece411.ID_EX.untitled
--
-- Created:
--          by - draguna1.ews (gelib-057-03.ews.illinois.edu)
--          at - 16:59:16 03/12/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ID_EX IS
   PORT( 
      RESET_L         : IN     std_logic;
      clk             : IN     std_logic;
      Load            : IN     std_logic;
      Instr           : IN     LC3b_word;
      iPC             : IN     LC3b_word;
      Dest            : IN     LC3b_reg;
      Dest_out        : OUT    LC3b_reg;
      Src1            : IN     LC3b_reg;
      Src1_out        : OUT    LC3b_reg;
      Src2            : IN     LC3b_reg;
      Src2_out        : OUT    LC3b_reg;
      imm4            : IN     LC3b_nibble;
      imm4_out        : OUT    LC3b_nibble;
      imm5            : IN     LC3b_imm5;
      imm5_out        : OUT    LC3b_imm5;
      offset6         : IN     LC3b_index6;
      offset6_out     : OUT    LC3b_index6;
      trapvector8     : IN     LC3b_byte;
      trapvector8_out : OUT    LC3b_byte;
      bitfive         : IN     std_logic;
      bitfive_out     : OUT    std_logic;
      offset9         : IN     LC3b_OFFSET9;
      offset9_out     : OUT    LC3b_OFFSET9;
      pcoffset11      : IN     LC3B_OFFSET11;
      pcoffset11_out  : OUT    LC3B_OFFSET11;
      Instr_out       : OUT    LC3b_word;
      iPC_out         : OUT    LC3b_word
   );

-- Declarations

END ID_EX ;

--
ARCHITECTURE untitled OF ID_EX IS
BEGIN
  vhdl_REG_IF : PROCESS (clk, RESET_L, Load, Instr, iPC)
  VARIABLE tempInstr : LC3b_word;
  VARIABLE tempiPC   : LC3b_word;
  VARIABLE tempDest   : LC3b_reg;
  VARIABLE tempSrc1   : LC3b_reg;
  VARIABLE tempSrc2   : LC3b_reg;
  VARIABLE tempimm4   : LC3b_nibble;
  VARIABLE tempimm5   : LC3b_imm5;
  VARIABLE temptrapvector8   : LC3b_byte;
  VARIABLE tempbitfive   : LC3b_logic;
  VARIABLE tempoffset9   : LC3b_offset9;
  VARIABLE temppcoffset11   : LC3b_offset11;
  VARIABLE tempiPC   : LC3b_word;
  BEGIN
   IF (RESET_L = '0') THEN
     tempiPC := "0000000000000000";
     tempInstr := "0000000000000000";
     tempRegA := "000";
     tempRegB := "000";
     tempSrc1 := "000";
     tempSrc2 := "000";
     tempimm4 := "0000";
     tempimm5 := "00000";
     temptrapvector8 := "00000000";
     tempbitfive := '0';
     tempoffset9 := "000000000";
     tempoffset11 := "00000000000";
     
   ELSIF (clk'event AND (clk = '1') AND (clk'last_value = '0')) THEN
     IF (Load = '1') THEN
      tempiPC := iPC;
      tempInstr := Instr;
      tempDest := Dest;
      tempSrc1 := Src1;
      tempSrc2 := Src2;
      tempimm4 := imm4;
      tempimm5 := imm5;
      temptrapvector8 := trapvector8;
      tempbitfive := bitfive;
      tempoffset9 := offset9;
      tempoffset11 := offset11;
    END IF;
  END IF;
  iPC_out   <= tempiPC AFTER DELAY_REG;
  Instr_out <= tempInstr AFTER DELAY_REG;
  Dest_out <= tempDest AFTER DELAY_REG;
  Src1_out <= tempSrc1 AFTER DELAY_REG;
  Src2_out <= tempSrc2 AFTER DELAY_REG;
  imm4_out <= tempimm4 AFTER DELAY_REG;
  imm5_out <= tempimm5 AFTER DELAY_REG;
  bitfive_out <= tempbitfive AFTER DELAY_REG;
  offset9_out <= tempoffset9 AFTER DELAY_REG;
  offset11_out <= tempoffset11 AFTER DELAY_REG;
END PROCESS vhdl_REG_IF;
END ARCHITECTURE untitled;

