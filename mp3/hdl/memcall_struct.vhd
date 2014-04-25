-- VHDL Entity ece411.MEMCALL.symbol
--
-- Created:
--          by - styve1.ews (linux-a1.ews.illinois.edu)
--          at - 16:32:48 04/18/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY MEMCALL IS
   PORT( 
      ADJ11       : IN     lc3b_word;
      ADJ9        : IN     lc3b_word;
      ALUOut      : IN     lc3b_word;
      Control     : IN     Control_Word;
      DEST        : IN     LC3b_reg;
      D_DATAIN    : IN     LC3b_word;
      D_MRESP_H   : IN     std_logic;
      JSRSel      : IN     STD_LOGIC;
      RESET_L     : IN     std_logic;
      SRCA        : IN     lc3b_reg;
      SRCB        : IN     lc3b_reg;
      TRAP8       : IN     lc3b_word;
      WriteData   : IN     LC3b_word;
      clk         : IN     std_logic;
      iPC         : IN     lc3b_word;
      ALUOut_OUT  : OUT    lc3b_word;
      BRAddress   : OUT    LC3b_word;
      BRMuxSel    : OUT    STD_LOGIC;
      Control_OUT : OUT    CONTROL_WORD;
      D_ADDR      : OUT    LC3b_word;
      D_DATAOUT   : OUT    LC3b_word;
      D_Load      : OUT    STD_LOGIC;
      D_MREAD_L   : OUT    std_logic;
      D_MWRITEH_L : OUT    STD_LOGIC;
      D_MWRITEL_L : OUT    STD_LOGIC;
      DestOut     : OUT    LC3b_reg;
      SRCA_OUT    : OUT    lc3b_reg;
      SRCB_OUT    : OUT    lc3b_reg;
      iPC_Out     : OUT    LC3B_WORD
   );

-- Declarations

END MEMCALL ;

--
-- VHDL Architecture ece411.MEMCALL.struct
--
-- Created:
--          by - styve1.ews (linux-a1.ews.illinois.edu)
--          at - 16:32:49 04/18/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

LIBRARY mp3lib;

