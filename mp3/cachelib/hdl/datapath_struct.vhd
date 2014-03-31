-- VHDL Entity cachelib.Datapath.interface
--
-- Created:
--          by - freed2.ews (gelib-057-16.ews.illinois.edu)
--          at - 14:52:36 03/31/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY cachelib;
USE cachelib.LC3b_types.all;

ENTITY Datapath IS
   PORT( 
      ADJ6MuxSel     : IN     std_logic;
      ALUMuxSel      : IN     std_logic;
      ALUop          : IN     LC3b_aluop;
      ANDMuxSel      : IN     std_logic;
      BusMuxSel      : IN     std_logic;
      DATAIN         : IN     LC3b_word;
      DestMuxSel     : IN     std_logic;
      IndirectMuxSel : IN     std_logic;
      JMPMuxSel      : IN     std_logic;
      LEAMuxSel      : IN     std_logic;
      LoadIR         : IN     std_logic;
      LoadMAR        : IN     std_logic;
      LoadMDR        : IN     std_logic;
      LoadNZP        : IN     std_logic;
      LoadPC         : IN     std_logic;
      MARMuxSel      : IN     std_logic;
      MDRMuxSel      : IN     std_logic;
      PCMuxSel       : IN     LC3B_4MUX_SEL;
      PCStoreMuxSel  : IN     std_logic;
      RESET_L        : IN     std_logic;
      RFMuxSel       : IN     LC3B_4MUX_SEL;
      RegWrite       : IN     std_logic;
      STBMuxSel      : IN     std_logic;
      StoreSR        : IN     std_logic;
      TRAPMuxSel     : IN     std_logic;
      adj11sel       : IN     std_logic;
      clk            : IN     std_logic;
      ADDRESS        : OUT    LC3b_word;
      BIT0           : OUT    std_logic;
      CheckN         : OUT    std_logic;
      CheckP         : OUT    std_logic;
      CheckZ         : OUT    std_logic;
      DATAOUT        : OUT    LC3b_word;
      Opcode         : OUT    LC3B_OPCODE;
      n              : OUT    std_logic;
      p              : OUT    std_logic;
      z              : OUT    std_logic
   );

-- Declarations

END Datapath ;

--
-- VHDL Architecture cachelib.Datapath.struct
--
-- Created:
--          by - freed2.ews (gelib-057-16.ews.illinois.edu)
--          at - 14:52:37 03/31/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY cachelib;
USE cachelib.LC3b_types.all;


