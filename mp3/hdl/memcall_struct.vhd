-- VHDL Entity ece411.MEMCALL.symbol
--
-- Created:
--          by - styve1.ews (gelib-057-26.ews.illinois.edu)
--          at - 22:56:30 03/20/14
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
      Clk         : IN     std_logic;
      Control     : IN     Control_Word;
      DEST        : IN     LC3b_reg;
      D_DATAIN    : IN     LC3b_word;
      D_MRESP_H   : IN     std_logic;
      RESET_L     : IN     std_logic;
      SRCA        : IN     lc3b_reg;
      SRCB        : IN     lc3b_reg;
      TRAP8       : IN     lc3b_word;
      WriteData   : IN     LC3b_word;
      iPC         : IN     lc3b_word;
      ALUOut_OUT  : OUT    lc3b_word;
      BRAddress   : OUT    LC3b_word;
      BRMuxSel    : OUT    STD_LOGIC;
      Control_OUT : OUT    CONTROL_WORD;
      D_ADDR      : OUT    LC3b_word;
      D_DATAOUT   : OUT    LC3b_word;
      D_MREAD_L   : OUT    std_logic;
      D_MWRITEH_L : OUT    STD_LOGIC;
      D_MWRITEL_L : OUT    STD_LOGIC;
      DestOut     : OUT    LC3b_reg;
      SRCA_OUT    : OUT    lc3b_reg;
      SRCB_OUT    : OUT    lc3b_reg
   );

-- Declarations

END MEMCALL ;

