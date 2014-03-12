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
      Opcode        : IN     LC3b_opcode;
      ALUout_out   : OUT    LC3b_word;
      Dest_out     : OUT    LC3b_reg;
      Opcode_out   : OUT    LC3b_opcode
   );

END EX_MEM ;

--
ARCHITECTURE untitled OF EX_MEM IS
BEGIN

  vhdl_REG_EX : PROCESS (clk, RESET_L, Load, ALUout, Dest, Opcode)
  VARIABLE tempALUout : LC3b_word;
  VARIABLE tempDest   : LC3b_reg;
  VARIABLE tempOpcode : LC3b_opcode;
  BEGIN
   IF (RESET_L = '0') THEN
     tempALUout := "0000";
     tempDest := "000";
     tempOpcode := "000";
   ELSIF (clk'event AND (clk = '1') AND (clk'last_value = '0')) THEN
     IF (Load = '1') THEN
      tempALUout := ALUout;
      tempDest := Dest;
      tempOpcode := Opcode;
    END IF;
  END IF;
  ALUout_out   <= tempALUout AFTER DELAY_REG;
  Dest_out     <= tempDest AFTER DELAY_REG;
  Opcode_out   <= tempOpcode AFTER DELAY_REG;  
END PROCESS vhdl_REG_EX;
END ARCHITECTURE untitled;

