--
-- VHDL Architecture ece411.MEM_WB.untitled
--
-- Created:
--          by - styve1.ews (gelib-057-02.ews.illinois.edu)
--          at - 17:23:28 03/12/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY MEM_WB IS
-- Declarations

   PORT( 
      RESET_L      : IN     std_logic;
      clk          : IN     std_logic;
      Load         : IN     std_logic;
      ReadData     : IN     LC3b_word;
      ALUout       : IN     LC3b_word;
      DEST         : IN     LC3b_reg;
      SRCA         : IN     LC3b_reg;
      SRCB         : IN     LC3b_reg;
      Control      : IN     control_word;
      ALUout_out   : OUT    LC3b_word;
      DEST_OUT     : OUT    LC3b_reg;
      SRCA_OUT     : OUT    LC3b_reg;
      SRCB_OUT     : OUT    LC3b_reg;
      Control_Out  : OUT    control_word;
      ReadData_out : OUT    LC3b_word;
      iPC          : IN     LC3b_WORD;
      iPC_Out          : OUT     LC3b_WORD
   );

END MEM_WB ;

--
ARCHITECTURE untitled OF MEM_WB IS
BEGIN

  vhdl_REG_MEM : PROCESS (clk, RESET_L, Load, ReadData, ALUout)
  VARIABLE tempALUout   : LC3b_word;
  VARIABLE tempReadData : LC3b_word;
  VARIABLE tempDEST     : LC3b_reg;
  VARIABLE tempSRCA     : LC3b_reg;
  VARIABLE tempSRCB     : LC3b_reg;
  VARIABLE tempControl     : control_word;
  VARIABLE tempiPC      : LC3B_WORD;
  BEGIN
   IF (RESET_L = '0') THEN
     tempALUout   := "0000000000000000";
     tempReadData := "0000000000000000";
     tempDEST     := "000";
     tempSRCA     := "000";
     tempSRCB     := "000";
     tempControl.ex.ALUMuxsel := '0';
     tempControl.ex.ALUAMuxsel := '0';
     tempControl.ex.aluop := "000";
     tempControl.ex.Shift := '0';
     tempControl.ex.ALUTrapSel := '0';
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
     tempiPC := "0000000000000000"; 
     
   ELSIF (clk'event AND (clk = '1') AND (clk'last_value = '0')) THEN
     IF (Load = '1') THEN
      tempALUout    := ALUout;
      tempReadData  := ReadData;
      tempDEST      := DEST;
      tempSRCA      := SRCA;
      tempSRCB      := SRCB;
      tempControl      := Control;
      tempiPC       := iPC;
    END IF;
  END IF;
  ALUout_out    <= tempALUout AFTER DELAY_REG;
  ReadData_out  <= tempReadData AFTER DELAY_REG; 
  DEST_OUT      <= tempDEST AFTER DELAY_REG;
  SRCA_OUT      <= tempSRCA AFTER DELAY_REG;
  SRCB_OUT      <= tempSRCB AFTER DELAY_REG; 
  Control_OUT   <= tempControl AFTER DELAY_REG;
  iPC_Out       <= tempiPC  AFTER DELAY_REG;
END PROCESS vhdl_REG_MEM;
END ARCHITECTURE untitled;

