--
-- VHDL Architecture ece411.ControlMux.untitled
--
-- Created:
--          by - styve1.ews (gelib-057-15.ews.illinois.edu)
--          at - 14:27:24 04/17/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ControlMux IS
   PORT( 
      A   : IN     Control_word;
      B   : IN     Control_word;
      SEL : IN     STD_LOGIC;
      F   : OUT    Control_word
   );

-- Declarations

END ControlMux ;

--
ARCHITECTURE untitled OF ControlMux IS
BEGIN
    PROCESS (a, b, Sel)
    variable state : Control_word;
  BEGIN
    case Sel is
      when '0' =>
        state := a;
      when '1' =>
        state := b;
    when others =>
      state := a;
    end case;
    F <= state after delay_MUX2;
  END PROCESS;
END ARCHITECTURE untitled;