ARCHITECTURE struct OF Datapath IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL ADJ11Muxout    : LC3b_word;
   SIGNAL ADJ11out       : LC3b_word;
   SIGNAL ADJ6MuxOut     : LC3b_word;
   SIGNAL ADJ6NoShiftOut : LC3b_word;
   SIGNAL ADJ6out        : LC3b_word;
   SIGNAL ADJ7out        : LC3B_WORD;
   SIGNAL ADJ9out        : LC3b_word;
   SIGNAL ALUMuxout      : LC3b_word;
   SIGNAL ALUout         : LC3b_word;
   SIGNAL ALUoutEven     : LC3b_word;
   SIGNAL BIT11          : std_logic;
   SIGNAL BIT5           : std_logic;
   SIGNAL BRaddout       : LC3b_word;
   SIGNAL BYTEMuxout     : LC3b_word;
   SIGNAL BusMuxOut      : LC3b_word;
   SIGNAL DestMuxout     : LC3B_REG;
   SIGNAL GenCCout       : LC3b_cc;
   SIGNAL HIGH           : LC3b_word;
   SIGNAL IMMD11Sel      : std_logic;
   SIGNAL IMMD7Sel       : std_logic;
   SIGNAL IMMDMuxout     : LC3B_WORD;
   SIGNAL IndirectMuxOut : LC3b_word;
   SIGNAL JMPMuxOut      : LC3b_word;
   SIGNAL JSRADDout      : LC3b_word;
   SIGNAL LOW            : LC3b_word;
   SIGNAL MARMuxout      : LC3b_word;
   SIGNAL MDRMuxout      : LC3b_word;
   SIGNAL MDRout         : LC3b_word;
   SIGNAL PC2out         : lc3b_word;
   SIGNAL PCMuxout       : LC3b_word;
   SIGNAL PCStoreMuxout  : LC3b_word;
   SIGNAL PCout          : LC3b_word;
   SIGNAL R7             : LC3B_REG;
   SIGNAL REALRFMuxOut   : LC3b_word;
   SIGNAL RFAout         : LC3b_word;
   SIGNAL RFBout         : LC3b_word;
   SIGNAL RFMuxout       : LC3b_word;
   SIGNAL SFTOUT         : LC3b_word;
   SIGNAL SHFTOP         : LC3B_SHFTOP;
   SIGNAL STBADJout      : LC3b_word;
   SIGNAL STBMuxOut      : LC3b_word;
   SIGNAL SrcA           : LC3b_reg;
   SIGNAL SrcB           : LC3b_reg;
   SIGNAL StoreMuxout    : LC3b_reg;
   SIGNAL TRAPMUXOUT     : LC3b_word;
   SIGNAL TRAPzextout    : LC3b_word;
   SIGNAL dest           : LC3b_reg;
   SIGNAL imm4           : LC3B_NIBBLE;
   SIGNAL imm5           : LC3B_IMM5;
   SIGNAL index6         : LC3b_index6;
   SIGNAL offset11       : LC3B_OFFSET11;
   SIGNAL offset9        : LC3b_offset9;
   SIGNAL trapvect8      : LC3B_TRAPVECT8;

   -- Implicit buffer signal declarations
   SIGNAL ADDRESS_internal : LC3b_word;
   SIGNAL BIT0_internal    : std_logic;


   -- Component Declarations
   COMPONENT ADJ11
   PORT (
      ADJ11out : OUT    LC3b_word ;
      clk      : IN     std_logic ;
      offset11 : IN     LC3B_OFFSET11 
   );
   END COMPONENT;
   COMPONENT ADJ6
   PORT (
      clk     : IN     std_logic ;
      index6  : IN     LC3b_index6 ;
      ADJ6out : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT ADJ6NoShift
   PORT (
      clk            : IN     std_logic ;
      index6         : IN     LC3b_index6 ;
      ADJ6NoShiftOut : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT ADJ7
   PORT (
      clk     : IN     std_logic ;
      ADJ7out : OUT    LC3B_WORD ;
      imm5    : IN     LC3B_IMM5 
   );
   END COMPONENT;
   COMPONENT ADJ9
   PORT (
      clk     : IN     std_logic ;
      offset9 : IN     LC3b_offset9 ;
      ADJ9out : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT ALU
   PORT (
      ADJ11Muxout : IN     LC3b_word ;
      ALUMuxout   : IN     LC3b_word ;
      ALUop       : IN     LC3b_aluop ;
      clk         : IN     std_logic ;
      ALUout      : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT AND2
   PORT (
      A : IN     std_logic ;
      B : IN     std_logic ;
      F : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT BRadd
   PORT (
      ADJ9out  : IN     LC3b_word ;
      PCout    : IN     LC3b_word ;
      clk      : IN     std_logic ;
      BRaddout : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT Bit0RIP
   PORT (
      clk     : IN     std_logic ;
      BIT0    : OUT    std_logic ;
      ADDRESS : IN     LC3b_word 
   );
   END COMPONENT;
   COMPONENT GenCC
   PORT (
      RFMuxout : IN     LC3b_word ;
      clk      : IN     std_logic ;
      GenCCout : OUT    LC3b_cc 
   );
   END COMPONENT;
   COMPONENT IR
   PORT (
      LoadIR    : IN     std_logic ;
      MDRout    : IN     LC3b_word ;
      clk       : IN     std_logic ;
      Opcode    : OUT    LC3B_OPCODE ;
      SrcA      : OUT    LC3b_reg ;
      SrcB      : OUT    LC3b_reg ;
      dest      : OUT    LC3b_reg ;
      index6    : OUT    LC3b_index6 ;
      imm5      : OUT    LC3B_IMM5 ;
      imm4      : OUT    LC3B_NIBBLE ;
      offset9   : OUT    LC3b_offset9 ;
      offset11  : OUT    LC3B_OFFSET11 ;
      BIT11     : OUT    std_logic ;
      trapvect8 : OUT    LC3B_TRAPVECT8 ;
      SHFTOP    : OUT    LC3B_SHFTOP ;
      BIT5      : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT JSRADD
   PORT (
      clk       : IN     std_logic ;
      ADJ11out  : IN     LC3b_word ;
      JSRADDout : OUT    LC3b_word ;
      PCout     : IN     LC3b_word 
   );
   END COMPONENT;
   COMPONENT MakeEven
   PORT (
      clk        : IN     std_logic ;
      ALUoutEven : OUT    LC3b_word ;
      BusMuxOut  : IN     LC3b_word 
   );
   END COMPONENT;
   COMPONENT NZP
   PORT (
      GenCCout : IN     LC3b_cc ;
      LoadNZP  : IN     std_logic ;
      clk      : IN     std_logic ;
      n        : OUT    std_logic ;
      p        : OUT    std_logic ;
      z        : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT NZPsplit
   PORT (
      clk    : IN     std_logic ;
      dest   : IN     LC3b_reg ;
      CheckN : OUT    std_logic ;
      CheckP : OUT    std_logic ;
      CheckZ : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT Plus2
   PORT (
      PCout  : IN     LC3b_word ;
      clk    : IN     std_logic ;
      PC2out : OUT    lc3b_word 
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
   COMPONENT RegFile
   PORT (
      RESET_L       : IN     std_logic ;
      PCStoreMuxout : IN     LC3b_word ;
      RegWrite      : IN     std_logic ;
      SrcB          : IN     LC3b_reg ;
      StoreMuxout   : IN     LC3b_reg ;
      clk           : IN     std_logic ;
      RFBout        : OUT    LC3b_word ;
      DestMuxout    : IN     LC3B_REG ;
      RFAout        : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT RegMux2
   PORT (
      dest       : IN     LC3B_REG ;
      R7         : IN     LC3B_REG ;
      DestMuxSel : IN     std_logic ;
      DestMuxout : OUT    LC3B_REG 
   );
   END COMPONENT;
   COMPONENT STBADJ2
   PORT (
      BusMuxOut : IN     LC3b_word ;
      clk       : IN     std_logic ;
      STBADJout : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT ShifterUnit
   PORT (
      clk         : IN     std_logic ;
      SHFTOP      : IN     LC3B_SHFTOP ;
      SFTOUT      : OUT    LC3b_word ;
      imm4        : IN     LC3B_NIBBLE ;
      ADJ11Muxout : IN     LC3b_word 
   );
   END COMPONENT;
   COMPONENT StoreMux
   PORT (
      SrcA        : IN     LC3b_reg ;
      StoreSR     : IN     std_logic ;
      clk         : IN     std_logic ;
      dest        : IN     LC3b_reg ;
      StoreMuxout : OUT    LC3b_reg 
   );
   END COMPONENT;
   COMPONENT TRAPZEXT
   PORT (
      clk         : IN     std_logic ;
      trapvect8   : IN     LC3B_TRAPVECT8 ;
      TRAPzextout : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT WordMux2
   PORT (
      A   : IN     LC3b_word ;
      B   : IN     LC3b_word ;
      Sel : IN     std_logic ;
      F   : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT WordMux4
   PORT (
      A   : IN     LC3b_word;
      B   : IN     LC3b_word;
      C   : IN     LC3b_word;
      Sel : IN     LC3B_4MUX_SEL;
      F   : OUT    LC3b_word
   );
   END COMPONENT;
   COMPONENT ZEXT
   PORT (
      MDRout : IN     LC3b_word ;
      clk    : IN     std_logic ;
      HIGH   : OUT    LC3b_word ;
      LOW    : OUT    LC3b_word 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : ADJ11 USE ENTITY cachelib.ADJ11;
   FOR ALL : ADJ6 USE ENTITY cachelib.ADJ6;
   FOR ALL : ADJ6NoShift USE ENTITY cachelib.ADJ6NoShift;
   FOR ALL : ADJ7 USE ENTITY cachelib.ADJ7;
   FOR ALL : ADJ9 USE ENTITY cachelib.ADJ9;
   FOR ALL : ALU USE ENTITY cachelib.ALU;
   FOR ALL : AND2 USE ENTITY cachelib.AND2;
   FOR ALL : BRadd USE ENTITY cachelib.BRadd;
   FOR ALL : Bit0RIP USE ENTITY cachelib.Bit0RIP;
   FOR ALL : GenCC USE ENTITY cachelib.GenCC;
   FOR ALL : IR USE ENTITY cachelib.IR;
   FOR ALL : JSRADD USE ENTITY cachelib.JSRADD;
   FOR ALL : MakeEven USE ENTITY cachelib.MakeEven;
   FOR ALL : NZP USE ENTITY cachelib.NZP;
   FOR ALL : NZPsplit USE ENTITY cachelib.NZPsplit;
   FOR ALL : Plus2 USE ENTITY cachelib.Plus2;
   FOR ALL : Reg16 USE ENTITY cachelib.Reg16;
   FOR ALL : RegFile USE ENTITY cachelib.RegFile;
   FOR ALL : RegMux2 USE ENTITY cachelib.RegMux2;
   FOR ALL : STBADJ2 USE ENTITY cachelib.STBADJ2;
   FOR ALL : ShifterUnit USE ENTITY cachelib.ShifterUnit;
   FOR ALL : StoreMux USE ENTITY cachelib.StoreMux;
   FOR ALL : TRAPZEXT USE ENTITY cachelib.TRAPZEXT;
   FOR ALL : WordMux2 USE ENTITY cachelib.WordMux2;
   FOR ALL : WordMux4 USE ENTITY cachelib.WordMux4;
   FOR ALL : ZEXT USE ENTITY cachelib.ZEXT;
   -- pragma synthesis_on


BEGIN
   -- Architecture concurrent statements
   -- HDL Embedded Text Block 1 eb1
   -- Dataout = MDRout
   DATAOUT <= MDRout;


   -- Instance port mappings.
   aADJ11 : ADJ11
      PORT MAP (
         ADJ11out => ADJ11out,
         clk      => clk,
         offset11 => offset11
      );
   aADJ6 : ADJ6
      PORT MAP (
         clk     => clk,
         index6  => index6,
         ADJ6out => ADJ6out
      );
   AJDNoshift : ADJ6NoShift
      PORT MAP (
         clk            => clk,
         index6         => index6,
         ADJ6NoShiftOut => ADJ6NoShiftOut
      );
   aADJ7 : ADJ7
      PORT MAP (
         clk     => clk,
         ADJ7out => ADJ7out,
         imm5    => imm5
      );
   aADJ9 : ADJ9
      PORT MAP (
         clk     => clk,
         offset9 => offset9,
         ADJ9out => ADJ9out
      );
   aALU : ALU
      PORT MAP (
         ADJ11Muxout => ADJ11Muxout,
         ALUMuxout   => ALUMuxout,
         ALUop       => ALUop,
         clk         => clk,
         ALUout      => ALUout
      );
   adj7check : AND2
      PORT MAP (
         A => ANDMuxSel,
         B => BIT5,
         F => IMMD7Sel
      );
   adj11check : AND2
      PORT MAP (
         A => BIT11,
         B => adj11sel,
         F => IMMD11Sel
      );
   aBRadd : BRadd
      PORT MAP (
         ADJ9out  => ADJ9out,
         PCout    => PCout,
         clk      => clk,
         BRaddout => BRaddout
      );
   DBRip : Bit0RIP
      PORT MAP (
         clk     => clk,
         BIT0    => BIT0_internal,
         ADDRESS => ADDRESS_internal
      );
   aGenCC : GenCC
      PORT MAP (
         RFMuxout => RFMuxout,
         clk      => clk,
         GenCCout => GenCCout
      );
   aIR : IR
      PORT MAP (
         LoadIR    => LoadIR,
         MDRout    => MDRout,
         clk       => clk,
         Opcode    => Opcode,
         SrcA      => SrcA,
         SrcB      => SrcB,
         dest      => dest,
         index6    => index6,
         imm5      => imm5,
         imm4      => imm4,
         offset9   => offset9,
         offset11  => offset11,
         BIT11     => BIT11,
         trapvect8 => trapvect8,
         SHFTOP    => SHFTOP,
         BIT5      => BIT5
      );
   aJSRAdder : JSRADD
      PORT MAP (
         clk       => clk,
         ADJ11out  => ADJ11out,
         JSRADDout => JSRADDout,
         PCout     => PCout
      );
   aEvenator : MakeEven
      PORT MAP (
         clk        => clk,
         ALUoutEven => ALUoutEven,
         BusMuxOut  => BusMuxOut
      );
   aNZP : NZP
      PORT MAP (
         GenCCout => GenCCout,
         LoadNZP  => LoadNZP,
         clk      => clk,
         n        => n,
         p        => p,
         z        => z
      );
   aNZPsplit : NZPsplit
      PORT MAP (
         clk    => clk,
         dest   => dest,
         CheckN => CheckN,
         CheckP => CheckP,
         CheckZ => CheckZ
      );
   aPlus2 : Plus2
      PORT MAP (
         PCout  => PCout,
         clk    => clk,
         PC2out => PC2out
      );
   MAR : Reg16
      PORT MAP (
         Input  => TRAPMUXOUT,
         RESET  => RESET_L,
         clk    => clk,
         load   => LoadMAR,
         Output => ADDRESS_internal
      );
   MDR : Reg16
      PORT MAP (
         Input  => MDRMuxout,
         RESET  => RESET_L,
         clk    => clk,
         load   => LoadMDR,
         Output => MDRout
      );
   PC : Reg16
      PORT MAP (
         Input  => PCMuxout,
         RESET  => RESET_L,
         clk    => clk,
         load   => LoadPC,
         Output => PCout
      );
   aRegFile : RegFile
      PORT MAP (
         RESET_L       => RESET_L,
         PCStoreMuxout => PCStoreMuxout,
         RegWrite      => RegWrite,
         SrcB          => SrcB,
         StoreMuxout   => StoreMuxout,
         clk           => clk,
         RFBout        => RFBout,
         DestMuxout    => DestMuxout,
         RFAout        => RFAout
      );
   StoreDest : RegMux2
      PORT MAP (
         dest       => dest,
         R7         => R7,
         DestMuxSel => DestMuxSel,
         DestMuxout => DestMuxout
      );
   aSTBadj : STBADJ2
      PORT MAP (
         BusMuxOut => BusMuxOut,
         clk       => clk,
         STBADJout => STBADJout
      );
   shift : ShifterUnit
      PORT MAP (
         clk         => clk,
         SHFTOP      => SHFTOP,
         SFTOUT      => SFTOUT,
         imm4        => imm4,
         ADJ11Muxout => ADJ11Muxout
      );
   aStoreMux : StoreMux
      PORT MAP (
         SrcA        => SrcA,
         StoreSR     => StoreSR,
         clk         => clk,
         dest        => dest,
         StoreMuxout => StoreMuxout
      );
   aTRAPZEXT : TRAPZEXT
      PORT MAP (
         clk         => clk,
         trapvect8   => trapvect8,
         TRAPzextout => TRAPzextout
      );
   ADJ6Mux : WordMux2
      PORT MAP (
         A   => ADJ6out,
         B   => ADJ6NoShiftOut,
         Sel => ADJ6MuxSel,
         F   => ADJ6MuxOut
      );
   ADJ7Mux : WordMux2
      PORT MAP (
         A   => RFBout,
         B   => ADJ7out,
         Sel => IMMD7Sel,
         F   => IMMDMuxout
      );
   ALUMux : WordMux2
      PORT MAP (
         A   => IMMDMuxout,
         B   => ADJ6MuxOut,
         Sel => ALUMuxSel,
         F   => ALUMuxout
      );
   Adj11mux : WordMux2
      PORT MAP (
         A   => RFAout,
         B   => JSRADDout,
         Sel => IMMD11Sel,
         F   => ADJ11Muxout
      );
   BYTEMUX : WordMux2
      PORT MAP (
         A   => LOW,
         B   => HIGH,
         Sel => BIT0_internal,
         F   => BYTEMuxout
      );
   BusMux : WordMux2
      PORT MAP (
         A   => SFTOUT,
         B   => ALUout,
         Sel => BusMuxSel,
         F   => BusMuxOut
      );
   INDIRECTMUX : WordMux2
      PORT MAP (
         A   => MARMuxout,
         B   => MDRout,
         Sel => IndirectMuxSel,
         F   => IndirectMuxOut
      );
   JMPMux : WordMux2
      PORT MAP (
         A   => PC2out,
         B   => ALUoutEven,
         Sel => JMPMuxSel,
         F   => JMPMuxOut
      );
   LEAMux : WordMux2
      PORT MAP (
         A   => REALRFMuxOut,
         B   => BRaddout,
         Sel => LEAMuxSel,
         F   => RFMuxout
      );
   MARMux : WordMux2
      PORT MAP (
         A   => PCout,
         B   => BusMuxOut,
         Sel => MARMuxSel,
         F   => MARMuxout
      );
   MDRMux : WordMux2
      PORT MAP (
         A   => DATAIN,
         B   => STBMuxOut,
         Sel => MDRMuxSel,
         F   => MDRMuxout
      );
   PCStoreMux : WordMux2
      PORT MAP (
         A   => RFMuxout,
         B   => PCout,
         Sel => PCStoreMuxSel,
         F   => PCStoreMuxout
      );
   STBMux : WordMux2
      PORT MAP (
         A   => BusMuxOut,
         B   => STBADJout,
         Sel => STBMuxSel,
         F   => STBMuxOut
      );
   TRAPMUX : WordMux2
      PORT MAP (
         A   => IndirectMuxOut,
         B   => TRAPzextout,
         Sel => TRAPMuxSel,
         F   => TRAPMUXOUT
      );
   PCMux : WordMux4
      PORT MAP (
         A   => JMPMuxOut,
         B   => BRaddout,
         C   => MDRout,
         Sel => PCMuxSel,
         F   => PCMuxout
      );
   RFMux : WordMux4
      PORT MAP (
         A   => MDRout,
         B   => BusMuxOut,
         C   => BYTEMuxout,
         Sel => RFMuxSel,
         F   => REALRFMuxOut
      );
   LDBZEXT : ZEXT
      PORT MAP (
         MDRout => MDRout,
         clk    => clk,
         HIGH   => HIGH,
         LOW    => LOW
      );

   -- Implicit buffered output assignments
   ADDRESS <= ADDRESS_internal;
   BIT0    <= BIT0_internal;

END struct;
