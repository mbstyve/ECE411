--
-- VHDL Architecture mp3lib.ControlRom.Untitled
--
-- Created:
--          by - glazesk1.stdt (eelnx30.ews.illinois.edu)
--          at - 13:57:03 01/18/11
--
-- using Mentor Graphics HDL Designer(TM) 2005.3 (Build 75)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
LIBRARY ECE411;
USE ECE411.LC3B_TYPES.ALL;

ENTITY ControlRom IS
PORT (
    opcode  : IN  LC3B_OPCODE;
    control : OUT CONTROL_WORD
);
END ENTITY ControlRom;

--
ARCHITECTURE untitled OF ControlRom IS
BEGIN
    PROCESS (opcode)
    VARIABLE newControl : CONTROL_WORD;
    BEGIN
        CASE opcode IS
            WHEN OP_ADD =>
                newControl.name := add_op;
                newControl.ex.aluop := ALU_ADD;
                newControl.memory.LoadNZP := '1';
                newControl.write.RFMuxSel := '1';
                newControl.write.Reg_Write := '1';
                -- add more signals
            WHEN OP_AND =>
                newControl.name := and_op;
                newControl.ex.aluop := ALU_AND;
                newControl.memory.LoadNZP := '1';
                newControl.write.RFMuxSel := '1';
                newControl.write.Reg_Write := '1';
            -- add more opcodes
            WHEN OP_NOT =>
                newControl.name := not_op;
                newControl.ex.aluop := ALU_NOT;
                newControl.memory.LoadNZP := '1';
                newControl.write.RFMuxSel := '1';
                newControl.write.Reg_Write := '1';
            WHEN OP_LDR =>
                newControl.name := ldr_op;
                newControl.ex.aluop := ALU_ADD;
                newControl.dec.StoreMuxSel := '1';
                newControl.ex.ALUMuxsel :='1';
                newControl.memory.LoadNZP := '1';
                newControl.memory.LoadSETCCSEL :='1';
                newControl.memory.Load_dMDR :='1';
                newControl.memory.Load_dMAR :='1';
                newControl.memory.D_MREAD :='1';
                newControl.write.Reg_Write := '1';
            WHEN OP_STR =>
              newControl.name := str_op;
                newControl.ex.aluop := ALU_ADD;
                newControl.dec.StoreMuxSel := '1';
                newControl.ex.ALUMuxsel :='1';
                newControl.memory.D_MWRITEH :='1';
                newControl.memory.D_MWRITEL :='1';
                newControl.memory.Load_dMDR :='1';
                newControl.memory.Load_dMAR :='1';
            WHEN OP_BR =>
                newControl.name := br_op;
                newControl.ex.aluop := ALU_PASS;
                newControl.memory.ISBranch :='1';
            WHEN OTHERS =>
                newControl.name := bad_op;
                newControl.ex.aluop := ALU_PASS;
        END CASE;
        
        control <= newControl AFTER DELAY_ROM;
    END PROCESS;
END ARCHITECTURE untitled;
