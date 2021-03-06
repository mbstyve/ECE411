--
-- VHDL Architecture ece411.delay.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-05.ews.illinois.edu)
--          at - 18:57:56 02/28/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY delay IS
   PORT( 
      clk    : IN     std_logic;
      ddata  : IN     std_logic;
      ddatad : OUT    std_logic
   );

-- Declarations

END delay ;

--
ARCHITECTURE untitled OF delay IS
BEGIN
  process(ddata, clk)
    VARIABLE THING: std_logic;

  begin
    if(clk = '0' and clk'event) then
      ddatad <= ddata;
  end if;
  end process;
END ARCHITECTURE untitled;

