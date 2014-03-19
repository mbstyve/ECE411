--
-- VHDL Architecture ece411.ctr_rip_mem.untitled
--
-- Created:
--          by - styve1.ews (gelib-057-14.ews.illinois.edu)
--          at - 15:45:02 03/19/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ctr_rip_mem IS
   PORT( 
      Control   : IN     Control_Word;
      Load_dMAR : OUT    std_logic;
      Load_dMDR : OUT    std_logic;
      LoadSETCCSEL :  OUT std_logic;
      LoadNZP : OUT std_logic;
      ISBranch  : OUT std_Logic
   );

-- Declarations

END ctr_rip_mem ;

--
ARCHITECTURE untitled OF ctr_rip_mem IS
BEGIN
  Load_dMAR <= control.memory.Load_dMAR;
  Load_dMDR <= contol.memory.Load_dMDR;
  LoadSETCCSEL <= control.memory.LoadSETCCSEL;
  LoadNZP <= control.memory.LoadNZP;
  ISBranch  <= control.memory.ISBranch;
END ARCHITECTURE untitled;

