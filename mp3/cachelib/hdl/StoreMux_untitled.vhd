--
-- VHDL Architecture cachelib.StoreMux.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-14.ews.illinois.edu)
--          at - 16:52:49 01/23/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY cachelib;
USE cachelib.LC3b_types.all;

ENTITY StoreMux IS
   PORT( 
      SrcA        : IN     LC3b_reg;
      StoreSR     : IN     std_logic;
      clk         : IN     std_logic;
      dest        : IN     LC3b_reg;
      StoreMuxout : OUT    LC3b_reg
   );

-- Declarations

END StoreMux ;

--
ARCHITECTURE untitled OF StoreMux IS
BEGIN
  PROCESS (SrcA,dest,StoreSR)
    variable state : LC3b_reg;
  BEGIN
    case StoreSR is
      when '0' =>
        state := dest;
      when '1' =>
        state := SrcA;
    when others =>
      state := (OTHERS => 'X');
    end case;
    StoreMuxout <= state after delay_MUX2;
  END PROCESS;
END ARCHITECTURE untitled;

