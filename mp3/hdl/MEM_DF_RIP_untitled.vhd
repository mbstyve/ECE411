--
-- VHDL Architecture ece411.MEM_DF_RIP.untitled
--
-- Created:
--          by - styve1.ews (gelib-057-20.ews.illinois.edu)
--          at - 00:24:59 04/17/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY MEM_DF_RIP IS
   PORT( 
      MEMControl   : IN     Control_word;
      MEMMREAD     : OUT    STD_LOGIC;
      MEMREG_WRITE : OUT    STD_LOGIC
   );

-- Declarations

END MEM_DF_RIP ;

--
ARCHITECTURE untitled OF MEM_DF_RIP IS
BEGIN
  MEMREG_Write <= MEMControl.write.Reg_Write; 
  MEMMREAD <= MEMControl.memory.D_MREAD;
END ARCHITECTURE untitled;

