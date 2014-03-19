--
-- VHDL Architecture ece411.ctl_rip_wb.untitled
--
-- Created:
--          by - styve1.ews (gelib-057-14.ews.illinois.edu)
--          at - 16:45:44 03/19/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ctl_rip_wb IS
   PORT( 
      Control  : IN     Control_Word;
      RFMuxSel : OUT    std_logic;
      Reg_Write : OUT   std_logic
   );

-- Declarations

END ctl_rip_wb ;

--
ARCHITECTURE untitled OF ctl_rip_wb IS
BEGIN
  RFMuxSel <= Control.write.RFMuxSel;
  Reg_Write <= Control.write.Reg_Write;
END ARCHITECTURE untitled;

