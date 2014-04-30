-- VHDL Entity ece411.EXECUTE.symbol
--
-- Created:
--          by - styve1.ews (gelib-057-25.ews.illinois.edu)
--          at - 02:35:06 04/30/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY EXECUTE IS
   PORT( 
      ADJ11        : IN     LC3B_WORD;
      ADJ4         : IN     LC3B_WORD;
      ADJ5         : IN     LC3B_WORD;
      ADJ6out      : IN     LC3B_WORD;
      ADJ9         : IN     lc3b_word;
      DEST         : IN     lc3b_reg;
      EXEControl   : IN     Control_word;
      EXEDATA      : IN     LC3B_word;
      EXEDest      : IN     LC3B_Reg;
      IMM5MuxSel   : IN     STD_LOGIC;
      JSR11        : IN     std_logic;
      MEMALU       : IN     LC3b_WORD;
      MEMALU_CONT  : IN     control_word;
      MEMControl   : IN     Control_word;
      MEMDATA      : IN     LC3B_WORD;
      MEMDest      : IN     LC3B_REG;
      MEMDest2     : IN     LC3b_reg;
      RegAOut      : IN     LC3b_word;
      RegBOut      : IN     LC3B_WORD;
      SHFTOP       : IN     LC3B_SHFTOP;
      SRCA         : IN     lc3b_reg;
      SRCB         : IN     lc3b_reg;
      TRAP8        : IN     LC3B_WORD;
      control      : IN     CONTROL_WORD;
      iPC          : IN     lc3b_word  BUS;
      ADJ11_OUT    : OUT    LC3B_WORD;
      ADJ9_OUT     : OUT    LC3B_WORD;
      ALUResultout : OUT    LC3B_WORD;
      DEST_OUT     : OUT    lc3b_reg;
      INV_STALL    : OUT    STD_LOGIC;
      JSR11_Out    : OUT    std_logic;
      RegBOut_OUT  : OUT    LC3b_word;
      SRCA_OUT     : OUT    lc3b_reg;
      SRCB_OUT     : OUT    lc3b_reg;
      STALL        : OUT    STD_LOGIC;
      TRAP8_OUT    : OUT    LC3B_WORD;
      control_out  : OUT    CONTROL_WORD;
      iPC_OUT      : OUT    lc3b_word;
      writeHigh    : OUT    STD_LOGIC;
      writeLow     : OUT    STD_LOGIC
   );

-- Declarations

END EXECUTE ;

--
-- VHDL Architecture ece411.EXECUTE.struct
--
-- Created:
--          by - styve1.ews (gelib-057-25.ews.illinois.edu)
--          at - 02:35:06 04/30/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

LIBRARY mp3lib;

