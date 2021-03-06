--
-- VHDL Architecture ece411.NOPGEN.untitled
--
-- Created:
--          by - styve1.ews (gelib-057-15.ews.illinois.edu)
--          at - 14:31:40 04/17/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY NOPGEN IS
   PORT( 
      NOP : OUT    Control_word
   );

-- Declarations

END NOPGEN ;

--
ARCHITECTURE untitled OF NOPGEN IS
BEGIN
    PROCESS (NOP)
    VARIABLE newControl : CONTROL_WORD;
    BEGIN
      newControl.name := no_op;
      newControl.ex.aluop := ALU_PASS;
      newControl.memory.ISBranch :="00";
      newControl.ex.ALUMuxsel := '0';
      newControl.ex.ALUAMuxsel := '0';
      newControl.ex.ALUTrapSel := '0';
      newControl.dec.StoreMuxSel := '0';
      newControl.dec.LDBMuxSel := '0';
     	newControl.memory.LoadSETCCSEL := '0';
      newControl.memory.Load_dMDR  := '0';
      newControl.memory.Load_dMAR := '0';
      newControl.memory.LoadNZP := '0';
      newControl.memory.D_MREAD := '0';
      newControl.memory.D_MWRITEH := '0';
      newControl.memory.D_MWRITEL := '0';
      newControl.memory.TRAPMuxSel := '0';
      newControl.write.RFMuxSel := '0';
      newControl.write.Reg_Write := '0';
      newControl.ex.Shift := '0';
      newControl.memory.STBMuxSel := '0';
      newControl.memory.Indirect := '0';
      newControl.memory.STIndirect := '0';
      NOP <= newControl;
END PROCESS;
END ARCHITECTURE untitled;

