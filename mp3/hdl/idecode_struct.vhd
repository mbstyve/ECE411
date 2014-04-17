-- VHDL Entity ece411.IDECODE.symbol
--
-- Created:


--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY IDECODE IS
   PORT( 
      Clk        : IN     std_logic;
      Instr      : IN     LC3b_word;
      RESET_L    : IN     std_logic;
      RFMUXOUT   : IN     LC3b_word;
      RegWrite   : IN     std_logic;
      WBDEST     : IN     LC3b_REG;
      iPC        : IN     LC3b_word;
      ADJ11Out   : OUT    LC3b_word;
      ADJ4Out    : OUT    LC3b_word;
      ADJ5Out    : OUT    LC3b_word;
      ADJ6Out    : OUT    LC3b_word;
      ADJ9Out    : OUT    Lc3b_word;
      ControlOut : OUT    CONTROL_WORD;
      DEST       : OUT    LC3b_reg;
      IMM5Sel    : OUT    std_logic;
      JSR11      : OUT    std_logic;
      OPCODE     : OUT    LC3b_opcode;
      RFAout     : OUT    LC3b_word;
      RFBout     : OUT    LC3b_word;
      SHFTOP     : OUT    LC3b_SHFTOP;
      SRCA       : OUT    LC3b_reg;
      SRCB       : OUT    LC3b_reg;
      iPC_Out    : OUT    LC3b_word;
      trapvect8  : OUT    LC3b_word
   );

-- Declarations

END IDECODE ;

--
-- VHDL Architecture ece411.IDECODE.struct
--
-- Created:

--          by - styve1.ews (gelib-057-20.ews.illinois.edu)
--          at - 19:33:42 04/16/14

--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

LIBRARY mp3lib;

