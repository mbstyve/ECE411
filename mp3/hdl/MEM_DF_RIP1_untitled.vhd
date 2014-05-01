--
-- VHDL Architecture ece411.MEM_DF_RIP1.untitled
--
-- Created:
--          by - styve1.ews (evrt-252-09.ews.illinois.edu)
--          at - 21:15:32 04/29/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY MEM_DF_RIP1 IS
   PORT( 
      MEMALU_CONT : IN     control_word;
      MEMALU_REG_WRITE : OUT std_logic;
      MEMALU_MREAD  : OUT std_logic;
      MEMALU_RFMUXSEL : OUT std_logic
   );

-- Declarations

END MEM_DF_RIP1 ;

--
ARCHITECTURE untitled OF MEM_DF_RIP1 IS
BEGIN
    MEMALU_REG_Write <= MEMALU_Cont.write.Reg_Write; 
  MEMALU_MREAD <= MEMALU_Cont.memory.D_MREAD;
  MEMALU_RFMUXSEL <= MEMALU_Cont.write.RFMUXSel;
END ARCHITECTURE untitled;

