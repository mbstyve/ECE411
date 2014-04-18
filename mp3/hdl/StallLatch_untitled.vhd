--
-- VHDL Architecture ece411.StallLatch.untitled
--
-- Created:
--          by - styve1.ews (gelib-057-12.ews.illinois.edu)
--          at - 18:58:25 04/17/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
ENTITY StallLatch IS
   PORT( 
      EDGE : IN     std_logic;
      SELF     : IN     std_logic;
      Indirect  : IN     std_logic;
      OUT1 : OUT    std_logic
   );

-- Declarations

END StallLatch ;

ARCHITECTURE untitled OF StallLatch IS
BEGIN
    PROCESS (EDGE)
  BEGIN
    IF(Indirect = '0') THEN
      OUT1 <= '0' AFTER DELAY_MUX2;
    ELSIF (EDGE = '1') THEN
      OUT1 <= NOT SELF AFTER DELAY_MUX2;
    END IF;
    END PROCESS;
END ARCHITECTURE untitled;

