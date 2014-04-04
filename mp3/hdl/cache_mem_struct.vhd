-- VHDL Entity ece411.cache_mem.symbol
--
-- Created:
--          by - freed2.ews (gelib-057-15.ews.illinois.edu)
--          at - 00:23:28 04/04/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY cache_mem IS
   PORT( 
      D_ADDRESS   : IN     LC3b_word;
      D_DATAOUT   : IN     LC3b_word;
      D_MREAD_L   : IN     std_logic;
      D_MWRITEH_L : IN     std_logic;
      D_MWRITEL_L : IN     std_logic;
      I_ADDRESS   : IN     LC3b_word;
      I_MREAD_L   : IN     std_logic;
      RESET_L     : IN     std_logic;
      clk         : IN     std_logic;
      DDATAIN     : OUT    LC3b_word;
      DMRESP_H    : OUT    std_logic;
      IDATAIN     : OUT    LC3b_word;
      IMRESP_H    : OUT    std_logic
   );

-- Declarations

END cache_mem ;

--
-- VHDL Architecture ece411.cache_mem.struct
--
-- Created:
--          by - freed2.ews (gelib-057-15.ews.illinois.edu)
--          at - 00:23:28 04/04/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;


ARCHITECTURE struct OF cache_mem IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL D_DATAIN     : LC3B_OWORD;
   SIGNAL D_MRESP_H    : STD_LOGIC;
   SIGNAL I_DATAIN     : LC3B_OWORD;
   SIGNAL I_DATAOUT    : LC3b_word;
   SIGNAL I_MRESP_H    : STD_LOGIC;
   SIGNAL MWRITEH_L    : std_logic;
   SIGNAL MWRITEL_L    : std_logic;
   SIGNAL MemReadCall  : std_logic;
   SIGNAL MemReadCall1 : std_logic;
   SIGNAL c_write      : std_logic;
   SIGNAL c_write1     : std_logic;
   SIGNAL cresp_out    : std_logic;
   SIGNAL cresp_out1   : std_logic;
   SIGNAL cwaitout     : std_logic;
   SIGNAL cwaitout1    : std_logic;
   SIGNAL ddata        : std_logic;
   SIGNAL ddata1       : std_logic;
   SIGNAL hitmissout   : std_logic;
   SIGNAL hitmissout1  : std_logic;
   SIGNAL needWB_H     : std_logic;
   SIGNAL needWB_H1    : std_logic;
   SIGNAL pmaddress    : LC3B_WORD;
   SIGNAL pmaddress1   : LC3B_WORD;
   SIGNAL pmdataout    : LC3B_OWORD;
   SIGNAL pmread_l     : std_logic;
   SIGNAL pmread_l1    : std_logic;
   SIGNAL pmreadstate  : std_logic;
   SIGNAL pmreadstate1 : std_logic;
   SIGNAL pmwrite_l    : std_logic;
   SIGNAL write        : std_logic;
   SIGNAL write1       : std_logic;
   SIGNAL writeback    : std_logic;
   SIGNAL writeback1   : std_logic;


   -- Component Declarations
   COMPONENT DRAM16_DP
   PORT (
      CLK        : IN     STD_LOGIC;
      D_ADDRESS  : IN     LC3B_WORD;
      D_DATAOUT  : IN     LC3B_OWORD;
      D_MREAD_L  : IN     STD_LOGIC;
      D_MWRITE_L : IN     STD_LOGIC;
      I_ADDRESS  : IN     LC3B_WORD;
      I_MREAD_L  : IN     STD_LOGIC;
      RESET_L    : IN     STD_LOGIC;
      D_DATAIN   : OUT    LC3B_OWORD;
      D_MRESP_H  : OUT    STD_LOGIC;
      I_DATAIN   : OUT    LC3B_OWORD;
      I_MRESP_H  : OUT    STD_LOGIC
   );
   END COMPONENT;
   COMPONENT Ones
   PORT (
      MWRITEH_L : OUT    std_logic ;
      MWRITEL_L : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT Zeroes
   PORT (
      I_DATAOUT : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT cache
   PORT (
      ADDRESS     : IN     LC3b_word ;
      DATAOUT     : IN     LC3b_word ;
      MREAD_L     : IN     std_logic ;
      MWRITEH_L   : IN     std_logic ;
      MWRITEL_L   : IN     std_logic ;
      PMRESP_H    : IN     std_logic ;
      RESET_L     : IN     std_logic ;
      c_write     : IN     std_logic ;
      clk         : IN     std_logic ;
      cresp_out   : IN     std_logic ;
      cwaitout    : IN     std_logic ;
      ddata       : IN     std_logic ;
      pmdatain    : IN     LC3B_OWORD ;
      pmreadstate : IN     std_logic ;
      writeback   : IN     std_logic ;
      DATAIN      : OUT    LC3b_word ;
      MRESP_H     : OUT    std_logic ;
      MemReadCall : OUT    std_logic ;
      hitmissout  : OUT    std_logic ;
      needWB_H    : OUT    std_logic ;
      pmaddress   : OUT    LC3B_WORD ;
      pmdataout   : OUT    LC3B_OWORD ;
      write       : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT cache_controller
   PORT (
      MemReadCall : IN     std_logic ;
      PMRESP_H    : IN     std_logic ;
      RESET_L     : IN     std_logic ;
      clk         : IN     std_logic ;
      hitmissout  : IN     std_logic ;
      needWB_H    : IN     std_logic ;
      write       : IN     std_logic ;
      c_write     : OUT    std_logic ;
      cresp_out   : OUT    std_logic ;
      cwaitout    : OUT    std_logic ;
      ddata       : OUT    std_logic ;
      pmread_l    : OUT    std_logic ;
      pmreadstate : OUT    std_logic ;
      pmwrite_l   : OUT    std_logic ;
      writeback   : OUT    std_logic 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : DRAM16_DP USE ENTITY ece411.DRAM16_DP;
   FOR ALL : Ones USE ENTITY ece411.Ones;
   FOR ALL : Zeroes USE ENTITY ece411.Zeroes;
   FOR ALL : cache USE ENTITY ece411.cache;
   FOR ALL : cache_controller USE ENTITY ece411.cache_controller;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   PM : DRAM16_DP
      PORT MAP (
         RESET_L    => RESET_L,
         CLK        => clk,
         I_MREAD_L  => pmread_l,
         I_ADDRESS  => pmaddress,
         I_MRESP_H  => I_MRESP_H,
         I_DATAIN   => I_DATAIN,
         D_MREAD_L  => pmread_l1,
         D_MWRITE_L => pmwrite_l,
         D_ADDRESS  => pmaddress1,
         D_DATAOUT  => pmdataout,
         D_DATAIN   => D_DATAIN,
         D_MRESP_H  => D_MRESP_H
      );
   aOnes : Ones
      PORT MAP (
         MWRITEH_L => MWRITEH_L,
         MWRITEL_L => MWRITEL_L
      );
   U_0 : Zeroes
      PORT MAP (
         I_DATAOUT => I_DATAOUT
      );
   DCache : cache
      PORT MAP (
         ADDRESS     => D_ADDRESS,
         DATAOUT     => D_DATAOUT,
         MREAD_L     => D_MREAD_L,
         MWRITEH_L   => D_MWRITEH_L,
         MWRITEL_L   => D_MWRITEL_L,
         PMRESP_H    => D_MRESP_H,
         RESET_L     => RESET_L,
         c_write     => c_write1,
         clk         => clk,
         cresp_out   => cresp_out1,
         cwaitout    => cwaitout1,
         ddata       => ddata1,
         pmdatain    => D_DATAIN,
         pmreadstate => pmreadstate1,
         writeback   => writeback1,
         DATAIN      => DDATAIN,
         MRESP_H     => DMRESP_H,
         MemReadCall => MemReadCall1,
         hitmissout  => hitmissout1,
         needWB_H    => needWB_H1,
         pmaddress   => pmaddress1,
         pmdataout   => pmdataout,
         write       => write1
      );
   ICache : cache
      PORT MAP (
         ADDRESS     => I_ADDRESS,
         DATAOUT     => I_DATAOUT,
         MREAD_L     => I_MREAD_L,
         MWRITEH_L   => MWRITEH_L,
         MWRITEL_L   => MWRITEL_L,
         PMRESP_H    => I_MRESP_H,
         RESET_L     => RESET_L,
         c_write     => c_write,
         clk         => clk,
         cresp_out   => cresp_out,
         cwaitout    => cwaitout,
         ddata       => ddata,
         pmdatain    => I_DATAIN,
         pmreadstate => pmreadstate,
         writeback   => writeback,
         DATAIN      => IDATAIN,
         MRESP_H     => IMRESP_H,
         MemReadCall => MemReadCall,
         hitmissout  => hitmissout,
         needWB_H    => needWB_H,
         pmaddress   => pmaddress,
         pmdataout   => OPEN,
         write       => write
      );
   D_CC : cache_controller
      PORT MAP (
         MemReadCall => MemReadCall1,
         PMRESP_H    => D_MRESP_H,
         RESET_L     => RESET_L,
         clk         => clk,
         hitmissout  => hitmissout1,
         needWB_H    => needWB_H1,
         write       => write1,
         c_write     => c_write1,
         cresp_out   => cresp_out1,
         cwaitout    => cwaitout1,
         ddata       => ddata1,
         pmread_l    => pmread_l1,
         pmreadstate => pmreadstate1,
         pmwrite_l   => pmwrite_l,
         writeback   => writeback1
      );
   I_CC : cache_controller
      PORT MAP (
         MemReadCall => MemReadCall,
         PMRESP_H    => I_MRESP_H,
         RESET_L     => RESET_L,
         clk         => clk,
         hitmissout  => hitmissout,
         needWB_H    => needWB_H,
         write       => write,
         c_write     => c_write,
         cresp_out   => cresp_out,
         cwaitout    => cwaitout,
         ddata       => ddata,
         pmread_l    => pmread_l,
         pmreadstate => pmreadstate,
         pmwrite_l   => OPEN,
         writeback   => writeback
      );

END struct;
