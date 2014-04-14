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
      ADJ4            : IN     LC3b_word;
      ADJ4_out        : OUT    LC3b_word;
      ADJ5            : IN     LC3b_word;
      ADJ5_out        : OUT    LC3b_word;
      ADJ6            : IN     LC3b_word;
      ADJ6_out        : OUT    LC3b_word;
      trapvector8     : IN     LC3b_word;
      trapvector8_out : OUT    LC3b_word;
      ADJ9            : IN     LC3b_word;
      ADJ9_out        : OUT    LC3b_word;
      ADJ11           : IN     LC3b_word;
      ADJ11_out       : OUT    LC3b_word;
      iPC_out         : OUT    LC3b_word;
      RFAOut          : IN     LC3b_word;
      RFBOut          : IN     LC3b_word;
      RFAOut_Out      : OUT     LC3b_word;
      RFBOut_Out      : OUT     LC3b_word;
      Control_Out      : OUT   Control_word;
      IMM5Sel         : IN    std_logic;
      IMM5Sel_Out     : OUT   std_logic;
      SHFTOP          : IN     LC3b_SHFTOP;
      SHFTOP_Out      : OUT     LC3b_SHFTOP
      );

-- Declarations

END ID_EX ;

--
ARCHITECTURE untitled OF ID_EX IS
BEGIN
  vhdl_REG_IF : PROCESS (clk, RESET_L, Load, iPC)
  VARIABLE tempControl : control_word;
  VARIABLE tempiPC   : LC3b_word;
  VARIABLE tempDest   : LC3b_reg;
  VARIABLE tempSrc1   : LC3b_reg;
  VARIABLE tempSrc2   : LC3b_reg;
  VARIABLE tempimm4   : LC3b_word;
  VARIABLE tempimm5   : LC3b_word;
  VARIABLE tempADJ6 : LC3b_word;
  VARIABLE temptrapvector8   : LC3b_word;
  VARIABLE tempoffset9   : LC3b_word;
  VARIABLE temppcoffset11   : LC3b_word;
  VARIABLE tempRFAOut : LC3b_word;
  VARIABLE tempRFBOut : LC3b_word;
  VARIABLE tempIMM5Sel : std_logic;
  VARIABLE tempSHFTOP : LC3b_SHFTOP;
  BEGIN
   IF (RESET_L = '0') THEN
     tempiPC := "0000000000000000";
     tempRFAOut := "0000000000000000";
     tempRFBOut := "0000000000000000";
     tempSrc1 := "000";
     tempSrc2 := "000";
     tempimm4 := "0000000000000000";
     tempimm5 := "0000000000000000";
     tempADJ6 := "0000000000000000";
     temptrapvector8 := "0000000000000000";
     tempoffset9 := "0000000000000000";
     temppcoffset11 := "0000000000000000";
     tempIMM5Sel := '0';
     tempControl.ex.ALUMuxsel := '0';
     tempControl.ex.aluop := "000";
     tempControl.dec.StoreMuxSel := '0';
     tempControl.memory.LoadSETCCSEL := '0';  
     tempControl.memory.LoadNZP := '0';
     tempControl.memory.Load_dMDR := '0';
     tempControl.memory.Load_dMAR := '0';
     tempControl.memory.ISBranch := '0';   
     tempControl.write.RFMuxSel := '0';  
     tempControl.write.Reg_Write := '0'; 
     tempControl.memory.D_MREAD := '0';
     tempControl.memory.D_MWRITEH := '0';
     tempControl.memory.D_MWRITEL := '0';
     tempSHFTOP := "00";    
     
   ELSIF (clk'event AND (clk = '1') AND (clk'last_value = '0')) THEN
     IF (Load = '1') THEN
      tempiPC := iPC;
      tempDest := Dest;
      tempSrc1 := SrcA;
      tempSrc2 := SrcB;
      tempimm4 := ADJ4;
      tempimm5 := ADJ5;
      tempADJ6 := ADJ6;
      temptrapvector8 := trapvector8;
      tempoffset9 := ADJ9;
      temppcoffset11 := ADJ11;
      tempRFAOut := RFAOut;
      tempRFBOut := RFBOut;
      tempControl := Control;
      tempIMM5Sel := IMM5Sel;
      tempSHFTOP := SHFTOP; 
    END IF;
  END IF;
  iPC_out   <= tempiPC AFTER DELAY_REG;
  Dest_out <= tempDest AFTER DELAY_REG;
  SrcA_out <= tempSrc1 AFTER DELAY_REG;
  SrcB_out <= tempSrc2 AFTER DELAY_REG;
  ADJ4_out <= tempimm4 AFTER DELAY_REG;
  ADJ5_out <= tempimm5 AFTER DELAY_REG;
  ADJ6_out <= tempADJ6 AFTER DELAY_REG;
  ADJ9_out <= tempoffset9 AFTER DELAY_REG;
  ADJ11_out <= temppcoffset11 AFTER DELAY_REG;
  RFAOut_Out   <= tempRFAOut AFTER DELAY_REG;
  RFBOut_Out   <= tempRFBOut AFTER DELAY_REG;
  Control_Out <= tempControl  AFTER DELAY_REG;
  IMM5Sel_Out   <= tempIMM5Sel AFTER DELAY_REG;
  SHFTOP_Out   <= tempSHFTOP AFTER DELAY_REG;
END PROCESS vhdl_REG_IF;
END ARCHITECTURE untitled;