--
-- VHDL Architecture ece411.MEMCALL.struct
--
-- Created:
--          by - styve1.ews (gelib-057-26.ews.illinois.edu)
--          at - 22:56:30 03/20/14
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
   SIGNAL A            : STD_LOGIC;
   SIGNAL BRCheck      : STD_LOGIC;
   SIGNAL CHECKN       : STD_LOGIC;
   SIGNAL CHECKNOut    : STD_LOGIC;
   SIGNAL CHECKP       : std_logic;
   SIGNAL CHECKPOut    : std_logic;
   SIGNAL CHECKZ       : std_logic;
   SIGNAL CHECKZOut    : std_logic;
   SIGNAL D_MREAD      : std_logic;
   SIGNAL D_MWRITEH    : std_logic;
   SIGNAL D_MWRITEL    : std_logic;
   SIGNAL F            : LC3B_WORD;
   SIGNAL GENCCOUT     : LC3B_CC;
   SIGNAL ISBranch     : std_Logic;
   SIGNAL LoadNZP      : std_logic;
   SIGNAL LoadSETCCSEL : std_logic;
   SIGNAL Load_dMAR    : std_logic;
   SIGNAL Load_dMDR    : std_logic;
   SIGNAL N            : std_logic;
   SIGNAL P            : std_logic;
   SIGNAL Z            : std_logic;
   SIGNAL dMDRIN       : LC3B_WORD;

   -- Implicit buffer signal declarations
   SIGNAL D_DATAOUT_internal : LC3b_word;


   -- Component Declarations
   COMPONENT BRADDR
   PORT (
      ADJ9      : IN     lc3b_word ;
      iPC       : IN     lc3b_word ;
      BRAddress : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT GenCC
   PORT (
      RFMUXOUT : IN     LC3B_WORD ;
      GENCCOUT : OUT    LC3B_CC 
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
   COMPONENT Reg16
   PORT (
      Input  : IN     LC3b_word ;
      RESET  : IN     std_logic ;
      clk    : IN     std_logic ;
      load   : IN     std_logic ;
      Output : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT ctr_rip_mem
   PORT (
      Control      : IN     Control_Word ;
      Load_dMAR    : OUT    std_logic ;
      Load_dMDR    : OUT    std_logic ;
      LoadSETCCSEL : OUT    std_logic ;
      LoadNZP      : OUT    std_logic ;
      ISBranch     : OUT    std_Logic ;
      D_MREAD      : OUT    std_logic ;
      D_MWRITEH    : OUT    std_logic ;
      D_MWRITEL    : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT AND2
   PORT (
      A : IN     STD_LOGIC ;
      B : IN     STD_LOGIC ;
      F : OUT    STD_LOGIC 
   );
   END COMPONENT;
   COMPONENT MUX2_1
   PORT (
      A   : IN     STD_LOGIC ;
      B   : IN     STD_LOGIC ;
      SEL : IN     STD_LOGIC ;
      F   : OUT    STD_LOGIC 
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
   FOR ALL : BRADDR USE ENTITY ece411.BRADDR;
   FOR ALL : GenCC USE ENTITY ece411.GenCC;
   FOR ALL : LowSig USE ENTITY ece411.LowSig;
   FOR ALL : MUX2_1 USE ENTITY mp3lib.MUX2_1;
   FOR ALL : MUX2_16 USE ENTITY mp3lib.MUX2_16;
   FOR ALL : NOT1 USE ENTITY mp3lib.NOT1;
   FOR ALL : NZP USE ENTITY ece411.NZP;
   FOR ALL : NZPSPLIT USE ENTITY ece411.NZPSPLIT;
   FOR ALL : OR3 USE ENTITY mp3lib.OR3;
   FOR ALL : Reg16 USE ENTITY ece411.Reg16;
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
   D_ADDR <= ALUout;
   D_DATAOUT_internal <= dMDRIN;


   -- Instance port mappings.
   aBRADDR : BRADDR
      PORT MAP (
         ADJ9      => ADJ9,
         iPC       => iPC,
         BRAddress => BRAddress
      );
   U_1 : GenCC
      PORT MAP (
         RFMUXOUT => F,
         GENCCOUT => GENCCOUT
      );
   aLowSig : LowSig
      PORT MAP (
         A => A
      );
   U_2 : NZP
      PORT MAP (
         GENCCOUT => GENCCOUT,
         CLK      => Clk,
         LoadNZP  => LoadNZP,
         N        => N,
         Z        => Z,
         P        => P
      );
   U_3 : NZPSPLIT
      PORT MAP (
         DEST   => DEST,
         CHECKN => CHECKN,
         CHECKZ => CHECKZ,
         CHECKP => CHECKP
      );
   dMAR : Reg16
      PORT MAP (
         Input  => ALUOut,
         RESET  => RESET_L,
         clk    => Clk,
         load   => Load_dMAR,
         Output => OPEN
      );
   dMDR : Reg16
      PORT MAP (
         Input  => dMDRIN,
         RESET  => RESET_L,
         clk    => Clk,
         load   => Load_dMDR,
         Output => OPEN
      );
   U_0 : ctr_rip_mem
      PORT MAP (
         Control      => Control,
         Load_dMAR    => Load_dMAR,
         Load_dMDR    => Load_dMDR,
         LoadSETCCSEL => LoadSETCCSEL,
         LoadNZP      => LoadNZP,
         ISBranch     => ISBranch,
         D_MREAD      => D_MREAD,
         D_MWRITEH    => D_MWRITEH,
         D_MWRITEL    => D_MWRITEL
      );
   U_5 : AND2
      PORT MAP (
         A => N,
         B => CHECKN,
         F => CHECKNOut
      );
   U_6 : AND2
      PORT MAP (
         A => Z,
         B => CHECKZ,
         F => CHECKZOut
      );
   U_7 : AND2
      PORT MAP (
         A => P,
         B => CHECKP,
         F => CHECKPOut
      );
   U_9 : MUX2_1
      PORT MAP (
         A   => A,
         B   => BRCheck,
         SEL => ISBranch,
         F   => BRMuxSel
      );
   U_4 : MUX2_16
      PORT MAP (
         A   => ALUOut,
         B   => D_DATAOUT_internal,
         SEL => LoadSETCCSEL,
         F   => F
      );
   U_13 : MUX2_16
      PORT MAP (
         A   => D_DATAIN,
         B   => WriteData,
         SEL => D_MWRITEH,
         F   => dMDRIN
      );
   U_10 : NOT1
      PORT MAP (
         A => D_MREAD,
         F => D_MREAD_L
      );
   U_11 : NOT1
      PORT MAP (
         A => D_MWRITEH,
         F => D_MWRITEH_L
      );
   U_12 : NOT1
      PORT MAP (
         A => D_MWRITEL,
         F => D_MWRITEL_L
      );
   U_8 : OR3
      PORT MAP (
         A => CHECKNOut,
         B => CHECKZOut,
         C => CHECKPOut,
         F => BRCheck
      );

   -- Implicit buffered output assignments
   D_DATAOUT <= D_DATAOUT_internal;

END struct;
