-- VHDL Entity ece411.MEM_DF_RIP1.generatedInstance
--
-- Created:
--          by - styve1.ews (evrt-252-09.ews.illinois.edu)
--          at - 22:08:34 04/29/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY MEM_DF_RIP1 IS
   PORT( 
      MEMALU_CONT      : IN     control_word;
      MEMALU_MREAD     : OUT    std_logic;
      MEMALU_REG_WRITE : OUT    std_logic
   );

END MEM_DF_RIP1 ;

-- 
-- Auto generated dummy architecture for leaf level instance.
-- 
ARCHITECTURE generatedInstance OF MEM_DF_RIP1 IS 
BEGIN


END generatedInstance;