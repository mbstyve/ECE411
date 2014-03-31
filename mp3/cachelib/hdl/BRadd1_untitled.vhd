--
-- VHDL Architecture cachelib.BRadd1.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-21.ews.illinois.edu)
--          at - 16:42:14 01/31/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY cachelib;
USE cachelib.LC3b_types.all;

ENTITY BRadd1 IS
   PORT( 
      ADJ9out : IN     LC3b_word;
      clk     : IN     std_logic;
      PCout       : IN     LC3b_word;
      B       : OUT    LC3b_word
   );

-- Declarations

END BRadd1 ;

--
ARCHITECTURE untitled OF BRadd1 IS
BEGIN
  	PROCESS (PCout, ADJ9out)
	BEGIN  -- PROCESS
		B <= STD_LOGIC_VECTOR(UNSIGNED(PCout)+UNSIGNED(ADJ9out)) AFTER DELAY_ADDER;
	END PROCESS;
END ARCHITECTURE untitled;
