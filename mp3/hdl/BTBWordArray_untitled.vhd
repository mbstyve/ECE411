--
-- VHDL Architecture ece411.BTBWordArray.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-24.ews.illinois.edu)
--          at - 01:31:19 04/30/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY BTBWordArray IS
   PORT( 
      Reset_L   : IN     std_logic;
      DataWrite : IN     std_logic;
      Index     : IN     LC3B_byte;
      DataIn    : IN     LC3B_word;
      DataOut   : OUT    std_logic
   );

-- Declarations

END BTBWordArray ;

--
ARCHITECTURE untitled OF BTBWordArray IS
	TYPE SingleBitArray IS array (255 downto 0) of lc3b_word;
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


