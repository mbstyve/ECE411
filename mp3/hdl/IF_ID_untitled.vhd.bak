--
-- VHDL Architecture ece411.IF_ID.untitled
--
-- Created:
--          by - styve1.ews (gelib-057-02.ews.illinois.edu)
--          at - 16:42:50 03/12/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY IF_ID IS
   PORT( 
      RESET_L   : IN     std_logic;
      clk       : IN     std_logic;
      Load      : IN     std_logic;
      Instr     : IN     LC3b_word;
      iPC       : IN     LC3b_word;
      Instr_out : OUT    LC3b_word;
      iPC_out   : OUT    LC3b_word
   );

-- Declarations

END IF_ID ;

--
ARCHITECTURE untitled OF IF_ID IS
BEGIN
  vhdl_REG_IF : PROCESS (clk, RESET_L, Load, Instr, iPC)
  VARIABLE tempInstr : LC3b_word;
  VARIABLE tempiPC   : LC3b_word;
  BEGIN
   IF (RESET_L = '0') THEN
     tempiPC := "0000";
     tempInstr := "0000";
   ELSIF (clk'event AND (clk = '1') AND (clk'last_value = '0')) THEN
     IF (Load = '1') THEN
      tempiPC := iPC;
      tempInstr := Instr;
    END IF;
  END IF;
  iPC_out   <= tempiPC AFTER DELAY_REG;
  Instr_out <= tempInstr AFTER DELAY_REG;
END PROCESS vhdl_REG_IF;
END ARCHITECTURE untitled;

