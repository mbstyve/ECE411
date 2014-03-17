--
-- VHDL Architecture ece411.ctl_rip_execute.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-09.ews.illinois.edu)
--          at - 11:35:34 03/17/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ctl_rip_execute IS
   PORT( 
      control : IN     CONTROL_WORD;
      ALUOP   : OUT    LC3B_ALUOP
   );

-- Declarations

END ctl_rip_execute ;

--
ARCHITECTURE untitled OF ctl_rip_execute IS
BEGIN
  ALUOP <= control.ex.aluop;
END ARCHITECTURE untitled;
