--
-- VHDL Architecture cachelib.TagArray.untitled
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
LIBRARY cachelib;
USE cachelib.LC3b_types.all;

ENTITY TagArray IS
   PORT( 
      Reset_L   : IN     std_logic;
      DataWrite : IN     std_logic;
      Index     : IN     LC3B_C_INDEX;
      DataIn    : IN     LC3B_C_TAG;
      DataOut   : OUT    LC3B_C_TAG
   );

-- Declarations

END TagArray ;

--
ARCHITECTURE untitled OF TagArray IS
	TYPE TagArray IS array (7 downto 0) of LC3B_C_TAG;
	SIGNAL Data : TagArray;
	BEGIN
		--------------------------------------------------------------
		ReadFromTagArray : PROCESS (Data, Index)
		--------------------------------------------------------------
    
			VARIABLE DataIndex : integer;
			BEGIN
				DataIndex := to_integer(unsigned(Index));
				DataOut <= Data(DataIndex) after DELAY_256B;
		
		END PROCESS ReadFromTagArray;
	
		--------------------------------------------------------------
		WriteToTagArray : PROCESS (RESET_L, Index, DataWrite, DataIn)
		-------------------------------------------------------	------	
			VARIABLE DataIndex : integer;
			BEGIN
				DataIndex := to_integer(unsigned(Index));
			IF RESET_L = '0' THEN
				Data(0) <= (OTHERS => 'X');
				Data(1) <= (OTHERS => 'X');
				Data(2) <= (OTHERS => 'X');
				Data(3) <= (OTHERS => 'X');
				Data(4) <= (OTHERS => 'X');
				Data(5) <= (OTHERS => 'X');
				Data(6) <= (OTHERS => 'X');
				Data(7) <= (OTHERS => 'X');
			END IF;

			IF (DataWrite = '1') THEN
				Data(DataIndex) <= DataIn;
			END IF;
		
		END PROCESS WriteToTagArray;
END ARCHITECTURE untitled;
