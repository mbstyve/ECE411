--
-- VHDL Architecture cachelib.ByteMux2.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-08.ews.illinois.edu)
--          at - 23:30:52 02/27/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY cachelib;
USE cachelib.LC3b_types.all;

ENTITY ByteMux2 IS
   PORT( 
      A  : IN      LC3B_BYTE;
      B  : IN      LC3B_BYTE;
      SEL  : IN    STD_logic;
      ByteOUT : OUT   LC3B_BYTE
   );

-- Declarations

END ByteMux2 ;

--
ARCHITECTURE untitled OF ByteMux2 IS
BEGIN
  PROCESS(A, B, SEL)
  VARIABLE TEMP :  LC3B_BYTE;
  BEGIN
    CASE SEL IS
      WHEN '0' =>
        TEMP := A;
      WHEN '1' =>
        TEMP := B;
      WHEN OTHERS =>
        TEMP := (OTHERS => 'X');
    END CASE;
    BYTEOUT <= TEMP after DELAY_MUX2;
  END PROCESS;
END ARCHITECTURE untitled;

