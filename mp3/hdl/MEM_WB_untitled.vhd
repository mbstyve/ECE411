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
      ReadData_out : OUT    LC3b_word
   );

END MEM_WB ;

--
ARCHITECTURE untitled OF MEM_WB IS
BEGIN

  vhdl_REG_MEM : PROCESS (clk, RESET_L, Load, ReadData, ALUout)
  VARIABLE tempALUout   : LC3b_word;
  VARIABLE tempReadData : LC3b_reg;
  VARIABLE tempDEST     : LC3b_reg;
  VARIABLE tempSRCA     : LC3b_reg;
  VARIABLE tempSRCB     : LC3b_reg;
  VARIABLE tempCTRL     : control_word;
  BEGIN
   IF (RESET_L = '0') THEN
     tempALUout   := "0000000000000000";
     tempReadData := "0000000000000000";
     tempDEST     := "000";
     tempSRCA     := "000";
     tempSRCB     := "000";
     tempCTRL     := "000";
   ELSIF (clk'event AND (clk = '1') AND (clk'last_value = '0')) THEN
     IF (Load = '1') THEN
      tempALUout    := ALUout;
      tempReadData  := ReadData;
      tempDEST      := DEST;
      tempSRCA      := SRCA;
      tempSRCB      := SRCB;
      tempCTRL      := Control;
    END IF;
  END IF;
  ALUout_out    <= tempALUout AFTER DELAY_REG;
  ReadData_out  <= tempReadData AFTER DELAY_REG; 
  DEST_OUT      <= tempDEST AFTER DELAY_REG;
  SRCA_OUT      <= tempSRCA AFTER DELAY_REG;
  SRCB_OUT      <= tempSRCB AFTER DELAY_REG; 
  Control_OUT   <= tempCTRL AFTER DELAY_REG;
END PROCESS vhdl_REG_MEM;
END ARCHITECTURE untitled;

