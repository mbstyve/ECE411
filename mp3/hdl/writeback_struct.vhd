-- VHDL Entity ece411.WRITEBACK.symbol
--
-- Created:
--          by - freed2.ews (gelib-057-11.ews.illinois.edu)
--          at - 21:05:31 04/17/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY WRITEBACK IS
   PORT( 
      ALUout    : IN     LC3B_WORD;
      Control   : IN     Control_Word;
      DEST      : IN     Lc3b_reg;
      ReadData  : IN     LC3B_WORD;
      SRCA      : IN     LC3b_reg;
      SRCB      : IN     LC3b_reg;
      iPC       : IN     LC3B_WORD;
      DestOut   : OUT    Lc3b_reg;
      RegData   : OUT    LC3B_WORD;
      Reg_Write : OUT    std_logic;
      SRCAOut   : OUT    LC3b_reg;
      SRCBOut   : OUT    LC3b_reg
   );

-- Declarations

END WRITEBACK ;

--
-- VHDL Architecture ece411.WRITEBACK.struct
--
-- Created:
--          by - freed2.ews (gelib-057-11.ews.illinois.edu)
--          at - 21:05:32 04/17/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

LIBRARY mp3lib;

ARCHITECTURE struct OF WRITEBACK IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL ALUTRAPSel : std_logic;
   SIGNAL F          : LC3B_WORD;
   SIGNAL F1         : STD_LOGIC;
   SIGNAL F2         : STD_LOGIC;
   SIGNAL ISBranch   : STD_LOGIC_VECTOR(1 DOWNTO 0);
   SIGNAL RFMuxSel   : std_logic;
   SIGNAL sig0       : std_logic;


   -- Component Declarations
   COMPONENT ctl_rip_wb
   PORT (
      Control    : IN     Control_Word ;
      RFMuxSel   : OUT    std_logic ;
      Reg_Write  : OUT    std_logic ;
      ISBranch   : OUT    STD_LOGIC_VECTOR (1 DOWNTO 0);
      ALUTRAPSel : OUT    std_logic 
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
   COMPONENT OR2
   PORT (
      A : IN     STD_LOGIC ;
      B : IN     STD_LOGIC ;
      F : OUT    STD_LOGIC 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : AND2 USE ENTITY mp3lib.AND2;
   FOR ALL : MUX2_16 USE ENTITY mp3lib.MUX2_16;
   FOR ALL : OR2 USE ENTITY mp3lib.OR2;
   FOR ALL : ctl_rip_wb USE ENTITY ece411.ctl_rip_wb;
   -- pragma synthesis_on


BEGIN
   -- Architecture concurrent statements
   -- HDL Embedded Text Block 1 DestPass
   DestOut <= DEST;
   SRCAOut <= SRCA;
   SRCBOut <= SRCB;                                 


   -- Instance port mappings.
   U_1 : ctl_rip_wb
      PORT MAP (
         Control    => Control,
         RFMuxSel   => RFMuxSel,
         Reg_Write  => Reg_Write,
         ISBranch   => ISBranch,
         ALUTRAPSel => ALUTRAPSel
      );
   U_4 : AND2
      PORT MAP (
         A => ISBranch(1),
         B => ISBranch(0),
         F => F1
      );
   U_0 : MUX2_16
      PORT MAP (
         A   => ReadData,
         B   => F,
         SEL => RFMuxSel,
         F   => RegData
      );
   U_2 : MUX2_16
      PORT MAP (
         A   => ALUout,
         B   => iPC,
         SEL => F2,
         F   => F
      );
   U_3 : OR2
      PORT MAP (
         A => ALUTRAPSel,
         B => F1,
         F => F2
      );

END struct;
