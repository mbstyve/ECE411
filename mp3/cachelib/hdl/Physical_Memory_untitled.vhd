--
-- VHDL Architecture cachelib.Physical_Memory.untitled
--
-- Created:
--          by - freed2.ews (gelib-057-23.ews.illinois.edu)
--          at - 14:31:12 02/12/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY cachelib;
USE cachelib.LC3b_types.all;

ENTITY Physical_Memory IS
   PORT( 
      RESET_L   : IN     std_logic;
      clk       : IN     std_logic;
      pmaddress : IN     LC3B_WORD;
      pmdataout : IN     LC3B_OWORD;
      pmread_l  : IN     std_logic;
      pmwrite_l : IN     std_logic;
      PMRESP_H  : OUT    std_logic;
      pmdatain  : OUT    LC3B_OWORD
   );

-- Declarations

END Physical_Memory ;

--
ARCHITECTURE UNTITLED OF PHYSICAL_MEMORY IS
SIGNAL PRE_PMRESP_H : STD_LOGIC;
SIGNAL PRE_PMDATAIN : LC3B_OWORD;
BEGIN
  -------------------------------------------------------------------
  VHDL_MEMORY : PROCESS (RESET_L, PMREAD_L, PMWRITE_L) 
  -------------------------------------------------------------------
  VARIABLE MEM : MEMORY_ARRAY_64K;
  VARIABLE INT_ADDRESS : INTEGER;
  VARIABLE INT_OLD_ADDRESS : INTEGER;
  BEGIN
    INT_ADDRESS := TO_INTEGER(UNSIGNED(PMADDRESS(15 DOWNTO 4)) * 16);
    IF RESET_L = '0' THEN
      PRE_PMRESP_H <= '0';
      MYDRAMINIT_64K(MEM);
    ELSE
      IF ((INT_ADDRESS >= 0) AND (INT_ADDRESS <= 4095)) THEN
        IF (PMREAD_L = '0' AND PMWRITE_L = '1') THEN
          PRE_PMDATAIN(7   DOWNTO 0  ) <= MEM(INT_ADDRESS);            
          PRE_PMDATAIN(15  DOWNTO 8  ) <= MEM(INT_ADDRESS + 1 );
          PRE_PMDATAIN(23  DOWNTO 16 ) <= MEM(INT_ADDRESS + 2 );
          PRE_PMDATAIN(31  DOWNTO 24 ) <= MEM(INT_ADDRESS + 3 );
          PRE_PMDATAIN(39  DOWNTO 32 ) <= MEM(INT_ADDRESS + 4 );            
          PRE_PMDATAIN(47  DOWNTO 40 ) <= MEM(INT_ADDRESS + 5 );
          PRE_PMDATAIN(55  DOWNTO 48 ) <= MEM(INT_ADDRESS + 6 );
          PRE_PMDATAIN(63  DOWNTO 56 ) <= MEM(INT_ADDRESS + 7 );
          PRE_PMDATAIN(71  DOWNTO 64 ) <= MEM(INT_ADDRESS + 8 );            
          PRE_PMDATAIN(79  DOWNTO 72 ) <= MEM(INT_ADDRESS + 9 );
          PRE_PMDATAIN(87  DOWNTO 80 ) <= MEM(INT_ADDRESS + 10);
          PRE_PMDATAIN(95  DOWNTO 88 ) <= MEM(INT_ADDRESS + 11);
          PRE_PMDATAIN(103 DOWNTO 96 ) <= MEM(INT_ADDRESS + 12);            
          PRE_PMDATAIN(111 DOWNTO 104) <= MEM(INT_ADDRESS + 13);
          PRE_PMDATAIN(119 DOWNTO 112) <= MEM(INT_ADDRESS + 14);
          PRE_PMDATAIN(127 DOWNTO 120) <= MEM(INT_ADDRESS + 15);
          PRE_PMRESP_H <= '1' AFTER 0 NS, '0' AFTER CLOCK_PERIOD;
        ELSIF (PMWRITE_L = '0' AND PMREAD_L = '1') THEN
          MEM(INT_ADDRESS     ) := PMDATAOUT(7   DOWNTO 0  );
          MEM(INT_ADDRESS + 1 ) := PMDATAOUT(15  DOWNTO 8  );
          MEM(INT_ADDRESS + 2 ) := PMDATAOUT(23  DOWNTO 16 );
          MEM(INT_ADDRESS + 3 ) := PMDATAOUT(31  DOWNTO 24 );
          MEM(INT_ADDRESS + 4 ) := PMDATAOUT(39  DOWNTO 32 );
          MEM(INT_ADDRESS + 5 ) := PMDATAOUT(47  DOWNTO 40 );
          MEM(INT_ADDRESS + 6 ) := PMDATAOUT(55  DOWNTO 48 );
          MEM(INT_ADDRESS + 7 ) := PMDATAOUT(63  DOWNTO 56 );
          MEM(INT_ADDRESS + 8 ) := PMDATAOUT(71  DOWNTO 64 );
          MEM(INT_ADDRESS + 9 ) := PMDATAOUT(79  DOWNTO 72 );
          MEM(INT_ADDRESS + 10) := PMDATAOUT(87  DOWNTO 80 );
          MEM(INT_ADDRESS + 11) := PMDATAOUT(95  DOWNTO 88 );
          MEM(INT_ADDRESS + 12) := PMDATAOUT(103 DOWNTO 96 );
          MEM(INT_ADDRESS + 13) := PMDATAOUT(111 DOWNTO 104);
          MEM(INT_ADDRESS + 14) := PMDATAOUT(119 DOWNTO 112);
          MEM(INT_ADDRESS + 15) := PMDATAOUT(127 DOWNTO 120);
          PRE_PMRESP_H <= '1' AFTER 0 NS, '0' AFTER CLOCK_PERIOD;
        END IF;
      END IF;
    END IF;
  END PROCESS VHDL_MEMORY;
  PMRESP_H <= PRE_PMRESP_H'DELAYED(DELAY_MP22_MEM);
  PMDATAIN <= PRE_PMDATAIN'DELAYED(DELAY_MP22_MEM);
END ARCHITECTURE UNTITLED;
