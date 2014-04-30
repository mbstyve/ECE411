--
-- VHDL Architecture ece411.lc3b_treeconcat.untitled
--
-- Created:
--          by - draguna1.ews (gelib-057-08.ews.illinois.edu)
--          at - 00:45:38 04/30/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY lc3b_treeconcat IS
   PORT( 
      In0     : IN     std_logic;
      In1     : IN     std_logic;
      In2     : IN     std_logic;
      In3     : IN     std_logic;
      In4     : IN     std_logic;
      In5     : IN     std_logic;
      In6     : IN     std_logic;
      dataout : OUT    lc3b_tree
   );

-- Declarations

END lc3b_treeconcat ;

--
ARCHITECTURE untitled OF lc3b_treeconcat IS
BEGIN
  process(In0, In1, In2, In3, In4, In5, In6)
  begin
    dataout <= In6 & In5 & In4 & In3 & In2 & In1 & In0;
  end process;
END ARCHITECTURE untitled;

