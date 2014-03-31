--
-- VHDL Architecture cachelib.MakeEven.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-21.ews.illinois.edu)
--          at - 16:25:13 01/31/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY cachelib;
USE cachelib.LC3b_types.all;

ENTITY MakeEven IS
   PORT( 
      clk        : IN     std_logic;
      ALUoutEven : OUT    LC3b_word;
      BusMuxOut  : IN     LC3b_word
   );

-- Declarations

END MakeEven ;

--
ARCHITECTURE untitled OF MakeEven IS
BEGIN
  
  ALUoutEven <= BusMuxOut(15 downto 1) & '0';
  
END ARCHITECTURE untitled;
