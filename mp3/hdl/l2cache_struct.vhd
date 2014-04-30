-- VHDL Entity ece411.L2Cache.symbol
--
-- Created:
--          by - draguna1.ews (gelib-057-08.ews.illinois.edu)
--          at - 01:50:03 04/30/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY L2Cache IS
   PORT( 
      L2_Address     : IN     lc3b_word;
      L2_MRead_L     : IN     std_logic;
      L2_MWrite_L    : IN     std_logic;
      L2_WriteData   : IN     LC3b_oword;
      PMResp_H       : IN     std_logic;
      P_DataFromRead : IN     LC3b_oword;
      RESET_L        : IN     std_logic;
      clk            : IN     std_logic;
      L2_MResp_H     : OUT    std_logic;
      L2_ReadData    : OUT    LC3b_oword;
      P_Address      : OUT    LC3b_word;
      P_DatatoWrite  : OUT    LC3b_oword;
      P_MRead_L      : OUT    std_logic;
      P_MWrite_L     : OUT    std_logic
   );

-- Declarations

END L2Cache ;

--
-- VHDL Architecture ece411.L2Cache.struct
--
-- Created:
--          by - draguna1.ews (gelib-057-08.ews.illinois.edu)
--          at - 01:50:03 04/30/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;


ARCHITECTURE struct OF L2Cache IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL CacheAccess    : std_logic;
   SIGNAL CheckHitState  : std_logic;
   SIGNAL Dirty          : std_logic;
   SIGNAL Hit            : std_logic;
   SIGNAL Miss           : std_logic;
   SIGNAL PMReadState    : std_logic;
   SIGNAL WaitHitState   : std_logic;
   SIGNAL WriteBackState : std_logic;
   SIGNAL toPMRead       : std_logic;
   SIGNAL toWB           : std_logic;


   -- Component Declarations
   COMPONENT L2Cache_Controller
   PORT (
      CacheAccess    : IN     std_logic ;
      Dirty          : IN     std_logic ;
      Hit            : IN     std_logic ;
      Miss           : IN     std_logic ;
      PMResp_H       : IN     std_logic ;
      clk            : IN     std_logic ;
      rst            : IN     std_logic ;
      toPMRead       : IN     std_logic ;
      toWB           : IN     std_logic ;
      CheckHitState  : OUT    std_logic ;
      PMReadState    : OUT    std_logic ;
      PMRead_L       : OUT    std_logic ;
      PMWrite_L      : OUT    std_logic ;
      WaitHitState   : OUT    std_logic ;
      WriteBackState : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT L2Cache_DataPath
   PORT (
      Address        : IN     lc3b_word ;
      CheckHitState  : IN     std_logic ;
      L2WriteData    : IN     LC3b_oword ;
      MRead_L        : IN     std_logic ;
      MWrite_L       : IN     std_logic ;
      PMReadData     : IN     LC3b_oword ;
      PMReadState    : IN     std_logic ;
      PMResp_H       : IN     std_logic ;
      RESET_L        : IN     std_logic ;
      WaitHitState   : IN     std_logic ;
      WriteBackState : IN     std_logic ;
      clk            : IN     std_logic ;
      CacheAccess    : OUT    std_logic ;
      Dirty          : OUT    std_logic ;
      Hit            : OUT    std_logic ;
      L2ReadData     : OUT    LC3b_oword ;
      MResp_H        : OUT    std_logic ;
      Miss           : OUT    std_logic ;
      PMAddress      : OUT    LC3b_word ;
      PMWriteData    : OUT    LC3b_oword ;
      toPMRead       : OUT    std_logic ;
      toWB           : OUT    std_logic 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : L2Cache_Controller USE ENTITY ece411.L2Cache_Controller;
   FOR ALL : L2Cache_DataPath USE ENTITY ece411.L2Cache_DataPath;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   U_0 : L2Cache_Controller
      PORT MAP (
         CacheAccess    => CacheAccess,
         Dirty          => Dirty,
         Hit            => Hit,
         Miss           => Miss,
         PMResp_H       => PMResp_H,
         clk            => clk,
         rst            => RESET_L,
         toPMRead       => toPMRead,
         toWB           => toWB,
         CheckHitState  => CheckHitState,
         PMReadState    => PMReadState,
         PMRead_L       => P_MRead_L,
         PMWrite_L      => P_MWrite_L,
         WaitHitState   => WaitHitState,
         WriteBackState => WriteBackState
      );
   U_1 : L2Cache_DataPath
      PORT MAP (
         Address        => L2_Address,
         CheckHitState  => CheckHitState,
         L2WriteData    => L2_WriteData,
         MRead_L        => L2_MRead_L,
         MWrite_L       => L2_MWrite_L,
         PMReadData     => P_DataFromRead,
         PMReadState    => PMReadState,
         PMResp_H       => PMResp_H,
         RESET_L        => RESET_L,
         WaitHitState   => WaitHitState,
         WriteBackState => WriteBackState,
         clk            => clk,
         CacheAccess    => CacheAccess,
         Dirty          => Dirty,
         Hit            => Hit,
         L2ReadData     => L2_ReadData,
         MResp_H        => L2_MResp_H,
         Miss           => Miss,
         PMAddress      => P_Address,
         PMWriteData    => P_DatatoWrite,
         toPMRead       => toPMRead,
         toWB           => toWB
      );

END struct;
