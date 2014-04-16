--
-- VHDL Architecture ece411.CTL_RIP_DEC.untitled
--
-- Created:
--          by - styve1.ews (gelib-057-14.ews.illinois.edu)
--          at - 14:27:46 03/19/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY CTL_RIP_DEC IS
   PORT( 
      ControlOut  : IN     CONTROL_WORD;
      StoreMuxSel : OUT    std_logic;
      LDBMuxSel   : OUT    std_logic
   );

-- Declarations

END CTL_RIP_DEC ;

--
ARCHITECTURE untitled OF CTL_RIP_DEC IS
BEGIN
  StoreMuxSel <= ControlOut.dec.StoreMuxSel;
  LDBMuxSel <= ControlOut.dec.LDBMuxSel;
END ARCHITECTURE untitled;

