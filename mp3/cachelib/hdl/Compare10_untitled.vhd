--
-- VHDL Architecture cachelib.Compare9.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-22.ews.illinois.edu)
--          at - 15:35:57 02/13/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY cachelib;
USE cachelib.LC3b_types.all;

ENTITY Compare9 IS
   PORT( 
      InA   : IN     LC3B_C_TAG;
      InB   : IN     LC3B_C_TAG;
      Equal : OUT    std_logic
   );

-- Declarations

END Compare9 ;

--
ARCHITECTURE untitled OF Compare9 IS
BEGIN
  PROCESS (InA, InB)
  BEGIN
    IF (InA = InB) then
      Equal <= '1' after delay_compare16;
    Else
      Equal <= '0' after delay_compare16;
    end if;
  end process;
END ARCHITECTURE untitled;

