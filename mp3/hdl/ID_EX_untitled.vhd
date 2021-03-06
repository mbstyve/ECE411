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
      SHFTOP_Out      : OUT     LC3b_SHFTOP;
      JSR11           : IN      std_logic;
      JSR11_Out       : OUT     std_logic;
      EXEDest         : IN     LC3B_REG;
      EXEDest_Out     : OUT     LC3B_REG;
      EXEData         : IN     LC3B_WORD;
      EXEDATA_Out     : OUT     LC3B_WORD;
      MEMDest         : IN     LC3B_REG;
      MEMDest_Out     : OUT     LC3B_REG;
      MEMData         : IN     LC3B_WORD;
      MEMData_Out     : OUT     LC3B_WORD;
      EXEControl      : IN      Control_word;
      EXEControl_Out  : OUT     Control_word;
      MEMControl      : IN      Control_word;
      MEMControl_Out  : OUT     Control_word;
      MEM2FWD         : IN       Lc3b_word;
      MEM2FWD_Out     : OUT       LC3b_word;
      WBData          : IN      LC3b_word;
      WBData_Out      : OUT     LC3b_word;
      WBDest          : IN      LC3b_reg;
      WBDest_Out      : OUT     LC3b_reg;
      WBWrite          : IN      std_logic;
      WBWrite_Out      : OUT     std_logic
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
  VARIABLE tempJSR11   : std_logic;
  VARIABLE tempEXEDest  : LC3B_REG;
  VARIABLE tempEXEData  : LC3B_WORD;
  VARIABLE tempMEMDest  : LC3B_REG;
  VARIABLE tempMEMData  : LC3B_WORD;
  VARIABLE tempEXEControl : Control_word;
  VARIABLE tempMEMControl : Control_word;
  VARIABLE tempMEM2FWD    : LC3b_word;
  VARIABLE tempWBData     : LC3b_word;
  VARIABLE tempWBDest     : LC3b_reg;
  VARIABLE tempWBWrite     : std_logic;
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
     tempControl.ex.ALUAMuxsel := '0';
     tempControl.ex.ALUTrapSel := '0';
     tempControl.ex.aluop := "000";
     tempControl.ex.Shift := '0';
     tempControl.dec.StoreMuxSel := '0';
     tempControl.memory.LoadSETCCSEL := '0';  
     tempControl.memory.LoadNZP := '0';
     tempControl.memory.Load_dMDR := '0';
     tempControl.memory.Load_dMAR := '0';
     tempControl.memory.ISBranch := "00";   
     tempControl.write.RFMuxSel := '0';  
     tempControl.write.Reg_Write := '0'; 
     tempControl.memory.D_MREAD := '0';
     tempControl.memory.D_MWRITEH := '0';
     tempControl.memory.D_MWRITEL := '0';
     tempControl.memory.TRAPMuxSel := '0';
     tempControl.memory.STBMuxSel := '0';
     tempControl.memory.Indirect := '0';
     tempControl.memory.STIndirect := '0';
     tempSHFTOP := "00";    
     tempJSR11 := '0';
     tempEXEDest := "000";
     tempEXEData := "0000000000000000";
     tempMEMDest := "000";
     tempMEMData := "0000000000000000";
     tempEXEControl.memory.D_MREAD := '0';
     tempMEMControl.memory.D_MREAD := '0';
     tempEXEControl.write.Reg_Write := '0'; 
     tempMEMControl.write.Reg_Write := '0'; 
     tempMEM2FWD := "0000000000000000";
     tempWBData := "0000000000000000";
     tempWBDest := "000";
     tempWBWrite:= '0';
     
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
      tempJSR11 := JSR11;
      tempEXEDest := EXEDest;
      tempEXEData := EXEData;
      tempMEMDest := MEMDest;
      tempMEMData := MEMData;
      tempEXEControl := EXEControl;
      tempMEMControl := MEMControl;
      tempMEM2FWD := MEM2FWD;
      tempWBData := WBData;
      tempWBDest := WBDest;
      tempWBWrite := WBWrite;
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
  JSR11_Out   <= tempJSR11 AFTER DELAY_REG;
  EXEDest_Out <= tempEXEDest AFTER DELAY_REG;
  EXEData_Out     <= tempEXEData AFTER DELAY_REG;
  MEMDest_Out <= tempMEMDest AFTER DELAY_REG;
  MEMData_Out <= tempMEMData AFTER DELAY_REG;
  EXEControl_Out  <= tempEXEControl AFTER DELAY_REG;
  MEMControl_Out  <= tempMEMControl AFTER DELAY_REG;
  trapvector8_out <= temptrapvector8 AFTER DELAY_REG;
  MEM2FWD_Out     <= tempMEM2FWD AFTER DELAY_REG;
  WBData_Out      <= tempWBData AFTER DELAY_REG;
  WBDest_Out      <= tempWBDest AFTER DELAY_REG;
  WBWrite_Out      <= tempWBWrite AFTER DELAY_REG;
END PROCESS vhdl_REG_IF;
END ARCHITECTURE untitled;

