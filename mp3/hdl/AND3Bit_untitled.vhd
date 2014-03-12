--
-- VHDL Architecture ece411.AND3Bit.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-18.ews.illinois.edu)
--          at - 15:26:57 02/21/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY AND3Bit IS
   PORT( 
      A      : IN     std_logic;
      B      : IN     std_logic;
      C      : IN     std_logic;
      Output : OUT    std_logic
   );

-- Declarations

END AND3Bit ;

--
ARCHITECTURE untitled OF AND3Bit IS
BEGIN
  Output <= A AND B AND C after DELAY_LOGIC3;
END ARCHITECTURE untitled;

