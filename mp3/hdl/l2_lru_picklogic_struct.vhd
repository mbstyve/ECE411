-- VHDL Entity ece411.L2_LRU_PickLogic.symbol
--
-- Created:
--          by - draguna1.ews (gelib-057-08.ews.illinois.edu)
--          at - 01:23:17 04/30/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY L2_LRU_PickLogic IS
   PORT( 
      LRUDataOut : IN     lc3b_tree;
      PickWay0   : OUT    std_logic;
      PickWay1   : OUT    std_logic;
      PickWay2   : OUT    std_logic;
      PickWay3   : OUT    std_logic;
      PickWay4   : OUT    std_logic;
      PickWay5   : OUT    std_logic;
      PickWay6   : OUT    std_logic;
      PickWay7   : OUT    std_logic
   );

-- Declarations

END L2_LRU_PickLogic ;

--
-- VHDL Architecture ece411.L2_LRU_PickLogic.struct
--
-- Created:
--          by - draguna1.ews (gelib-057-08.ews.illinois.edu)
--          at - 01:23:18 04/30/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

LIBRARY mp3lib;

ARCHITECTURE struct OF L2_LRU_PickLogic IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL F        : STD_LOGIC;
   SIGNAL F1       : STD_LOGIC;
   SIGNAL F2       : STD_LOGIC;
   SIGNAL F3       : STD_LOGIC;
   SIGNAL F4       : STD_LOGIC;
   SIGNAL F5       : STD_LOGIC;
   SIGNAL dataout0 : std_logic;
   SIGNAL dataout1 : std_logic;
   SIGNAL dataout2 : std_logic;
   SIGNAL dataout3 : std_logic;
   SIGNAL dataout4 : std_logic;
   SIGNAL dataout5 : std_logic;
   SIGNAL dataout6 : std_logic;


   -- Component Declarations
   COMPONENT lc3b_treeSplitter
   PORT (
      LRUData  : IN     lc3b_tree ;
      dataout0 : OUT    std_logic ;
      dataout1 : OUT    std_logic ;
      dataout2 : OUT    std_logic ;
      dataout3 : OUT    std_logic ;
      dataout4 : OUT    std_logic ;
      dataout5 : OUT    std_logic ;
      dataout6 : OUT    std_logic 
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
   COMPONENT NOR2
   PORT (
      A : IN     STD_LOGIC ;
      B : IN     STD_LOGIC ;
      F : OUT    STD_LOGIC 
   );
   END COMPONENT;
   COMPONENT NOR3
   PORT (
      A : IN     STD_LOGIC ;
      B : IN     STD_LOGIC ;
      C : IN     STD_LOGIC ;
      F : OUT    STD_LOGIC 
   );
   END COMPONENT;
   COMPONENT NOT1
   PORT (
      A : IN     STD_LOGIC ;
      F : OUT    STD_LOGIC 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : AND2 USE ENTITY mp3lib.AND2;
   FOR ALL : AND3 USE ENTITY mp3lib.AND3;
   FOR ALL : NOR2 USE ENTITY mp3lib.NOR2;
   FOR ALL : NOR3 USE ENTITY mp3lib.NOR3;
   FOR ALL : NOT1 USE ENTITY mp3lib.NOT1;
   FOR ALL : lc3b_treeSplitter USE ENTITY ece411.lc3b_treeSplitter;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   U_0 : lc3b_treeSplitter
      PORT MAP (
         LRUData  => LRUDataOut,
         dataout0 => dataout0,
         dataout1 => dataout1,
         dataout2 => dataout2,
         dataout3 => dataout3,
         dataout4 => dataout4,
         dataout5 => dataout5,
         dataout6 => dataout6
      );
   U_2 : AND2
      PORT MAP (
         A => dataout0,
         B => F,
         F => PickWay1
      );
   U_6 : AND2
      PORT MAP (
         A => dataout4,
         B => F1,
         F => PickWay2
      );
   U_7 : AND2
      PORT MAP (
         A => dataout6,
         B => F5,
         F => PickWay4
      );
   U_3 : AND3
      PORT MAP (
         A => dataout4,
         B => dataout1,
         C => F2,
         F => PickWay3
      );
   U_8 : AND3
      PORT MAP (
         A => dataout6,
         B => dataout2,
         C => F3,
         F => PickWay5
      );
   U_12 : AND3
      PORT MAP (
         A => dataout6,
         B => dataout5,
         C => F4,
         F => PickWay6
      );
   U_13 : AND3
      PORT MAP (
         A => dataout6,
         B => dataout5,
         C => dataout3,
         F => PickWay7
      );
   U_4 : NOR2
      PORT MAP (
         A => dataout6,
         B => dataout4,
         F => F
      );
   U_5 : NOR2
      PORT MAP (
         A => dataout6,
         B => dataout1,
         F => F1
      );
   U_14 : NOR2
      PORT MAP (
         A => dataout5,
         B => dataout2,
         F => F5
      );
   U_1 : NOR3
      PORT MAP (
         A => dataout0,
         B => dataout4,
         C => dataout6,
         F => PickWay0
      );
   U_9 : NOT1
      PORT MAP (
         A => dataout6,
         F => F2
      );
   U_10 : NOT1
      PORT MAP (
         A => dataout5,
         F => F3
      );
   U_11 : NOT1
      PORT MAP (
         A => dataout3,
         F => F4
      );

END struct;