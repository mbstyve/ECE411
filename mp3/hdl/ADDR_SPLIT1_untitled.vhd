--
-- VHDL Architecture ece411.ADDR_SPLIT1.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-15.ews.illinois.edu)
--          at - 23:05:07 04/03/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADDR_SPLIT1 IS
   PORT( 
      ADDRESS : IN     LC3b_word;
      offset  : OUT    LC3B_C_OFFSET;
      tag     : OUT    LC3B_C_TAG;
      index   : OUT    LC3B_C_INDEX
   );

-- Declarations

END ADDR_SPLIT1 ;

--
ARCHITECTURE untitled OF ADDR_SPLIT1 IS
BEGIN
  offset <= address(3 DOWNTO 1);
  index <=  address(6 DOWNTO 4);
  tag <=    address(15 DOWNTO 7);
END ARCHITECTURE untitled;


