-- VHDL Entity ece411.mp3_cpu.symbol
--
-- Created:
--          by - styve1.ews (gelib-057-12.ews.illinois.edu)
--          at - 23:44:08 04/30/14
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
--          by - styve1.ews (gelib-057-12.ews.illinois.edu)
--          at - 23:44:08 04/30/14
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
   COMPONENT testMem
   PORT (
      RESET_L     : IN     STD_LOGIC ;
      CLK         : IN     STD_LOGIC ;
      I_MREAD_L   : IN     STD_LOGIC ;
      I_ADDRESS   : IN     LC3B_WORD ;
      I_MRESP_H   : OUT    STD_LOGIC ;
      I_DATAIN    : OUT    LC3B_WORD ;
      D_MREAD_L   : IN     STD_LOGIC ;
      D_MWRITEH_L : IN     STD_LOGIC ;
      D_MWRITEL_L : IN     STD_LOGIC ;
      D_ADDRESS   : IN     LC3B_WORD ;
      D_DATAOUT   : IN     LC3B_WORD ;
      D_DATAIN    : OUT    LC3B_WORD ;
      D_MRESP_H   : OUT    STD_LOGIC 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : CLKgen USE ENTITY ece411.CLKgen;
   FOR ALL : Pipelined_Datapath USE ENTITY ece411.Pipelined_Datapath;
   FOR ALL : testMem USE ENTITY ece411.testMem;
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
   TM : testMem
      PORT MAP (
         RESET_L     => RESET_L,
         CLK         => clk,
         I_MREAD_L   => I_MREAD_L,
         I_ADDRESS   => I_ADDRESS,
         I_MRESP_H   => I_MRESP_H,
         I_DATAIN    => I_DATAIN,
         D_MREAD_L   => D_MREAD_L,
         D_MWRITEH_L => D_MWRITEH_L,
         D_MWRITEL_L => D_MWRITEL_L,
         D_ADDRESS   => D_ADDRESS,
         D_DATAOUT   => D_DATAOUT,
         D_DATAIN    => D_DATAIN,
         D_MRESP_H   => D_MRESP_H
      );

END struct;
