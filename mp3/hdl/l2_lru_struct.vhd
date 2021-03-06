-- VHDL Entity ece411.L2_LRU.symbol
--
-- Created:
--          by - draguna1.ews (gelib-057-08.ews.illinois.edu)
--          at - 01:23:50 04/30/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY L2_LRU IS
   PORT( 
      Addr_Index : IN     LC3b_c_Index;
      Hit0       : IN     std_logic;
      Hit1       : IN     std_logic;
      Hit2       : IN     std_logic;
      Hit3       : IN     std_logic;
      Hit4       : IN     std_logic;
      Hit5       : IN     std_logic;
      Hit6       : IN     std_logic;
      Hit7       : IN     std_logic;
      LRUWrite   : IN     std_logic;
      RESET_L    : IN     std_logic;
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

END L2_LRU ;

--
-- VHDL Architecture ece411.L2_LRU.struct
--
-- Created:
--          by - draguna1.ews (gelib-057-08.ews.illinois.edu)
--          at - 01:23:50 04/30/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;


ARCHITECTURE struct OF L2_LRU IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL DataOut   : lc3b_tree;
   SIGNAL LRUDataIn : lc3b_tree;


   -- Component Declarations
   COMPONENT L2_LRU_DataArray
   PORT (
      AddrIndex : IN     lc3b_c_index ;
      DataIn    : IN     lc3b_tree ;
      Reset_L   : IN     std_logic ;
      write     : IN     std_logic ;
      DataOut   : OUT    lc3b_tree 
   );
   END COMPONENT;
   COMPONENT L2_LRU_Next_Val
   PORT (
      Hit0       : IN     std_logic ;
      Hit1       : IN     std_logic ;
      Hit2       : IN     std_logic ;
      Hit3       : IN     std_logic ;
      Hit4       : IN     std_logic ;
      Hit5       : IN     std_logic ;
      Hit6       : IN     std_logic ;
      Hit7       : IN     std_logic ;
      LRUDataOut : IN     lc3b_tree ;
      LRUDataIn  : OUT    lc3b_tree 
   );
   END COMPONENT;
   COMPONENT L2_LRU_PickLogic
   PORT (
      LRUDataOut : IN     lc3b_tree ;
      PickWay0   : OUT    std_logic ;
      PickWay1   : OUT    std_logic ;
      PickWay2   : OUT    std_logic ;
      PickWay3   : OUT    std_logic ;
      PickWay4   : OUT    std_logic ;
      PickWay5   : OUT    std_logic ;
      PickWay6   : OUT    std_logic ;
      PickWay7   : OUT    std_logic 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : L2_LRU_DataArray USE ENTITY ece411.L2_LRU_DataArray;
   FOR ALL : L2_LRU_Next_Val USE ENTITY ece411.L2_LRU_Next_Val;
   FOR ALL : L2_LRU_PickLogic USE ENTITY ece411.L2_LRU_PickLogic;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   U_1 : L2_LRU_DataArray
      PORT MAP (
         AddrIndex => Addr_Index,
         DataIn    => LRUDataIn,
         Reset_L   => RESET_L,
         write     => LRUWrite,
         DataOut   => DataOut
      );
   U_0 : L2_LRU_Next_Val
      PORT MAP (
         Hit0       => Hit0,
         Hit1       => Hit1,
         Hit2       => Hit2,
         Hit3       => Hit3,
         Hit4       => Hit4,
         Hit5       => Hit5,
         Hit6       => Hit6,
         Hit7       => Hit7,
         LRUDataOut => DataOut,
         LRUDataIn  => LRUDataIn
      );
   U_2 : L2_LRU_PickLogic
      PORT MAP (
         LRUDataOut => DataOut,
         PickWay0   => PickWay0,
         PickWay1   => PickWay1,
         PickWay2   => PickWay2,
         PickWay3   => PickWay3,
         PickWay4   => PickWay4,
         PickWay5   => PickWay6,
         PickWay6   => PickWay5,
         PickWay7   => PickWay7
      );

END struct;
