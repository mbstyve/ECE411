--
-- VHDL Architecture ece411.FlipFlop.untitled
--
-- Created:
--          by - styve1.ews (gelib-057-20.ews.illinois.edu)
--          at - 18:12:29 04/16/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY FlipFlop IS
   PORT( 
      D_MRESP_H : IN     std_logic;
      FFout     : IN     std_logic;
      Indirect  : IN     std_logic;
      D_ADDRSel : OUT    std_logic
   );

-- Declarations

END FlipFlop ;

--
ARCHITECTURE untitled OF FlipFlop IS
BEGIN
  PROCESS (Indirect, D_MRESP_H)
  BEGIN
    IF(Indirect = '0') THEN
      D_ADDRSel <= '0';
    ELSE 
      D_ADDRSel <= NOT FFout;
    END IF;
    END PROCESS;
END ARCHITECTURE untitled;

