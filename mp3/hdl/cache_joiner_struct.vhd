-- VHDL Entity ece411.CACHE_JOINER.symbol
--
-- Created:
--          by - freed2.ews (gelib-057-08.ews.illinois.edu)
--          at - 04:53:55 02/28/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY CACHE_JOINER IS
   PORT( 
      Cacheout   : IN     LC3B_OWORD;
      OFFSET     : IN     LC3B_C_OFFSET;
      StoreData  : IN     LC3B_WORD;
      WRITEH_L   : IN     std_logic;
      WRITEL_L   : IN     std_logic;
      toStoreOut : OUT    lc3b_oword
   );

-- Declarations

END CACHE_JOINER ;

--
-- VHDL Architecture ece411.CACHE_JOINER.struct
--
-- Created:
--          by - freed2.ews (gelib-057-08.ews.illinois.edu)
--          at - 04:53:56 02/28/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;


ARCHITECTURE struct OF CACHE_JOINER IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL ByteHIGHOUT   : LC3B_BYTE;
   SIGNAL ByteLOWOUT    : LC3B_BYTE;
   SIGNAL F             : LC3b_word;
   SIGNAL F1            : LC3b_word;
   SIGNAL F2            : LC3b_word;
   SIGNAL F3            : LC3b_word;
   SIGNAL F4            : LC3b_word;
   SIGNAL F5            : LC3b_word;
   SIGNAL F6            : LC3b_word;
   SIGNAL F7            : LC3b_word;
   SIGNAL FINALOUT      : LC3B_OWORD;
   SIGNAL HighByte      : LC3B_BYTE;
   SIGNAL LowByte       : LC3B_BYTE;
   SIGNAL MUX8OUT       : LC3B_WORD;
   SIGNAL Sel0Word      : std_logic;
   SIGNAL Sel1Word      : std_logic;
   SIGNAL Sel2Word      : std_logic;
   SIGNAL Sel3Word      : std_logic;
   SIGNAL Sel4Word      : std_logic;
   SIGNAL Sel5Word      : std_logic;
   SIGNAL Sel6Word      : std_logic;
   SIGNAL Sel7Word      : std_logic;
   SIGNAL StoreDataFull : LC3B_WORD;
   SIGNAL StoreDataH    : LC3B_BYTE;
   SIGNAL StoreDataL    : LC3B_BYTE;
   SIGNAL WORDOUT       : LC3B_WORD;
   SIGNAL WRITEH_H      : std_logic;
   SIGNAL WRITEL_H      : std_logic;


   -- Component Declarations
   COMPONENT ByteMux2
   PORT (
      A       : IN     LC3B_BYTE ;
      B       : IN     LC3B_BYTE ;
      SEL     : IN     STD_logic ;
      ByteOUT : OUT    LC3B_BYTE 
   );
   END COMPONENT;
   COMPONENT ByteSplitter
   PORT (
      MUX8OUT  : IN     LC3B_WORD ;
      HighByte : OUT    LC3B_BYTE ;
      LowByte  : OUT    LC3B_BYTE 
   );
   END COMPONENT;
   COMPONENT Decode8
   PORT (
      A    : IN     LC3B_C_offset ;
      Out0 : OUT    std_logic ;
      Out1 : OUT    std_logic ;
      Out2 : OUT    std_logic ;
      Out3 : OUT    std_logic ;
      Out4 : OUT    std_logic ;
      Out5 : OUT    std_logic ;
      Out6 : OUT    std_logic ;
      Out7 : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT InputSplitter
   PORT (
      StoreData     : IN     LC3B_WORD ;
      StoreDataH    : OUT    LC3B_BYTE ;
      StoreDataL    : OUT    LC3B_BYTE ;
      StoreDataFull : OUT    LC3B_WORD 
   );
   END COMPONENT;
   COMPONENT OWORD_COMBINE
   PORT (
      F        : IN     LC3b_word ;
      F1       : IN     LC3b_word ;
      F2       : IN     LC3b_word ;
      F3       : IN     LC3b_word ;
      F4       : IN     LC3b_word ;
      F5       : IN     LC3b_word ;
      F6       : IN     LC3b_word ;
      F7       : IN     LC3b_word ;
      FINALOUT : OUT    LC3B_OWORD 
   );
   END COMPONENT;
   COMPONENT TwoByteConc
   PORT (
      ByteHIGHOUT : IN     LC3B_BYTE ;
      ByteLOWOUT  : IN     LC3B_BYTE ;
      WORDOUT     : OUT    LC3B_WORD 
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
   COMPONENT WordMux8
   PORT (
      A000    : IN     LC3B_WORD ;
      B001    : IN     LC3B_WORD ;
      C010    : IN     LC3B_WORD ;
      D011    : IN     LC3B_WORD ;
      E100    : IN     LC3B_WORD ;
      F101    : IN     LC3B_WORD ;
      G110    : IN     LC3B_WORD ;
      H111    : IN     LC3B_WORD ;
      SEL8    : IN     LC3B_8MUX_SEL ;
      MUX8OUT : OUT    LC3B_WORD 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : ByteMux2 USE ENTITY ece411.ByteMux2;
   FOR ALL : ByteSplitter USE ENTITY ece411.ByteSplitter;
   FOR ALL : Decode8 USE ENTITY ece411.Decode8;
   FOR ALL : InputSplitter USE ENTITY ece411.InputSplitter;
   FOR ALL : OWORD_COMBINE USE ENTITY ece411.OWORD_COMBINE;
   FOR ALL : TwoByteConc USE ENTITY ece411.TwoByteConc;
   FOR ALL : WordMux2 USE ENTITY ece411.WordMux2;
   FOR ALL : WordMux8 USE ENTITY ece411.WordMux8;
   -- pragma synthesis_on


BEGIN
   -- Architecture concurrent statements
   -- HDL Embedded Text Block 1 eb1
   toStoreOut <= FINALOUT;


   -- ModuleWare code(v1.9) for instance 'HINV' of 'inv'
   WRITEH_H <= NOT(WRITEH_L);

   -- ModuleWare code(v1.9) for instance 'LINV' of 'inv'
   WRITEL_H <= NOT(WRITEL_L);

   -- Instance port mappings.
   HIGHMUX : ByteMux2
      PORT MAP (
         A       => HighByte,
         B       => StoreDataH,
         SEL     => WRITEH_H,
         ByteOUT => ByteHIGHOUT
      );
   LOWMUX : ByteMux2
      PORT MAP (
         A       => LowByte,
         B       => StoreDataL,
         SEL     => WRITEL_H,
         ByteOUT => ByteLOWOUT
      );
   BSplit : ByteSplitter
      PORT MAP (
         MUX8OUT  => MUX8OUT,
         HighByte => HighByte,
         LowByte  => LowByte
      );
   StoreWordSel : Decode8
      PORT MAP (
         A    => OFFSET,
         Out0 => Sel0Word,
         Out1 => Sel1Word,
         Out2 => Sel2Word,
         Out3 => Sel3Word,
         Out4 => Sel4Word,
         Out5 => Sel5Word,
         Out6 => Sel6Word,
         Out7 => Sel7Word
      );
   InitSplit : InputSplitter
      PORT MAP (
         StoreData     => StoreData,
         StoreDataH    => StoreDataH,
         StoreDataL    => StoreDataL,
         StoreDataFull => StoreDataFull
      );
   FinalCombine : OWORD_COMBINE
      PORT MAP (
         F        => F,
         F1       => F1,
         F2       => F2,
         F3       => F3,
         F4       => F4,
         F5       => F5,
         F6       => F6,
         F7       => F7,
         FINALOUT => FINALOUT
      );
   BYTECOMBINE : TwoByteConc
      PORT MAP (
         ByteHIGHOUT => ByteHIGHOUT,
         ByteLOWOUT  => ByteLOWOUT,
         WORDOUT     => WORDOUT
      );
   Word0Mux : WordMux2
      PORT MAP (
         A   => Cacheout(15 downto 0),
         B   => WORDOUT,
         Sel => Sel0Word,
         F   => F
      );
   Word1Mux : WordMux2
      PORT MAP (
         A   => Cacheout(31 downto 16),
         B   => WORDOUT,
         Sel => Sel1Word,
         F   => F1
      );
   Word2Mux : WordMux2
      PORT MAP (
         A   => Cacheout(47 downto 32),
         B   => WORDOUT,
         Sel => Sel2Word,
         F   => F2
      );
   Word3Mux : WordMux2
      PORT MAP (
         A   => Cacheout(63 downto 48),
         B   => WORDOUT,
         Sel => Sel3Word,
         F   => F3
      );
   Word4Mux : WordMux2
      PORT MAP (
         A   => Cacheout(79 downto 64),
         B   => WORDOUT,
         Sel => Sel4Word,
         F   => F4
      );
   Word5Mux : WordMux2
      PORT MAP (
         A   => Cacheout(95 downto 80),
         B   => WORDOUT,
         Sel => Sel5Word,
         F   => F5
      );
   Word6Mux : WordMux2
      PORT MAP (
         A   => Cacheout(111 downto 96),
         B   => WORDOUT,
         Sel => Sel6Word,
         F   => F6
      );
   Word7Mux : WordMux2
      PORT MAP (
         A   => Cacheout(127 downto 112),
         B   => WORDOUT,
         Sel => Sel7Word,
         F   => F7
      );
   Splitter : WordMux8
      PORT MAP (
         A000    => Cacheout(15 downto 0),
         B001    => Cacheout(31 downto 16),
         C010    => Cacheout(47 downto 32),
         D011    => Cacheout(63 downto 48),
         E100    => Cacheout(79 downto 64),
         F101    => Cacheout(95 downto 80),
         G110    => Cacheout(111 downto 96),
         H111    => Cacheout(127 downto 112),
         SEL8    => OFFSET,
         MUX8OUT => MUX8OUT
      );

END struct;
