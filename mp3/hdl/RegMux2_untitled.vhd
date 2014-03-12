--
-- VHDL Architecture ece411.RegMux2.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-27.ews.illinois.edu)
--          at - 15:40:16 02/05/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY RegMux2 IS
   PORT( 
      dest       : IN     LC3B_REG;
      R7         : IN     LC3B_REG;
      DestMuxSel : IN     std_logic;
      DestMuxout : OUT    LC3B_REG
   );

-- Declarations

END RegMux2 ;

--
ARCHITECTURE untitled OF RegMux2 IS
BEGIN
  PROCESS (dest,R7,DestMuxout, DestMuxSel)
    variable state : LC3b_reg;
  BEGIN
    case DestMuxSel is
      when '0' =>
        state := dest;
      when '1' =>
        state := "111";
    when others =>
      state := (OTHERS => 'X');
    end case;
    DestMuxOut <= state after delay_MUX2;
  END PROCESS;
END ARCHITECTURE untitled;

