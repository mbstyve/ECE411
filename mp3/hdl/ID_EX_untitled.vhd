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
      Control         : IN     control_word;
      iPC             : IN     LC3b_word;
      Dest            : IN     LC3b_reg;
      Dest_out        : OUT    LC3b_reg;
      SrcA            : IN     LC3b_reg;
      SrcA_out        : OUT    LC3b_reg;
      SrcB            : IN     LC3b_reg;
      SrcB_out        : OUT    LC3b_reg;
      ADJ4            : IN     LC3b_nibble;
      ADJ4_out        : OUT    LC3b_nibble;
      ADJ5            : IN     LC3b_imm5;
      ADJ5_out        : OUT    LC3b_imm5;
      ADJ6            : IN     LC3b_index6;
      ADJ6_out        : OUT    LC3b_index6;
      trapvector8     : IN     LC3b_byte;
      trapvector8_out : OUT    LC3b_byte;
      ADJ9            : IN     LC3b_OFFSET9;
      ADJ9_out        : OUT    LC3b_OFFSET9;
      ADJ11           : IN     LC3B_OFFSET11;
      ADJ11_out       : OUT    LC3B_OFFSET11;
      Instr_out       : OUT    LC3b_word;
      iPC_out         : OUT    LC3b_word;
      RFAOut          : IN     LC3b_word;
      RFBOut          : IN     LC3b_word;
      RFAOut_Out      : OUT     LC3b_word;
      RFBOut_Out      : OUT     LC3b_word;
      Control_Out      : OUT   Control_word
      );

-- Declarations

END ID_EX ;

--
ARCHITECTURE untitled OF ID_EX IS
BEGIN
  vhdl_REG_IF : PROCESS (clk, RESET_L, Load, Instr, iPC)
  VARIABLE tempControl : control_word;
  VARIABLE tempiPC   : LC3b_word;
  VARIABLE tempDest   : LC3b_reg;
  VARIABLE tempSrc1   : LC3b_reg;
  VARIABLE tempSrc2   : LC3b_reg;
  VARIABLE tempimm4   : LC3b_nibble;
  VARIABLE tempimm5   : LC3b_imm5;
  VARIABLE temptrapvector8   : LC3b_byte;
  VARIABLE tempoffset9   : LC3b_offset9;
  VARIABLE temppcoffset11   : LC3b_offset11;
  VARIABLE tempiPC   : LC3b_word;
  VARIABLE tempRFAOut : LC3b_word;
  VARIABLE tempRFBOut : LC3b_word;
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
     tempoffset9 := "000000000";
     tempoffset11 := "00000000000";
     tempRFAOut := "0000000000000000";
     tempRFBOut := "0000000000000000";
     Control.ex.ALUMuxsel := '0';
     Control.ex.aluop := "000";
     Control.dec.StoreMuxSel := '0';
     Control.memory.LoadSETCCSEL := '0';  
     Control.memory.LoadNZP := '0';
     Control.memory.Load_dMDR := '0';
     Control.memory.Load_dMAR := '0';
     Control.memory.ISBranch := '0';   
     Control.write.RFMuxSel := '0';  
     Control.write.Reg_Write := '0'; 
     Control.memory.D_MREAD := '0';
     Control.memory.D_MWRITEH := '0';
     Control.memory.D_MWRITEL := '0';    
     
   ELSIF (clk'event AND (clk = '1') AND (clk'last_value = '0')) THEN
     IF (Load = '1') THEN
      tempiPC := iPC;
      tempInstr := Instr;
      tempDest := Dest;
      tempSrc1 := SrcA;
      tempSrc2 := SrcB;
      tempimm4 := imm4;
      tempimm5 := imm5;
      temptrapvector8 := trapvector8;
      tempoffset9 := offset9;
      tempoffset11 := offset11;
      tempRFAOut := RFAOut;
      tempRFBOut := RFBOut;
      tempControl := Control;
    END IF;
  END IF;
  iPC_out   <= tempiPC AFTER DELAY_REG;
  Instr_out <= tempInstr AFTER DELAY_REG;
  Dest_out <= tempDest AFTER DELAY_REG;
  SrcA_out <= tempSrc1 AFTER DELAY_REG;
  SrcB_out <= tempSrc2 AFTER DELAY_REG;
  ADJ4_out <= tempimm4 AFTER DELAY_REG;
  ADJ5_out <= tempimm5 AFTER DELAY_REG;
  ADJ9_out <= tempoffset9 AFTER DELAY_REG;
  ADJ11_out <= tempoffset11 AFTER DELAY_REG;
  RFAOut_Out   <= tempRFAOut AFTER DELAY_REG;
  RFBOut_Out   <= tempRFBOut AFTER DELAY_REG;
  Control_Out <= tempControl  AFTER DELAY_REG;
END PROCESS vhdl_REG_IF;
END ARCHITECTURE untitled;

