--
-- VHDL Architecture cachelib.WordMux2.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-40.ews.illinois.edu)
--          at - 15:04:08 01/22/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY cachelib;
USE cachelib.LC3b_types.all;

ENTITY WordMux4 IS
   PORT( 
      A   : IN     LC3b_word;
      B   : IN     LC3b_word;
      C   : IN     LC3b_word;
      Sel : IN     LC3B_4MUX_SEL;
      F   : OUT    LC3b_word
   );

-- Declarations

END WordMux4 ;

--
ARCHITECTURE untitled OF WordMux4 IS
BEGIN
  PROCESS (A,B,C, Sel)
    variable state : LC3b_word;
  BEGIN
    case Sel is
      when "00" =>
        state := A;
      when "01" =>
        state :=B;
      when "10" =>
        state :=C;
    when others =>
      state := (OTHERS => 'X');
    end case;
    F <= state after delay_MUX4;
  END PROCESS;
END ARCHITECTURE untitled;

