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
      Control      : IN     Control_Word;
      Load_dMAR    : OUT    std_logic;
      Load_dMDR    : OUT    std_logic;
      LoadSETCCSEL : OUT    std_logic;
      LoadNZP      : OUT    std_logic;
      IsBranch     : OUT    STD_LOGIC_VECTOR (1 DOWNTO 0);
      D_MREAD      : OUT    std_logic;
      D_MWRITEH    : OUT    std_logic;
      D_MWRITEL    : OUT    std_logic;
      TRAPMuxSel   : OUT    std_logic;
      LDBMuxSel    : OUT    std_logic;
      STBMuxSel    : OUT    STD_LOGIC;
      Indirect     : OUT    std_logic;
      STIndirect   : OUT    std_logic
   );

-- Declarations

END ctr_rip_mem ;

--
ARCHITECTURE untitled OF ctr_rip_mem IS
BEGIN
  Load_dMAR <= Control.memory.Load_dMAR;
  Load_dMDR <= Control.memory.Load_dMDR;
  LoadSETCCSEL <= Control.memory.LoadSETCCSEL;
  LoadNZP <= Control.memory.LoadNZP;
  D_MREAD <= Control.memory.D_MREAD;
  D_MWRITEH <= Control.memory.D_MWRITEH;
  D_MWRITEL <= Control.memory.D_MWRITEL;
  ISBranch  <= Control.memory.ISBranch;
  TRAPMuxSel <= Control.memory.TRAPMuxSel;
  LDBMuxSel <= Control.dec.LDBMuxSel;
  STBMuxSel <= Control.memory.STBMuxSel;
  Indirect <= Control.memory.Indirect;
  STIndirect <= Control.memory.STIndirect;
END ARCHITECTURE untitled;

