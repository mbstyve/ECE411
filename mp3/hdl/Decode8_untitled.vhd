--
-- VHDL Architecture ece411.Decode8.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-08.ews.illinois.edu)
--          at - 01:31:07 02/28/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Decode8 IS
   PORT( 
      A    : IN     LC3B_C_offset;
      Out0 : OUT    std_logic;
      Out1 : OUT    std_logic;
      Out2 : OUT    std_logic;
      Out3 : OUT    std_logic;
      Out4 : OUT    std_logic;
      Out5 : OUT    std_logic;
      Out6 : OUT    std_logic;
      Out7 : OUT    std_logic
   );

-- Declarations

END Decode8 ;

--
ARCHITECTURE untitled OF Decode8 IS
BEGIN
  PROCESS(A)
  Begin
    Case A IS
			WHEN "000" =>
				Out0 <= '1' after DELAY_DECODE3;
				Out1 <= '0' after DELAY_DECODE3;
				Out2 <= '0' after DELAY_DECODE3;
				Out3 <= '0' after DELAY_DECODE3;
				Out4 <= '0' after DELAY_DECODE3;
				Out5 <= '0' after DELAY_DECODE3;
				Out6 <= '0' after DELAY_DECODE3;
				Out7 <= '0' after DELAY_DECODE3;
			WHEN "001" =>
				Out0 <= '0' after DELAY_DECODE3;
				Out1 <= '1' after DELAY_DECODE3;
				Out2 <= '0' after DELAY_DECODE3;
				Out3 <= '0' after DELAY_DECODE3;
				Out4 <= '0' after DELAY_DECODE3;
				Out5 <= '0' after DELAY_DECODE3;
				Out6 <= '0' after DELAY_DECODE3;
				Out7 <= '0' after DELAY_DECODE3;
			WHEN "010" =>
				Out0 <= '0' after DELAY_DECODE3;
				Out1 <= '0' after DELAY_DECODE3;
				Out2 <= '1' after DELAY_DECODE3;
				Out3 <= '0' after DELAY_DECODE3;
				Out4 <= '0' after DELAY_DECODE3;
				Out5 <= '0' after DELAY_DECODE3;
				Out6 <= '0' after DELAY_DECODE3;
				Out7 <= '0' after DELAY_DECODE3;
			WHEN "011" =>
				Out0 <= '0' after DELAY_DECODE3;
				Out1 <= '0' after DELAY_DECODE3;
				Out2 <= '0' after DELAY_DECODE3;
				Out3 <= '1' after DELAY_DECODE3;
				Out4 <= '0' after DELAY_DECODE3;
				Out5 <= '0' after DELAY_DECODE3;
				Out6 <= '0' after DELAY_DECODE3;
				Out7 <= '0' after DELAY_DECODE3;
			WHEN "100" =>
				Out0 <= '0' after DELAY_DECODE3;
				Out1 <= '0' after DELAY_DECODE3;
				Out2 <= '0' after DELAY_DECODE3;
				Out3 <= '0' after DELAY_DECODE3;
				Out4 <= '1' after DELAY_DECODE3;
				Out5 <= '0' after DELAY_DECODE3;
				Out6 <= '0' after DELAY_DECODE3;
				Out7 <= '0' after DELAY_DECODE3;
			WHEN "101" =>
				Out0 <= '0' after DELAY_DECODE3;
				Out1 <= '0' after DELAY_DECODE3;
				Out2 <= '0' after DELAY_DECODE3;
				Out3 <= '0' after DELAY_DECODE3;
				Out4 <= '0' after DELAY_DECODE3;
				Out5 <= '1' after DELAY_DECODE3;
				Out6 <= '0' after DELAY_DECODE3;
				Out7 <= '0' after DELAY_DECODE3;
			WHEN "110" =>
				Out0 <= '0' after DELAY_DECODE3;
				Out1 <= '0' after DELAY_DECODE3;
				Out2 <= '0' after DELAY_DECODE3;
				Out3 <= '0' after DELAY_DECODE3;
				Out4 <= '0' after DELAY_DECODE3;
				Out5 <= '0' after DELAY_DECODE3;
				Out6 <= '1' after DELAY_DECODE3;
				Out7 <= '0' after DELAY_DECODE3;
			WHEN "111" =>
				Out0 <= '0' after DELAY_DECODE3;
				Out1 <= '0' after DELAY_DECODE3;
				Out2 <= '0' after DELAY_DECODE3;
				Out3 <= '0' after DELAY_DECODE3;
				Out4 <= '0' after DELAY_DECODE3;
				Out5 <= '0' after DELAY_DECODE3;
				Out6 <= '0' after DELAY_DECODE3;
				Out7 <= '1' after DELAY_DECODE3;
			WHEN OTHERS =>
				Out0 <= '0' after DELAY_DECODE3;
				Out1 <= '0' after DELAY_DECODE3;
				Out2 <= '0' after DELAY_DECODE3;
				Out3 <= '0' after DELAY_DECODE3;
				Out4 <= '0' after DELAY_DECODE3;
				Out5 <= '0' after DELAY_DECODE3;
				Out6 <= '0' after DELAY_DECODE3;
				Out7 <= '0' after DELAY_DECODE3;
				end case;
				end process;
END ARCHITECTURE untitled;

