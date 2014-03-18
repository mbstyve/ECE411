-- VHDL Entity ece411.MEMCALL.symbol
--
-- Created:
--          by - draguna1.ews (siebl-0218-11.ews.illinois.edu)
--          at - 19:57:25 03/17/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY MEMCALL IS
   PORT( 
      ADDR      : IN     std_logic;
      Clk       : IN     std_logic;
      Control   : IN     Control_Word;
      DEST      : IN     std_logic;
      D_DATAIN  : IN     LC3b_word;
      D_MRESP_H : IN     std_logic;
      RESET_L   : IN     std_logic;
      D_DATAOUT : OUT    LC3b_word;
      DestOut   : OUT    std_logic
   );

-- Declarations

END MEMCALL ;

--
-- VHDL Architecture ece411.MEMCALL.struct
--
-- Created:
--          by - draguna1.ews (siebl-0218-11.ews.illinois.edu)
--          at - 19:57:25 03/17/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;


ARCHITECTURE struct OF MEMCALL IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL Load_dMAR : std_logic;
   SIGNAL Load_dMDR : std_logic;


   -- Component Declarations
   COMPONENT Reg16
   PORT (
      Input  : IN     LC3b_word ;
      RESET  : IN     std_logic ;
      clk    : IN     std_logic ;
      load   : IN     std_logic ;
      Output : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT ctr_rip_mem
   PORT (
      Control   : IN     Control_Word;
      Load_dMAR : OUT    std_logic;
      Load_dMDR : OUT    std_logic
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : Reg16 USE ENTITY ece411.Reg16;
   FOR ALL : ctr_rip_mem USE ENTITY ece411.ctr_rip_mem;
   -- pragma synthesis_on


BEGIN
   -- Architecture concurrent statements
   -- HDL Embedded Text Block 1 eb1
   DestOut <= DEST;


   -- Instance port mappings.
   dMAR : Reg16
      PORT MAP (
         Input  => ADDR,
         RESET  => RESET_L,
         clk    => Clk,
         load   => Load_dMAR,
         Output => OPEN
      );
   dMDR : Reg16
      PORT MAP (
         Input  => D_DATAIN,
         RESET  => RESET_L,
         clk    => Clk,
         load   => Load_dMDR,
         Output => D_DATAOUT
      );
   U_0 : ctr_rip_mem
      PORT MAP (
         Control   => Control,
         Load_dMAR => Load_dMAR,
         Load_dMDR => Load_dMDR
      );

END struct;
