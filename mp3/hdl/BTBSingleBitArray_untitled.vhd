--
-- VHDL Architecture ece411.TagArray.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-22.ews.illinois.edu)
--          at - 16:24:59 02/13/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY BTBSingleBitArray IS
   PORT( 
      Reset_L   : IN     std_logic;
      DataWrite : IN     std_logic;
      Index     : IN     LC3B_byte;
      DataIn    : IN     std_logic;
      DataOut   : OUT    std_logic
   );

-- Declarations

END BTBSingleBitArray ;

--
ARCHITECTURE untitled OF BTBSingleBitArray IS
	TYPE SingleBitArray IS array (255 downto 0) of std_logic;
	SIGNAL Data : SingleBitArray;
	BEGIN
		--------------------------------------------------------------
		ReadFromSingleBitArray : PROCESS (Data, Index)
		--------------------------------------------------------------
    
			VARIABLE DataIndex : integer;
			BEGIN
				DataIndex := to_integer(unsigned(Index));
				DataOut <= Data(DataIndex) after DELAY_1KB;
		
		END PROCESS ReadFromSingleBitArray;
	
		--------------------------------------------------------------
		WriteToSingleBitArray : PROCESS (RESET_L, Index, DataWrite, DataIn)
		-------------------------------------------------------	------	
			VARIABLE DataIndex : integer;
			BEGIN
				DataIndex := to_integer(unsigned(Index));
			IF RESET_L = '0' THEN
        Data(255 downto 0) <= (others => '0');
			END IF;

			IF (DataWrite = '1') THEN
				Data(DataIndex) <= DataIn;
			END IF;
		
		END PROCESS WriteToSingleBitArray;
END ARCHITECTURE untitled;

