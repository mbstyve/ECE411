--
-- VHDL Architecture ece411.EXE_DF_RIP.untitled
--
-- Created:
--          by - styve1.ews (gelib-057-20.ews.illinois.edu)
--          at - 00:23:14 04/17/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY EXE_DF_RIP IS
   PORT( 
      EXEControl   : IN     Control_word;
      EXEMREAD     : OUT    STD_LOGIC;
      EXEREG_WRITE : OUT    STD_LOGIC
   );

-- Declarations

END EXE_DF_RIP ;

--
ARCHITECTURE untitled OF EXE_DF_RIP IS
BEGIN
  EXEREG_Write <= EXEControl.write.Reg_Write; 
  EXEMREAD <= EXEControl.memory.D_MREAD;
END ARCHITECTURE untitled;

