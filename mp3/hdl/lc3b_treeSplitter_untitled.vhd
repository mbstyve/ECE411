--
-- VHDL Architecture ece411.lc3b_treeSplitter.untitled
--
-- Created:
--          by - draguna1.ews (gelib-057-08.ews.illinois.edu)
--          at - 00:22:18 04/30/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY lc3b_treeSplitter IS
   PORT( 
      LRUData  : IN     lc3b_tree;
      dataout0 : OUT    std_logic;
      dataout1 : OUT    std_logic;
      dataout2 : OUT    std_logic;
      dataout3 : OUT    std_logic;
      dataout4 : OUT    std_logic;
      dataout5 : OUT    std_logic;
      dataout6 : OUT    std_logic
   );

-- Declarations

END lc3b_treeSplitter ;

--
ARCHITECTURE untitled OF lc3b_treeSplitter IS
BEGIN
  process(LRUData)
  begin
  dataout0 <= LRUData(0);
  dataout1 <= LRUData(1);
  dataout2 <= LRUData(2);
  dataout3 <= LRUData(3);
  dataout4 <= LRUData(4);
  dataout5 <= LRUData(5);
  dataout6 <= LRUData(6);
  end process;
END ARCHITECTURE untitled;

