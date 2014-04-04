-- VHDL Entity ece411.mp3_cpu.symbol
--
-- Created:
--          by - freed2.ews (gelib-057-15.ews.illinois.edu)
--          at - 03:17:20 04/04/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY mp3_cpu IS
   PORT( 
      RESET_L    : IN     STD_LOGIC;
      START_H    : IN     std_logic;
      I_DATAOUT  : OUT    LC3B_WORD;
      I_MWRITE_L : OUT    std_logic
   );

-- Declarations

END mp3_cpu ;

--
-- VHDL Architecture ece411.mp3_cpu.struct
--
-- Created:
--          by - freed2.ews (gelib-057-15.ews.illinois.edu)
--          at - 03:17:20 04/04/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;


ARCHITECTURE struct OF mp3_cpu IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL D_ADDRESS   : LC3B_WORD;
   SIGNAL D_DATAIN    : LC3B_WORD;
   SIGNAL D_DATAOUT   : LC3B_WORD;
   SIGNAL D_MREAD_L   : std_logic;
   SIGNAL D_MRESP_H   : STD_LOGIC;
   SIGNAL D_MWRITEH_L : std_logic;
   SIGNAL D_MWRITEL_L : std_logic;
   SIGNAL I_ADDRESS   : LC3B_WORD;
   SIGNAL I_DATAIN    : LC3B_WORD;
   SIGNAL I_MREAD_L   : std_logic;
   SIGNAL I_MRESP_H   : STD_LOGIC;
   SIGNAL clk         : std_logic := '0';


   -- Component Declarations
   COMPONENT CLKgen
   PORT (
      clk : INOUT  std_logic  := '0'
   );
   END COMPONENT;
   COMPONENT Pipelined_Datapath
   PORT (
      Clk         : IN     std_logic ;
      D_DATAIN    : IN     LC3B_WORD ;
      D_MRESP_H   : IN     std_logic ;
      I_DATAIN    : IN     LC3B_WORD ;
      I_MRESP_H   : IN     std_logic ;
      reset_l     : IN     std_logic ;
      D_ADDRESS   : OUT    LC3B_WORD ;
      D_DATAOUT   : OUT    LC3B_WORD ;
      D_MREAD_L   : OUT    std_logic ;
      D_MWRITEH_L : OUT    std_logic ;
      D_MWRITEL_L : OUT    std_logic ;
      I_ADDRESS   : OUT    LC3B_WORD ;
      I_DATAOUT   : OUT    LC3B_WORD ;
      I_MREAD_L   : OUT    std_logic ;
      I_MWRITE_L  : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT cache_mem
   PORT (
      D_ADDRESS   : IN     LC3b_word ;
      D_DATAOUT   : IN     LC3b_word ;
      D_MREAD_L   : IN     std_logic ;
      D_MWRITEH_L : IN     std_logic ;
      D_MWRITEL_L : IN     std_logic ;
      I_ADDRESS   : IN     LC3b_word ;
      I_MREAD_L   : IN     std_logic ;
      RESET_L     : IN     std_logic ;
      clk         : IN     std_logic ;
      DDATAIN     : OUT    LC3b_word ;
      DMRESP_H    : OUT    std_logic ;
      IDATAIN     : OUT    LC3b_word ;
      IMRESP_H    : OUT    std_logic 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : CLKgen USE ENTITY ece411.CLKgen;
   FOR ALL : Pipelined_Datapath USE ENTITY ece411.Pipelined_Datapath;
   FOR ALL : cache_mem USE ENTITY ece411.cache_mem;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   aCLKG : CLKgen
      PORT MAP (
         clk => clk
      );
   aDataPath : Pipelined_Datapath
      PORT MAP (
         Clk         => clk,
         D_DATAIN    => D_DATAIN,
         D_MRESP_H   => D_MRESP_H,
         I_DATAIN    => I_DATAIN,
         I_MRESP_H   => I_MRESP_H,
         reset_l     => RESET_L,
         D_ADDRESS   => D_ADDRESS,
         D_DATAOUT   => D_DATAOUT,
         D_MREAD_L   => D_MREAD_L,
         D_MWRITEH_L => D_MWRITEH_L,
         D_MWRITEL_L => D_MWRITEL_L,
         I_ADDRESS   => I_ADDRESS,
         I_DATAOUT   => I_DATAOUT,
         I_MREAD_L   => I_MREAD_L,
         I_MWRITE_L  => I_MWRITE_L
      );
   L1_Cache : cache_mem
      PORT MAP (
         D_ADDRESS   => D_ADDRESS,
         D_DATAOUT   => D_DATAOUT,
         D_MREAD_L   => D_MREAD_L,
         D_MWRITEH_L => D_MWRITEH_L,
         D_MWRITEL_L => D_MWRITEL_L,
         I_ADDRESS   => I_ADDRESS,
         I_MREAD_L   => I_MREAD_L,
         RESET_L     => RESET_L,
         clk         => clk,
         DDATAIN     => D_DATAIN,
         DMRESP_H    => D_MRESP_H,
         IDATAIN     => I_DATAIN,
         IMRESP_H    => I_MRESP_H
      );

END struct;
