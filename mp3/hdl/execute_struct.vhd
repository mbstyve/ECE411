-- VHDL Entity ece411.EXECUTE.symbol
--
-- Created:
--          by - styve1.ews (gelib-057-15.ews.illinois.edu)
--          at - 15:51:15 04/17/14
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
      MEMControl   : IN     Control_word;
      MEMDATA      : IN     LC3B_WORD;
      MEMDest      : IN     LC3B_REG;
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
      iPC_OUT      : OUT    lc3b_word
   );

-- Declarations

END EXECUTE ;

--
-- VHDL Architecture ece411.EXECUTE.struct
--
-- Created:
--          by - styve1.ews (gelib-057-15.ews.illinois.edu)
--          at - 15:51:15 04/17/14
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
   SIGNAL A            : STD_LOGIC;
   SIGNAL ALUAMuxSel   : std_logic;
   SIGNAL ALUAMuxout   : LC3B_WORD BUS;
   SIGNAL ALUMuxSel    : std_logic;
   SIGNAL ALUMuxout    : LC3B_WORD;
   SIGNAL ALUOP        : LC3B_ALUOP;
   SIGNAL ALUTrapSel   : std_logic;
   SIGNAL ALUout       : LC3B_WORD;
   SIGNAL A_EXE        : std_logic;
   SIGNAL A_EXESEL     : std_logic;
   SIGNAL A_MEM        : std_logic;
   SIGNAL A_MEMSEL     : STD_LOGIC;
   SIGNAL A_STALL      : STD_LOGIC;
   SIGNAL B            : LC3b_reg;
   SIGNAL B_EXE        : std_logic;
   SIGNAL B_EXESEL     : std_logic;
   SIGNAL B_MEM        : std_logic;
   SIGNAL B_MEMSEL     : STD_LOGIC;
   SIGNAL B_STALL      : STD_LOGIC;
   SIGNAL EXEMREAD     : STD_LOGIC;
   SIGNAL EXENOTREAD   : STD_LOGIC;
   SIGNAL EXEREG_WRITE : STD_LOGIC;
   SIGNAL F            : LC3B_WORD;
   SIGNAL F1           : LC3B_WORD;
   SIGNAL F2           : STD_LOGIC;
   SIGNAL F3           : LC3B_WORD;
   SIGNAL F4           : LC3B_WORD;
   SIGNAL F5           : LC3B_WORD;
   SIGNAL F6           : LC3B_WORD;
   SIGNAL IMM5Muxout   : LC3B_WORD;
   SIGNAL ISBranch     : std_logic_vector(1 DOWNTO 0);
   SIGNAL MEMMREAD     : STD_LOGIC;
   SIGNAL MEMREG_WRITE : STD_LOGIC;
   SIGNAL PCplus2      : LC3b_word;
   SIGNAL SFTOUT       : LC3b_word;
   SIGNAL Shift        : std_logic;

   -- Implicit buffer signal declarations
   SIGNAL STALL_internal : STD_LOGIC;


   -- Component Declarations
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
      SHFTOP  : IN     LC3B_SHFTOP ;
      SFTOUT  : OUT    LC3b_word ;
      RegAOut : IN     LC3b_word ;
      ADJ4    : IN     LC3B_WORD 
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
   FOR ALL : COMP3 USE ENTITY ece411.COMP3;
   FOR ALL : EXE_DF_RIP USE ENTITY ece411.EXE_DF_RIP;
   FOR ALL : MEM_DF_RIP USE ENTITY ece411.MEM_DF_RIP;
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
   DEST_OUT <= DEST;
   SRCA_OUT <= SRCA;
   SRCB_OUT <= SRCB;
   ADJ11_OUT <= ADJ11;
   ADJ9_OUT <= ADJ9;
   TRAP8_OUT <= TRAP8;
   iPC_OUT <= iPC;
   RegBOut_OUT <= RegBOut;                            


   -- Instance port mappings.
   A_EXCMP : COMP3
      PORT MAP (
         A => SRCA,
         B => EXEDest,
         F => A_EXE
      );
   A_MEMCMP : COMP3
      PORT MAP (
         A => SRCA,
         B => MEMDest,
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
         A => MEMDest,
         B => SRCB,
         F => B_MEM
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
         SHFTOP  => SHFTOP,
         SFTOUT  => SFTOUT,
         RegAOut => RegAOut,
         ADJ4    => ADJ4
      );
   execute_rip : ctl_rip_execute
      PORT MAP (
         control    => control,
         ALUOP      => ALUOP,
         ALUMuxSel  => ALUMuxSel,
         ALUAMuxSel => ALUAMuxSel,
         Shift      => Shift,
         ALUTrapSel => ALUTrapSel,
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
   U_9 : AND3
      PORT MAP (
         A => A_EXE,
         B => EXEREG_WRITE,
         C => EXEMREAD,
         F => A_STALL
      );
   U_10 : AND3
      PORT MAP (
         A => B_EXE,
         B => EXEREG_WRITE,
         C => EXEMREAD,
         F => B_STALL
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
   ALUAMux : MUX2_16
      PORT MAP (
         A   => F4,
         B   => PCplus2,
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
         B   => F1,
         SEL => ALUAMuxSel,
         F   => F
      );
   PCoffMux : MUX2_16
      PORT MAP (
         A   => ADJ9,
         B   => TRAP8,
         SEL => ALUTrapSel,
         F   => F1
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
         B   => MEMDATA,
         SEL => A_MEMSEL,
         F   => F4
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
         B   => MEMDATA,
         SEL => B_MEMSEL,
         F   => F5
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
         F => STALL_internal
      );

   -- Implicit buffered output assignments
   STALL <= STALL_internal;

END struct;