ARCHITECTURE struct OF EXECUTE IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL A                   : STD_LOGIC;
   SIGNAL ADATA               : LC3B_WORD;
   SIGNAL ALUAMuxSel          : std_logic;
   SIGNAL ALUAMuxout          : LC3B_WORD BUS;
   SIGNAL ALUASELNOT          : STD_LOGIC;
   SIGNAL ALUMuxSel           : std_logic;
   SIGNAL ALUMuxout           : LC3B_WORD;
   SIGNAL ALUOP               : LC3B_ALUOP;
   SIGNAL ALUTrapSel          : std_logic;
   SIGNAL ALUout              : LC3B_WORD;
   SIGNAL A_ALUFWD_SEL        : STD_LOGIC;
   SIGNAL A_EXE               : std_logic;
   SIGNAL A_EXESEL            : std_logic;
   SIGNAL A_MEM               : std_logic;
   SIGNAL A_MEMALU            : std_logic;
   SIGNAL A_MEMALUSEL         : STD_LOGIC;
   SIGNAL A_MEMSEL            : STD_LOGIC;
   SIGNAL A_MEM_MEMALU_out    : LC3B_WORD;
   SIGNAL A_STALL             : STD_LOGIC;
   SIGNAL B                   : LC3b_reg;
   SIGNAL B_ALUFWD_SEL        : std_logic;
   SIGNAL B_EXE               : std_logic;
   SIGNAL B_EXESEL            : std_logic;
   SIGNAL B_MEM               : std_logic;
   SIGNAL B_MEMALU            : std_logic;
   SIGNAL B_MEMALUSEL         : STD_LOGIC;
   SIGNAL B_MEMSEL            : STD_LOGIC;
   SIGNAL B_MEM_MEMALU        : LC3B_WORD;
   SIGNAL B_STALL             : STD_LOGIC;
   SIGNAL DEST_EXE            : std_logic;
   SIGNAL DEST_MEM            : std_logic;
   SIGNAL DEST_MEMALU         : std_logic;
   SIGNAL DEST_MEMALUSEL      : STD_LOGIC;
   SIGNAL DEST_MEM_MEMALU_OUT : LC3B_WORD;
   SIGNAL D_MWRITEH           : std_logic;
   SIGNAL D_MWRITEL           : std_logic;
   SIGNAL EXEFWDEN            : STD_LOGIC;
   SIGNAL EXEMREAD            : STD_LOGIC;
   SIGNAL EXENOTREAD          : STD_LOGIC;
   SIGNAL EXEREG_WRITE        : STD_LOGIC;
   SIGNAL F                   : LC3B_WORD;
   SIGNAL F1                  : STD_LOGIC;
   SIGNAL F2                  : STD_LOGIC;
   SIGNAL F23                 : STD_LOGIC;
   SIGNAL F24                 : STD_LOGIC;
   SIGNAL F25                 : STD_LOGIC;
   SIGNAL F26                 : STD_LOGIC;
   SIGNAL F28                 : STD_LOGIC;
   SIGNAL F29                 : STD_LOGIC;
   SIGNAL F3                  : LC3B_WORD;
   SIGNAL F5                  : LC3B_WORD;
   SIGNAL F6                  : LC3B_WORD;
   SIGNAL F8                  : LC3B_WORD;
   SIGNAL IMM5Muxout          : LC3B_WORD;
   SIGNAL ISBranch            : std_logic_vector(1 DOWNTO 0);
   SIGNAL MEMALUREGWRITE      : STD_LOGIC;
   SIGNAL MEMALU_MREAD        : std_logic;
   SIGNAL MEMALU_NOT_READ     : std_logic;
   SIGNAL MEMALU_REG_WRITE    : std_logic;
   SIGNAL MEMFWD              : STD_LOGIC;
   SIGNAL MEMMREAD            : STD_LOGIC;
   SIGNAL MEMREG_WRITE        : STD_LOGIC;
   SIGNAL MemFWDEn            : STD_LOGIC;
   SIGNAL PCplus2             : LC3b_word;
   SIGNAL SFTOUT              : LC3b_word;
   SIGNAL STBMuxSel           : std_logic;
   SIGNAL STR_EXEFWD          : std_logic;
   SIGNAL STR_MEMFWD          : STD_LOGIC;
   SIGNAL Shift               : std_logic;
   SIGNAL TRAPMuxOut          : LC3B_WORD;
   SIGNAL addr0_not           : std_logic;

   -- Implicit buffer signal declarations
   SIGNAL STALL_internal : STD_LOGIC;


   -- Component Declarations
   COMPONENT AND4
   PORT (
      A : IN     std_logic ;
      B : IN     std_logic ;
      C : IN     std_logic ;
      D : IN     std_logic ;
      F : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT COMP3
   PORT (
      A : IN     LC3b_Reg ;
      B : IN     LC3B_Reg ;
      F : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT EXE_DF_RIP
   PORT (
      EXEControl   : IN     Control_word ;
      EXEMREAD     : OUT    STD_LOGIC ;
      EXEREG_WRITE : OUT    STD_LOGIC 
   );
   END COMPONENT;
   COMPONENT MEM_DF_RIP
   PORT (
      MEMControl   : IN     Control_word ;
      MEMMREAD     : OUT    STD_LOGIC ;
      MEMREG_WRITE : OUT    STD_LOGIC 
   );
   END COMPONENT;
   COMPONENT MEM_DF_RIP1
   PORT (
      MEMALU_CONT      : IN     control_word ;
      MEMALU_MREAD     : OUT    std_logic ;
      MEMALU_REG_WRITE : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT PLUS2
   PORT (
      PCin    : IN     LC3b_word ;
      PCplus2 : OUT    LC3b_word 
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
   COMPONENT SIGGEN111
   PORT (
      B : OUT    LC3b_reg 
   );
   END COMPONENT;
   COMPONENT Shifter
   PORT (
      SHFTOP : IN     LC3B_SHFTOP ;
      SFTOUT : OUT    LC3b_word ;
      ADJ4   : IN     LC3B_WORD ;
      ADATA  : IN     LC3B_WORD 
   );
   END COMPONENT;
   COMPONENT ctl_rip_execute
   PORT (
      control    : IN     CONTROL_WORD ;
      ALUOP      : OUT    LC3B_ALUOP ;
      ALUMuxSel  : OUT    std_logic ;
      ALUAMuxSel : OUT    std_logic ;
      Shift      : OUT    std_logic ;
      ALUTrapSel : OUT    std_logic ;
      STBMuxSel  : OUT    std_logic ;
      D_MWRITEH  : OUT    std_logic ;
      D_MWRITEL  : OUT    std_logic ;
      ISBranch   : OUT    std_logic_vector (1 DOWNTO 0)
   );
   END COMPONENT;
   COMPONENT ALU
   PORT (
      A     : IN     LC3B_WORD ;
      ALUOP : IN     LC3B_ALUOP ;
      B     : IN     LC3B_WORD ;
      F     : OUT    LC3B_WORD 
   );
   END COMPONENT;
   COMPONENT AND2
   PORT (
      A : IN     STD_LOGIC ;
      B : IN     STD_LOGIC ;
      F : OUT    STD_LOGIC 
   );
   END COMPONENT;
   COMPONENT AND3
   PORT (
      A : IN     STD_LOGIC ;
      B : IN     STD_LOGIC ;
      C : IN     STD_LOGIC ;
      F : OUT    STD_LOGIC 
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
   COMPONENT NOT1
   PORT (
      A : IN     STD_LOGIC ;
      F : OUT    STD_LOGIC 
   );
   END COMPONENT;
   COMPONENT OR2
   PORT (
      A : IN     STD_LOGIC ;
      B : IN     STD_LOGIC ;
      F : OUT    STD_LOGIC 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : ALU USE ENTITY mp3lib.ALU;
   FOR ALL : AND2 USE ENTITY mp3lib.AND2;
   FOR ALL : AND3 USE ENTITY mp3lib.AND3;
   FOR ALL : AND4 USE ENTITY ece411.AND4;
   FOR ALL : COMP3 USE ENTITY ece411.COMP3;
   FOR ALL : EXE_DF_RIP USE ENTITY ece411.EXE_DF_RIP;
   FOR ALL : MEM_DF_RIP USE ENTITY ece411.MEM_DF_RIP;
   FOR ALL : MEM_DF_RIP1 USE ENTITY ece411.MEM_DF_RIP1;
   FOR ALL : MUX2_16 USE ENTITY mp3lib.MUX2_16;
   FOR ALL : NOT1 USE ENTITY mp3lib.NOT1;
   FOR ALL : OR2 USE ENTITY mp3lib.OR2;
   FOR ALL : PLUS2 USE ENTITY ece411.PLUS2;
   FOR ALL : RegMux2 USE ENTITY ece411.RegMux2;
   FOR ALL : SIGGEN111 USE ENTITY ece411.SIGGEN111;
   FOR ALL : Shifter USE ENTITY ece411.Shifter;
   FOR ALL : ctl_rip_execute USE ENTITY ece411.ctl_rip_execute;
   -- pragma synthesis_on


BEGIN
   -- Architecture concurrent statements
   -- HDL Embedded Text Block 1 eb1
   control_out <=control;
   SRCA_OUT <= SRCA;
   SRCB_OUT <= SRCB;
   ADJ11_OUT <= ADJ11;
   ADJ9_OUT <= ADJ9;
   TRAP8_OUT <= TRAP8;
   iPC_OUT <= PCplus2;
   JSR11_OUT <= JSR11;                           


   -- Instance port mappings.
   U_20 : AND4
      PORT MAP (
         A => A_EXE,
         B => EXEREG_WRITE,
         C => EXEMREAD,
         D => EXEMREAD,
         F => A_STALL
      );
   U_22 : AND4
      PORT MAP (
         A => B_EXE,
         B => EXEREG_WRITE,
         C => EXEMREAD,
         D => EXEMREAD,
         F => B_STALL
      );
   A_EXCMP : COMP3
      PORT MAP (
         A => SRCA,
         B => EXEDest,
         F => A_EXE
      );
   A_EXCMP1 : COMP3
      PORT MAP (
         A => DEST,
         B => EXEDest,
         F => DEST_EXE
      );
   A_EXCMP2 : COMP3
      PORT MAP (
         A => SRCA,
         B => MEMDest,
         F => A_MEMALU
      );
   A_EXCMP3 : COMP3
      PORT MAP (
         A => MEMDest,
         B => SRCB,
         F => B_MEMALU
      );
   A_EXCMP4 : COMP3
      PORT MAP (
         A => MEMDest,
         B => DEST,
         F => DEST_MEMALU
      );
   A_MEMCMP : COMP3
      PORT MAP (
         A => SRCA,
         B => MEMDest2,
         F => A_MEM
      );
   B_EXCMP : COMP3
      PORT MAP (
         A => EXEDest,
         B => SRCB,
         F => B_EXE
      );
   B_MEMCMP : COMP3
      PORT MAP (
         A => MEMDest2,
         B => SRCB,
         F => B_MEM
      );
   B_MEMCMP1 : COMP3
      PORT MAP (
         A => DEST,
         B => MEMDest,
         F => DEST_MEM
      );
   U_5 : EXE_DF_RIP
      PORT MAP (
         EXEControl   => EXEControl,
         EXEMREAD     => EXEMREAD,
         EXEREG_WRITE => EXEREG_WRITE
      );
   U_6 : MEM_DF_RIP
      PORT MAP (
         MEMControl   => MEMControl,
         MEMMREAD     => MEMMREAD,
         MEMREG_WRITE => MEMREG_WRITE
      );
   U_31 : MEM_DF_RIP1
      PORT MAP (
         MEMALU_CONT      => MEMALU_CONT,
         MEMALU_MREAD     => MEMALU_MREAD,
         MEMALU_REG_WRITE => MEMALU_REG_WRITE
      );
   U_19 : PLUS2
      PORT MAP (
         PCin    => iPC,
         PCplus2 => PCplus2
      );
   R7Mux : RegMux2
      PORT MAP (
         a      => DEST,
         b      => B,
         Sel    => F2,
         Muxout => DEST_OUT
      );
   val7Gen : SIGGEN111
      PORT MAP (
         B => B
      );
   U_0 : Shifter
      PORT MAP (
         SHFTOP => SHFTOP,
         SFTOUT => SFTOUT,
         ADJ4   => ADJ4,
         ADATA  => ADATA
      );
   execute_rip : ctl_rip_execute
      PORT MAP (
         control    => control,
         ALUOP      => ALUOP,
         ALUMuxSel  => ALUMuxSel,
         ALUAMuxSel => ALUAMuxSel,
         Shift      => Shift,
         ALUTrapSel => ALUTrapSel,
         STBMuxSel  => STBMuxSel,
         D_MWRITEH  => D_MWRITEH,
         D_MWRITEL  => D_MWRITEL,
         ISBranch   => ISBranch
      );
   exALU : ALU
      PORT MAP (
         A     => ALUAMuxout,
         ALUOP => ALUOP,
         B     => ALUMuxout,
         F     => ALUout
      );
   U_3 : AND2
      PORT MAP (
         A => ISBranch(0),
         B => ISBranch(1),
         F => A
      );
   U_10 : AND2
      PORT MAP (
         A => EXEFWDEN,
         B => MemFWDEn,
         F => STALL_internal
      );
   U_40 : AND2
      PORT MAP (
         A => F23,
         B => D_MWRITEH,
         F => F25
      );
   U_42 : AND2
      PORT MAP (
         A => STBMuxSel,
         B => ALUout(0),
         F => F26
      );
   U_44 : AND2
      PORT MAP (
         A => addr0_not,
         B => STBMuxSel,
         F => F28
      );
   U_46 : AND2
      PORT MAP (
         A => D_MWRITEL,
         B => F24,
         F => F29
      );
   U_7 : AND3
      PORT MAP (
         A => A_EXE,
         B => EXEREG_WRITE,
         C => EXENOTREAD,
         F => A_EXESEL
      );
   U_8 : AND3
      PORT MAP (
         A => B_EXE,
         B => EXEREG_WRITE,
         C => EXENOTREAD,
         F => B_EXESEL
      );
   U_11 : AND3
      PORT MAP (
         A => A_MEM,
         B => MEMREG_WRITE,
         C => MEMMREAD,
         F => A_MEMSEL
      );
   U_12 : AND3
      PORT MAP (
         A => B_MEM,
         B => MEMREG_WRITE,
         C => MEMMREAD,
         F => B_MEMSEL
      );
   U_26 : AND3
      PORT MAP (
         A => DEST_MEM,
         B => MEMREG_WRITE,
         C => MEMMREAD,
         F => STR_MEMFWD
      );
   U_27 : AND3
      PORT MAP (
         A => DEST_EXE,
         B => EXEREG_WRITE,
         C => EXENOTREAD,
         F => STR_EXEFWD
      );
   U_28 : AND3
      PORT MAP (
         A => A_MEMALU,
         B => MEMALU_REG_WRITE,
         C => MEMALU_NOT_READ,
         F => A_MEMALUSEL
      );
   U_29 : AND3
      PORT MAP (
         A => B_MEMALU,
         B => MEMALU_REG_WRITE,
         C => MEMALU_NOT_READ,
         F => B_MEMALUSEL
      );
   U_30 : AND3
      PORT MAP (
         A => DEST_MEMALU,
         B => MEMALUREGWRITE,
         C => MEMALU_NOT_READ,
         F => DEST_MEMALUSEL
      );
   ALUAMux : MUX2_16
      PORT MAP (
         A   => ADATA,
         B   => TRAPMuxOut,
         SEL => ALUAMuxSel,
         F   => ALUAMuxout
      );
   ALUMux : MUX2_16
      PORT MAP (
         A   => IMM5Muxout,
         B   => F,
         SEL => ALUMuxSel,
         F   => ALUMuxout
      );
   IMM5Mux : MUX2_16
      PORT MAP (
         A   => F5,
         B   => ADJ5,
         SEL => IMM5MuxSel,
         F   => IMM5Muxout
      );
   LEAMux : MUX2_16
      PORT MAP (
         A   => ADJ6out,
         B   => ADJ9,
         SEL => ALUAMuxSel,
         F   => F
      );
   PCoffMux : MUX2_16
      PORT MAP (
         A   => PCplus2,
         B   => TRAP8,
         SEL => ALUTrapSel,
         F   => TRAPMuxOut
      );
   U_2 : MUX2_16
      PORT MAP (
         A   => ALUout,
         B   => SFTOUT,
         SEL => Shift,
         F   => ALUResultout
      );
   U_4 : MUX2_16
      PORT MAP (
         A   => RegAOut,
         B   => EXEDATA,
         SEL => A_EXESEL,
         F   => F3
      );
   U_15 : MUX2_16
      PORT MAP (
         A   => F3,
         B   => A_MEM_MEMALU_out,
         SEL => A_ALUFWD_SEL,
         F   => ADATA
      );
   U_16 : MUX2_16
      PORT MAP (
         A   => RegBOut,
         B   => EXEDATA,
         SEL => B_EXESEL,
         F   => F6
      );
   U_17 : MUX2_16
      PORT MAP (
         A   => F6,
         B   => B_MEM_MEMALU,
         SEL => B_ALUFWD_SEL,
         F   => F5
      );
   U_24 : MUX2_16
      PORT MAP (
         A   => RegBOut,
         B   => EXEDATA,
         SEL => STR_EXEFWD,
         F   => F8
      );
   U_25 : MUX2_16
      PORT MAP (
         A   => F8,
         B   => DEST_MEM_MEMALU_OUT,
         SEL => F1,
         F   => RegBOut_OUT
      );
   U_33 : MUX2_16
      PORT MAP (
         A   => MEMALU,
         B   => MEMDATA,
         SEL => A_MEMSEL,
         F   => A_MEM_MEMALU_out
      );
   U_35 : MUX2_16
      PORT MAP (
         A   => MEMALU,
         B   => MEMDATA,
         SEL => B_EXESEL,
         F   => B_MEM_MEMALU
      );
   U_37 : MUX2_16
      PORT MAP (
         A   => MEMALU,
         B   => MEMDATA,
         SEL => STR_MEMFWD,
         F   => DEST_MEM_MEMALU_OUT
      );
   U_9 : NOT1
      PORT MAP (
         A => MEMFWD,
         F => MemFWDEn
      );
   U_13 : NOT1
      PORT MAP (
         A => EXEMREAD,
         F => EXENOTREAD
      );
   U_18 : NOT1
      PORT MAP (
         A => STALL_internal,
         F => INV_STALL
      );
   U_21 : NOT1
      PORT MAP (
         A => ALUAMuxSel,
         F => ALUASELNOT
      );
   U_32 : NOT1
      PORT MAP (
         A => MEMALU_MREAD,
         F => MEMALU_NOT_READ
      );
   U_39 : NOT1
      PORT MAP (
         A => STBMuxSel,
         F => F23
      );
   U_43 : NOT1
      PORT MAP (
         A => ALUout(0),
         F => addr0_not
      );
   U_47 : NOT1
      PORT MAP (
         A => STBMuxSel,
         F => F24
      );
   U_1 : OR2
      PORT MAP (
         A => A,
         B => ALUTrapSel,
         F => F2
      );
   U_14 : OR2
      PORT MAP (
         A => A_STALL,
         B => B_STALL,
         F => EXEFWDEN
      );
   U_23 : OR2
      PORT MAP (
         A => A_MEMSEL,
         B => B_MEMSEL,
         F => MEMFWD
      );
   U_34 : OR2
      PORT MAP (
         A => A_MEMALUSEL,
         B => A_MEMSEL,
         F => A_ALUFWD_SEL
      );
   U_36 : OR2
      PORT MAP (
         A => B_MEMALUSEL,
         B => B_MEMSEL,
         F => B_ALUFWD_SEL
      );
   U_38 : OR2
      PORT MAP (
         A => DEST_MEMALUSEL,
         B => STR_MEMFWD,
         F => F1
      );
   U_41 : OR2
      PORT MAP (
         A => F25,
         B => F26,
         F => writeHigh
      );
   U_45 : OR2
      PORT MAP (
         A => F28,
         B => F29,
         F => writeLow
      );

   -- Implicit buffered output assignments
   STALL <= STALL_internal;

END struct;