ARCHITECTURE struct OF MEMCALL IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL A             : STD_LOGIC;
   SIGNAL A1            : LC3B_WORD;
   SIGNAL A2            : STD_LOGIC;
   SIGNAL A3            : STD_LOGIC;
   SIGNAL B             : STD_LOGIC;
   SIGNAL B1            : LC3B_WORD;
   SIGNAL B2            : LC3B_WORD;
   SIGNAL BRAddressOut  : LC3b_word;
   SIGNAL BRCheck       : STD_LOGIC;
   SIGNAL C             : STD_LOGIC;
   SIGNAL CHECKN        : STD_LOGIC;
   SIGNAL CHECKNOut     : STD_LOGIC;
   SIGNAL CHECKP        : std_logic;
   SIGNAL CHECKPOut     : std_logic;
   SIGNAL CHECKZ        : std_logic;
   SIGNAL CHECKZOut     : std_logic;
   SIGNAL D_ADDRSEL_INV : std_logic;
   SIGNAL D_ADDRSel     : std_logic;
   SIGNAL D_MREAD       : std_logic;
   SIGNAL D_MWRITEH     : std_logic;
   SIGNAL D_MWRITEL     : std_logic;
   SIGNAL F             : LC3B_WORD;
   SIGNAL F1            : LC3B_WORD;
   SIGNAL F10           : STD_LOGIC;
   SIGNAL F11           : STD_LOGIC;
   SIGNAL F12           : STD_LOGIC;
   SIGNAL F13           : STD_LOGIC;
   SIGNAL F14           : STD_LOGIC;
   SIGNAL F15           : STD_LOGIC;
   SIGNAL F16           : STD_LOGIC;
   SIGNAL F17           : STD_LOGIC;
   SIGNAL F18           : STD_LOGIC;
   SIGNAL F19           : STD_LOGIC;
   SIGNAL F2            : STD_LOGIC;
   SIGNAL F20           : STD_LOGIC;
   SIGNAL F21           : STD_LOGIC;
   SIGNAL F22           : STD_LOGIC;
   SIGNAL F3            : LC3B_WORD;
   SIGNAL F4            : LC3B_WORD;
   SIGNAL F5            : LC3B_WORD;
   SIGNAL F6            : STD_LOGIC;
   SIGNAL F8            : STD_LOGIC;
   SIGNAL F9            : STD_LOGIC;
   SIGNAL GENCCOUT      : LC3B_CC;
   SIGNAL Indirect      : std_logic;
   SIGNAL IsBranch      : STD_LOGIC_VECTOR(1 DOWNTO 0);
   SIGNAL JMPAddress    : lc3b_word;
   SIGNAL LDBMuxSel     : std_logic;
   SIGNAL LDIND         : STD_LOGIC;
   SIGNAL LoadNZP       : std_logic;
   SIGNAL LoadSETCCSEL  : std_logic;
   SIGNAL Load_dMAR     : std_logic;
   SIGNAL Load_dMDR     : std_logic;
   SIGNAL N             : std_logic;
   SIGNAL P             : std_logic;
   SIGNAL Q             : LC3b_word;
   SIGNAL STBMuxOut     : LC3B_WORD;
   SIGNAL STBMuxSel     : STD_LOGIC;
   SIGNAL STIndirect    : std_logic;
   SIGNAL TRAPMuxSel    : std_logic;
   SIGNAL Z             : std_logic;

   -- Implicit buffer signal declarations
   SIGNAL D_ADDR_internal    : LC3b_word;
   SIGNAL D_DATAOUT_internal : LC3b_word;


   -- Component Declarations
   COMPONENT BRADDR
   PORT (
      ADJ9         : IN     lc3b_word ;
      iPC          : IN     lc3b_word ;
      BRAddressOut : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT ByteZext
   PORT (
      WriteData : IN     LC3b_word ;
      B2        : OUT    LC3B_WORD 
   );
   END COMPONENT;
   COMPONENT GenCC
   PORT (
      RFMUXOUT : IN     LC3B_WORD ;
      GENCCOUT : OUT    LC3B_CC 
   );
   END COMPONENT;
   COMPONENT HighSig
   PORT (
      C : OUT    STD_LOGIC 
   );
   END COMPONENT;
   COMPONENT JKFF
   PORT (
      J    : IN     std_logic ;
      K    : IN     std_logic ;
      clk  : IN     std_logic ;
      Q    : OUT    std_logic ;
      Qbar : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT JMPADDR
   PORT (
      ADJ11      : IN     lc3b_word ;
      iPC        : IN     lc3b_word ;
      JMPAddress : OUT    lc3b_word 
   );
   END COMPONENT;
   COMPONENT LDBDataRip
   PORT (
      D_DATAIN : IN     LC3b_word ;
      A1       : OUT    LC3B_WORD ;
      B1       : OUT    LC3B_WORD 
   );
   END COMPONENT;
   COMPONENT LowSig
   PORT (
      A : OUT    STD_LOGIC 
   );
   END COMPONENT;
   COMPONENT NZP
   PORT (
      GENCCOUT : IN     LC3B_CC ;
      CLK      : IN     std_logic ;
      LoadNZP  : IN     std_logic ;
      N        : OUT    std_logic ;
      Z        : OUT    std_logic ;
      P        : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT NZPSPLIT
   PORT (
      DEST   : IN     LC3B_REG ;
      CHECKN : OUT    STD_LOGIC ;
      CHECKZ : OUT    std_logic ;
      CHECKP : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT WORDDFF
   PORT (
      D    : IN     LC3b_word ;
      En   : IN     std_logic ;
      Q    : OUT    LC3b_word ;
      Qbar : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT ctr_rip_mem
   PORT (
      Control      : IN     Control_Word ;
      Load_dMAR    : OUT    std_logic ;
      Load_dMDR    : OUT    std_logic ;
      LoadSETCCSEL : OUT    std_logic ;
      LoadNZP      : OUT    std_logic ;
      IsBranch     : OUT    STD_LOGIC_VECTOR (1 DOWNTO 0);
      D_MREAD      : OUT    std_logic ;
      D_MWRITEH    : OUT    std_logic ;
      D_MWRITEL    : OUT    std_logic ;
      TRAPMuxSel   : OUT    std_logic ;
      LDBMuxSel    : OUT    std_logic ;
      STBMuxSel    : OUT    STD_LOGIC ;
      Indirect     : OUT    std_logic ;
      STIndirect   : OUT    std_logic 
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
   COMPONENT MUX4_1
   PORT (
      A   : IN     STD_LOGIC ;
      B   : IN     STD_LOGIC ;
      C   : IN     STD_LOGIC ;
      D   : IN     STD_LOGIC ;
      SEL : IN     STD_LOGIC_VECTOR (1 DOWNTO 0);
      F   : OUT    STD_LOGIC 
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
   COMPONENT OR3
   PORT (
      A : IN     STD_LOGIC ;
      B : IN     STD_LOGIC ;
      C : IN     STD_LOGIC ;
      F : OUT    STD_LOGIC 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : AND2 USE ENTITY mp3lib.AND2;
   FOR ALL : AND3 USE ENTITY mp3lib.AND3;
   FOR ALL : BRADDR USE ENTITY ece411.BRADDR;
   FOR ALL : ByteZext USE ENTITY ece411.ByteZext;
   FOR ALL : GenCC USE ENTITY ece411.GenCC;
   FOR ALL : HighSig USE ENTITY ece411.HighSig;
   FOR ALL : JKFF USE ENTITY ece411.JKFF;
   FOR ALL : JMPADDR USE ENTITY ece411.JMPADDR;
   FOR ALL : LDBDataRip USE ENTITY ece411.LDBDataRip;
   FOR ALL : LowSig USE ENTITY ece411.LowSig;
   FOR ALL : MUX2_16 USE ENTITY mp3lib.MUX2_16;
   FOR ALL : MUX4_1 USE ENTITY mp3lib.MUX4_1;
   FOR ALL : NOT1 USE ENTITY mp3lib.NOT1;
   FOR ALL : NZP USE ENTITY ece411.NZP;
   FOR ALL : NZPSPLIT USE ENTITY ece411.NZPSPLIT;
   FOR ALL : OR2 USE ENTITY mp3lib.OR2;
   FOR ALL : OR3 USE ENTITY mp3lib.OR3;
   FOR ALL : WORDDFF USE ENTITY ece411.WORDDFF;
   FOR ALL : ctr_rip_mem USE ENTITY ece411.ctr_rip_mem;
   -- pragma synthesis_on


BEGIN
   -- Architecture concurrent statements
   -- HDL Embedded Text Block 1 eb1
   DestOut <= DEST;
   SRCA_OUT <= SRCA;
   SRCB_OUT <= SRCB;
   ALUOut_OUT <= ALUOut;
   Control_OUT <= Control;
   
   iPC_Out   <=   iPC; 


   -- Instance port mappings.
   aBRADDR : BRADDR
      PORT MAP (
         ADJ9         => ADJ9,
         iPC          => iPC,
         BRAddressOut => BRAddressOut
      );
   STBRip : ByteZext
      PORT MAP (
         WriteData => WriteData,
         B2        => B2
      );
   aGENCC : GenCC
      PORT MAP (
         RFMUXOUT => F,
         GENCCOUT => GENCCOUT
      );
   aHighSig : HighSig
      PORT MAP (
         C => C
      );
   INDTOGGLE : JKFF
      PORT MAP (
         J    => F20,
         K    => D_MRESP_H,
         clk  => clk,
         Q    => D_ADDRSel,
         Qbar => D_ADDRSEL_INV
      );
   aJSRADDR : JMPADDR
      PORT MAP (
         ADJ11      => ADJ11,
         iPC        => iPC,
         JMPAddress => JMPAddress
      );
   LDBRip : LDBDataRip
      PORT MAP (
         D_DATAIN => D_DATAIN,
         A1       => A1,
         B1       => B1
      );
   aLowSig : LowSig
      PORT MAP (
         A => A
      );
   aNZP : NZP
      PORT MAP (
         GENCCOUT => GENCCOUT,
         CLK      => clk,
         LoadNZP  => LoadNZP,
         N        => N,
         Z        => Z,
         P        => P
      );
   aNZPSPLIT : NZPSPLIT
      PORT MAP (
         DEST   => DEST,
         CHECKN => CHECKN,
         CHECKZ => CHECKZ,
         CHECKP => CHECKP
      );
   DATAST : WORDDFF
      PORT MAP (
         D    => D_DATAIN,
         En   => F22,
         Q    => Q,
         Qbar => OPEN
      );
   MEMCALL_RIP : ctr_rip_mem
      PORT MAP (
         Control      => Control,
         Load_dMAR    => Load_dMAR,
         Load_dMDR    => Load_dMDR,
         LoadSETCCSEL => LoadSETCCSEL,
         LoadNZP      => LoadNZP,
         IsBranch     => IsBranch,
         D_MREAD      => D_MREAD,
         D_MWRITEH    => D_MWRITEH,
         D_MWRITEL    => D_MWRITEL,
         TRAPMuxSel   => TRAPMuxSel,
         LDBMuxSel    => LDBMuxSel,
         STBMuxSel    => STBMuxSel,
         Indirect     => Indirect,
         STIndirect   => STIndirect
      );
   DCHECK : AND2
      PORT MAP (
         A => D_MRESP_H,
         B => D_ADDRSEL_INV,
         F => F22
      );
   JKSEL : AND2
      PORT MAP (
         A => Indirect,
         B => D_MRESP_H,
         F => F20
      );
   JSR11and : AND2
      PORT MAP (
         A => IsBranch(0),
         B => JSRSel,
         F => F2
      );
   NCheckAnd : AND2
      PORT MAP (
         A => N,
         B => CHECKN,
         F => CHECKNOut
      );
   PCheckAnd : AND2
      PORT MAP (
         A => P,
         B => CHECKP,
         F => CHECKPOut
      );
   U_9 : AND2
      PORT MAP (
         A => D_ADDRSel,
         B => STIndirect,
         F => F10
      );
   U_13 : AND2
      PORT MAP (
         A => F11,
         B => D_MWRITEL,
         F => F9
      );
   U_16 : AND2
      PORT MAP (
         A => F13,
         B => D_MWRITEH,
         F => F14
      );
   U_17 : AND2
      PORT MAP (
         A => D_ADDRSel,
         B => STIndirect,
         F => F15
      );
   U_20 : AND2
      PORT MAP (
         A => A3,
         B => STIndirect,
         F => F18
      );
   U_21 : AND2
      PORT MAP (
         A => A2,
         B => D_MREAD,
         F => F17
      );
   U_25 : AND2
      PORT MAP (
         A => Indirect,
         B => D_ADDRSel,
         F => F21
      );
   ZCheckAnd : AND2
      PORT MAP (
         A => Z,
         B => CHECKZ,
         F => CHECKZOut
      );
   Indirect_Load : AND3
      PORT MAP (
         A => D_ADDRSel,
         B => D_MRESP_H,
         C => Indirect,
         F => LDIND
      );
   U_24 : AND3
      PORT MAP (
         A => F6,
         B => D_MRESP_H,
         C => Load_dMAR,
         F => F8
      );
   BRaddrMux : MUX2_16
      PORT MAP (
         A   => BRAddressOut,
         B   => F1,
         SEL => IsBranch(1),
         F   => F3
      );
   GenCCMux : MUX2_16
      PORT MAP (
         A   => ALUOut,
         B   => D_DATAOUT_internal,
         SEL => LoadSETCCSEL,
         F   => F
      );
   JSRAddrMux : MUX2_16
      PORT MAP (
         A   => ALUOut,
         B   => JMPAddress,
         SEL => F2,
         F   => F1
      );
   LDBMux : MUX2_16
      PORT MAP (
         A   => D_DATAIN,
         B   => F5,
         SEL => LDBMuxSel,
         F   => F4
      );
   LDBoff : MUX2_16
      PORT MAP (
         A   => A1,
         B   => B1,
         SEL => D_ADDR_internal(0),
         F   => F5
      );
   MemMuxSel : MUX2_16
      PORT MAP (
         A   => F4,
         B   => STBMuxOut,
         SEL => D_MWRITEL,
         F   => D_DATAOUT_internal
      );
   STBMux : MUX2_16
      PORT MAP (
         A   => WriteData,
         B   => B2,
         SEL => STBMuxSel,
         F   => STBMuxOut
      );
   TRAPMux : MUX2_16
      PORT MAP (
         A   => F3,
         B   => D_DATAIN,
         SEL => TRAPMuxSel,
         F   => BRAddress
      );
   U_2 : MUX2_16
      PORT MAP (
         A   => ALUOut,
         B   => Q,
         SEL => F21,
         F   => D_ADDR_internal
      );
   BRMuxSelMux : MUX4_1
      PORT MAP (
         A   => A,
         B   => BRCheck,
         C   => C,
         D   => C,
         SEL => IsBranch,
         F   => BRMuxSel
      );
   U_1 : NOT1
      PORT MAP (
         A => Load_dMAR,
         F => B
      );
   U_6 : NOT1
      PORT MAP (
         A => Indirect,
         F => F6
      );
   U_10 : NOT1
      PORT MAP (
         A => F19,
         F => D_MREAD_L
      );
   U_11 : NOT1
      PORT MAP (
         A => F16,
         F => D_MWRITEH_L
      );
   U_12 : NOT1
      PORT MAP (
         A => F12,
         F => D_MWRITEL_L
      );
   U_14 : NOT1
      PORT MAP (
         A => STIndirect,
         F => F11
      );
   U_15 : NOT1
      PORT MAP (
         A => STIndirect,
         F => F13
      );
   U_22 : NOT1
      PORT MAP (
         A => STIndirect,
         F => A2
      );
   U_23 : NOT1
      PORT MAP (
         A => D_ADDRSel,
         F => A3
      );
   U_0 : OR2
      PORT MAP (
         A => F9,
         B => F10,
         F => F12
      );
   U_18 : OR2
      PORT MAP (
         A => F14,
         B => F15,
         F => F16
      );
   U_19 : OR2
      PORT MAP (
         A => F17,
         B => F18,
         F => F19
      );
   U_7 : OR3
      PORT MAP (
         A => F8,
         B => B,
         C => LDIND,
         F => D_Load
      );
   U_8 : OR3
      PORT MAP (
         A => CHECKNOut,
         B => CHECKZOut,
         C => CHECKPOut,
         F => BRCheck
      );

   -- Implicit buffered output assignments
   D_ADDR    <= D_ADDR_internal;
   D_DATAOUT <= D_DATAOUT_internal;

END struct;
