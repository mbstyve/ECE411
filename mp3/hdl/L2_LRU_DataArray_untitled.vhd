--
-- VHDL Architecture ece411.L2_LRU_DataArray.untitled
--
-- Created:
--          by - draguna1.ews (gelib-057-08.ews.illinois.edu)
--          at - 00:57:23 04/30/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY L2_LRU_DataArray IS
   PORT( 
      AddrIndex : IN     lc3b_c_index;
      DataIn    : IN     lc3b_tree;
      Reset_L   : IN     std_logic;
      write     : IN     std_logic;
      DataOut   : OUT    lc3b_tree
   );

-- Declarations

END L2_LRU_DataArray ;

--
ARCHITECTURE untitled OF L2_LRU_DataArray IS
  TYPE LRUArray IS array (7 downto 0) of lc3b_tree;
  SIGNAL Data : LRUArray;
  BEGIN
    --------------------------------------------------------------
    ReadFromDataArray : PROCESS (Data, AddrIndex)
    --------------------------------------------------------------
    
      VARIABLE DataIndex : integer;
      BEGIN
        DataIndex := to_integer(unsigned(AddrIndex));
        DataOut <= Data(DataIndex) after DELAY_4KB; 
    
    END PROCESS ReadFromDataArray;
  
    --------------------------------------------------------------
    WriteToDataArray : PROCESS (Reset_L, AddrIndex, write, DataIn)
    --------------------------------------------------------------  
      VARIABLE DataIndex : integer;
      BEGIN
        DataIndex := to_integer(unsigned(AddrIndex));
      IF RESET_L = '0' THEN
        Data(0) <= "0000000";
        Data(1) <= "0000000";
        Data(2) <= "0000000";
        Data(3) <= "0000000";
        Data(4) <= "0000000";
        Data(5) <= "0000000";
        Data(6) <= "0000000";
        Data(7) <= "0000000";
      END IF;

      IF (write = '1') THEN
        Data(DataIndex) <= datain;
      END IF;
    
    END PROCESS WriteToDataArray;
END ARCHITECTURE untitled;
