--
-- VHDL Architecture ece411.AND4.untitled
--
-- Created:
--          by - freed2.ews (linux-a3.ews.illinois.edu)
--          at - 16:24:19 02/02/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY AND4 IS
   PORT( 
      A : IN     std_logic;
      B : IN     std_logic;
      C : IN     std_logic;
      D : IN     std_logic;
      F : OUT    std_logic
   );

-- Declarations

END AND4 ;

--
ARCHITECTURE untitled OF AND4 IS
BEGIN
F <= (A AND B) AND (C AND D) AFTER DELAY_LOGIC2;
END ARCHITECTURE untitled;

