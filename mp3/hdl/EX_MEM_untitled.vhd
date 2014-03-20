--
-- VHDL Architecture ece411.EX_MEM.untitled
--
-- Created:
--          by - styve1.ews (gelib-057-02.ews.illinois.edu)
--          at - 17:12:01 03/12/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY EX_MEM IS
-- Declarations
   PORT( 
      RESET_L      : IN     std_logic;
      clk          : IN     std_logic;
      Load         : IN     std_logic;
      ALUout       : IN     LC3b_word;
      Dest         : IN     LC3b_reg;
      control      : IN     control_word;
      control_out  :  OUT    control_word;
      ALUout_out   : OUT    LC3b_word;
      Dest_out     : OUT    LC3b_reg;
      SRCA         : IN LC3B_REG;
      SRCB         : IN LC3B_REG;
      ADJ11        : IN LC3B_WORD;
      
      ADJ9      : IN LC3B_WORD;
      TRAP8     : IN LC3B_WORD;
      iPC       : IN LC3B_WORD;
      
      iPC_OUT   : OUT LC3B_WORD;
      ADJ9_OUT  : OUT LC3B_WORD;
      ADJ11_OUT : OUT LC3B_WORD;
      TRAP8_OUT : OUT LC3B_WORD;
      SRCA_OUT     : OUT LC3B_REG;
      SRCB_OUT     : OUT LC3B_REG
   );

END EX_MEM ;

--
ARCHITECTURE untitled OF EX_MEM IS
BEGIN

  vhdl_REG_EX : PROCESS (clk, RESET_L, Load, ALUout, Dest, SRCA, SRCB, ADJ11, ADJ9,TRAP8,iPC)
  VARIABLE tempALUout : LC3b_word;
  VARIABLE tempDest   : LC3b_reg;
  VARIABLE tempControl : control_word;
  VARIABLE tempADJ9 : LC3B_WORD;
  VARIABLE tempADJ11 : LC3B_WORD;
  VARIABLE tempSRCA: LC3B_REG;
  VARIABLE tempSRCB: LC3B_REG;
  VARIABLE tempiPC: LC3B_WORD;
  VARIABLE tempTRAP8: LC3B_WORD;
  BEGIN
   IF (RESET_L = '0') THEN
     tempALUout := "0000000000000000";
     tempDest := "000";
     tempADJ9 := "0000000000000000";
     tempADJ11:= "0000000000000000";
     tempSRCA := "000";
     tempSRCB := "000";
     tempiPC := "0000000000000000";
     tempTRAP8 := "0000000000000000";
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
     
   ELSIF (clk'event AND (clk = '1') AND (clk'last_value = '0')) THEN
     IF (Load = '1') THEN
      tempALUout := ALUout;
      tempDest := Dest;
      tempControl := control;
      tempADJ9 := ADJ9;
      tempADJ11:= ADJ11;
      tempSRCA := SRCA;
      tempSRCB := SRCB;
      tempiPC := iPC;
      tempTRAP8 := TRAP8;
    END IF;
  END IF;
  ALUout_out   <= tempALUout AFTER DELAY_REG;
  Dest_out     <= tempDest AFTER DELAY_REG;
  ADJ9_out <= tempADJ9 AFTER DELAY_REG;
  ADJ11_out <= tempADJ11 AFTER DELAY_REG;
  SRCA_out <= tempSRCA AFTER DELAY_REG;
  SRCB_out <= tempSRCB AFTER DELAY_REG;
  iPC_out <= tempiPC AFTER DELAY_REG;
  TRAP8_out <= tempTRAP8 AFTER DELAY_REG;   
END PROCESS vhdl_REG_EX;
END ARCHITECTURE untitled;