ARCHITECTURE struct OF IDECODE IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL ADJ6out1    : LC3b_word;
   SIGNAL AJD6NS      : LC3b_word;
   SIGNAL IMM6        : LC3b_imm4;
   SIGNAL IMM7        : LC3b_imm5;
   SIGNAL INDEX6      : LC3b_index6;
   SIGNAL LDBMuxSel   : STD_LOGIC;
   SIGNAL OFFSET11    : LC3b_offset11;
   SIGNAL OFFSET9     : LC3b_offset9;
   SIGNAL STOREMUXOUT : LC3B_REG;
   SIGNAL StoreMuxSel : std_logic;
   SIGNAL TrapOff     : LC3b_trapvect8;

   -- Implicit buffer signal declarations
   SIGNAL ControlOut_internal : CONTROL_WORD;
   SIGNAL DEST_internal       : LC3b_reg;
   SIGNAL OPCODE_internal     : LC3b_opcode;
   SIGNAL SRCA_internal       : LC3b_reg;
   SIGNAL SRCB_internal       : LC3b_reg;


   -- Component Declarations
   COMPONENT ADJ11
   PORT (
      clk      : IN     std_logic ;
      offset11 : IN     LC3b_offset11 ;
      ADJ11out : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT ADJ4
   PORT (
      clk     : IN     std_logic ;
      imm4    : IN     LC3b_nibble ;
      ADJ4out : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT ADJ5
   PORT (
      clk     : IN     std_logic ;
      imm5    : IN     LC3b_imm5 ;
      ADJ5out : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT ADJ6
   PORT (
      clk     : IN     std_logic ;
      index6  : IN     LC3b_index6 ;
      ADJ6out : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT ADJ6NS
   PORT (
      clk       : IN     std_logic ;
      index6    : IN     LC3b_index6 ;
      ADJ6NSout : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT ADJ9
   PORT (
      clk     : IN     std_logic ;
      offset9 : IN     LC3b_offset9 ;
      ADJ9out : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT ADJTrap
   PORT (
      TrapOffset : IN     LC3b_trapvect8 ;
      clk        : IN     std_logic ;
      TV8Out     : OUT    LC3b_Word 
   );
   END COMPONENT;
   COMPONENT CTL_RIP_DEC
   PORT (
      ControlOut  : IN     CONTROL_WORD ;
      StoreMuxSel : OUT    std_logic ;
      LDBMuxSel   : OUT    STD_LOGIC 
   );
   END COMPONENT;
   COMPONENT ControlRom
   PORT (
      opcode  : IN     LC3B_OPCODE ;
      NOPSig  : IN     LC3b_reg ;
      control : OUT    CONTROL_WORD 
   );
   END COMPONENT;
   COMPONENT IR
   PORT (
      RESET_L  : IN     std_logic ;
      clk      : IN     std_logic ;
      Load_IR  : IN     std_logic ;
      MDRout   : IN     LC3b_word ;
      OPCODE   : OUT    LC3b_opcode ;
      SRCA     : OUT    LC3b_reg ;
      SRCB     : OUT    LC3b_reg ;
      DEST     : OUT    LC3b_reg ;
      OFFSET11 : OUT    LC3b_offset11 ;
      OFFSET9  : OUT    LC3b_offset9 ;
      INDEX6   : OUT    LC3b_index6 ;
      IMM5     : OUT    LC3b_imm5 ;
      IMM4     : OUT    LC3b_imm4 ;
      IMM5Sel  : OUT    std_logic ;
      SHFTOP   : OUT    LC3b_SHFTOP ;
      JSR11    : OUT    std_logic ;
      TrapOff  : OUT    LC3b_trapvect8 
   );
   END COMPONENT;
   COMPONENT REG_FILE
   PORT (
      RESET_L     : IN     std_logic ;
      clk         : IN     std_logic ;
      REGWRITE    : IN     std_logic ;
      DEST        : IN     LC3b_REG ;
      STOREMUXOUT : IN     LC3b_REG ;
      SRCB        : IN     LC3b_REG ;
      RFMUXOUT    : IN     LC3b_word ;
      RFAout      : OUT    LC3b_word ;
      RFBout      : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT RegMux2
   PORT (
      a      : IN     LC3B_REG ;
      b      : IN     LC3B_REG ;
      Sel    : IN     std_logic ;
      Muxout : OUT    LC3B_REG 
   );
   END COMPONENT;
   COMPONENT MUX2_16
   PORT (
      A   : IN     LC3B_WORD ;
      B   : IN     LC3B_WORD ;
      SEL : IN     STD_LOGIC ;
      F   : OUT    LC3B_WORD 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : ADJ11 USE ENTITY ece411.ADJ11;
   FOR ALL : ADJ4 USE ENTITY ece411.ADJ4;
   FOR ALL : ADJ5 USE ENTITY ece411.ADJ5;
   FOR ALL : ADJ6 USE ENTITY ece411.ADJ6;
   FOR ALL : ADJ6NS USE ENTITY ece411.ADJ6NS;
   FOR ALL : ADJ9 USE ENTITY ece411.ADJ9;
   FOR ALL : ADJTrap USE ENTITY ece411.ADJTrap;
   FOR ALL : CTL_RIP_DEC USE ENTITY ece411.CTL_RIP_DEC;
   FOR ALL : ControlRom USE ENTITY ece411.ControlRom;
   FOR ALL : IR USE ENTITY ece411.IR;
   FOR ALL : MUX2_16 USE ENTITY mp3lib.MUX2_16;
   FOR ALL : REG_FILE USE ENTITY ece411.REG_FILE;
   FOR ALL : RegMux2 USE ENTITY ece411.RegMux2;
   -- pragma synthesis_on


BEGIN
   -- Architecture concurrent statements
   -- HDL Embedded Text Block 1 eb1
   iPC_Out <= iPC;                  


   -- Instance port mappings.
   aADJ11 : ADJ11
      PORT MAP (
         clk      => Clk,
         offset11 => OFFSET11,
         ADJ11out => ADJ11Out
      );
   aADJ4 : ADJ4
      PORT MAP (
         clk     => Clk,
         imm4    => IMM6,
         ADJ4out => ADJ4Out
      );
   aADJ5 : ADJ5
      PORT MAP (
         clk     => Clk,
         imm5    => IMM7,
         ADJ5out => ADJ5Out
      );
   aADJ6 : ADJ6
      PORT MAP (
         clk     => Clk,
         index6  => INDEX6,
         ADJ6out => ADJ6out1
      );
   aADJ6NS : ADJ6NS
      PORT MAP (
         clk       => Clk,
         index6    => INDEX6,
         ADJ6NSout => AJD6NS
      );
   aADJ9 : ADJ9
      PORT MAP (
         clk     => Clk,
         offset9 => OFFSET9,
         ADJ9out => ADJ9Out
      );
   aADJTrap : ADJTrap
      PORT MAP (
         TrapOffset => TrapOff,
         clk        => Clk,
         TV8Out     => trapvect8
      );
   aCTRL_RIP : CTL_RIP_DEC
      PORT MAP (
         ControlOut  => ControlOut_internal,
         StoreMuxSel => StoreMuxSel,
         LDBMuxSel   => LDBMuxSel
      );
   CTRL_ROM : ControlRom
      PORT MAP (
         opcode  => OPCODE_internal,
         NOPSig  => DEST_internal,
         control => ControlOut_internal
      );
   INSTR_REG : IR
      PORT MAP (
         RESET_L  => RESET_L,
         clk      => Clk,
         Load_IR  => Clk,
         MDRout   => Instr,
         OPCODE   => OPCODE_internal,
         SRCA     => SRCA_internal,
         SRCB     => SRCB_internal,
         DEST     => DEST_internal,
         OFFSET11 => OFFSET11,
         OFFSET9  => OFFSET9,
         INDEX6   => INDEX6,
         IMM5     => IMM7,
         IMM4     => IMM6,
         IMM5Sel  => IMM5Sel,
         SHFTOP   => SHFTOP,
         JSR11    => JSR11,
         TrapOff  => TrapOff
      );
   aREF_FILE : REG_FILE
      PORT MAP (
         RESET_L     => RESET_L,
         clk         => Clk,
         REGWRITE    => RegWrite,
         DEST        => WBDEST,
         STOREMUXOUT => SRCA_internal,
         SRCB        => STOREMUXOUT,
         RFMUXOUT    => RFMUXOUT,
         RFAout      => RFAout,
         RFBout      => RFBout
      );
   StoreMux : RegMux2
      PORT MAP (
         a      => SRCB_internal,
         b      => DEST_internal,
         Sel    => StoreMuxSel,
         Muxout => STOREMUXOUT
      );
   U_0 : MUX2_16
      PORT MAP (
         A   => ADJ6out1,
         B   => AJD6NS,
         SEL => LDBMuxSel,
         F   => ADJ6Out
      );

   -- Implicit buffered output assignments
   ControlOut <= ControlOut_internal;
   DEST       <= DEST_internal;
   OPCODE     <= OPCODE_internal;
   SRCA       <= SRCA_internal;
   SRCB       <= SRCB_internal;

END struct;
