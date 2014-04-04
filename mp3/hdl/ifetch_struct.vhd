-- VHDL Entity ece411.IFETCH.symbol
--
-- Created:
--          by - draguna1.ews (gelib-057-22.ews.illinois.edu)
--          at - 12:52:31 04/04/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY IFETCH IS
   PORT( 
      BrADDR    : IN     LC3B_WORD;
      Clk       : IN     std_logic;
      D_LOAD    : IN     STD_LOGIC;
      I_DATAIN  : IN     LC3b_word;
      I_MRESP_H : IN     std_logic;
      PCMuxSel  : IN     STD_LOGIC;
      RESET_L   : IN     std_logic;
      I_Load    : OUT    STD_LOGIC;
      I_MREAD_L : OUT    STD_LOGIC;
      Instr     : OUT    LC3b_word;
      iADDR     : OUT    LC3b_word;
      iPC       : OUT    LC3b_word
   );

-- Declarations

END IFETCH ;

--
-- VHDL Architecture ece411.IFETCH.struct
--
-- Created:
--          by - draguna1.ews (gelib-057-22.ews.illinois.edu)
--          at - 12:52:31 04/04/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

LIBRARY mp3lib;

ARCHITECTURE struct OF IFETCH IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL F        : STD_LOGIC;
   SIGNAL Output   : LC3b_word;
   SIGNAL PCMuxOut : LC3B_WORD;
   SIGNAL iPCbn    : LC3b_word;


   -- Component Declarations
   COMPONENT PLUS2
   PORT (
      PCin    : IN     LC3b_word ;
      PCplus2 : OUT    LC3b_word 
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
   COMPONENT AND2
   PORT (
      A : IN     STD_LOGIC ;
      B : IN     STD_LOGIC ;
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

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : AND2 USE ENTITY mp3lib.AND2;
   FOR ALL : MUX2_16 USE ENTITY mp3lib.MUX2_16;
   FOR ALL : PLUS2 USE ENTITY ece411.PLUS2;
   FOR ALL : Reg16 USE ENTITY ece411.Reg16;
   -- pragma synthesis_on


BEGIN
   -- Architecture concurrent statements
   -- HDL Embedded Text Block 1 eb1
   Instr <=I_DATAIN; 
   iPC <= Output;
   I_Load <= I_MRESP_H;
   iADDR <= Output;
   I_MREAD_L <= '0';


   -- Instance port mappings.
   PCPlus2 : PLUS2
      PORT MAP (
         PCin    => Output,
         PCplus2 => iPCbn
      );
   PC : Reg16
      PORT MAP (
         Input  => PCMuxOut,
         RESET  => RESET_L,
         clk    => Clk,
         load   => F,
         Output => Output
      );
   U_1 : AND2
      PORT MAP (
         A => D_LOAD,
         B => I_MRESP_H,
         F => F
      );
   PCMux : MUX2_16
      PORT MAP (
         A   => iPCbn,
         B   => BrADDR,
         SEL => PCMuxSel,
         F   => PCMuxOut
      );

END struct;
