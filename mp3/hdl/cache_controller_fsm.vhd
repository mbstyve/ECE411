-- VHDL Entity ece411.cache_controller.symbol
--
-- Created:
--          by - styve1.ews (evrt-252-27.ews.illinois.edu)
--          at - 20:11:59 04/03/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY cache_controller IS
   PORT( 
      MemReadCall : IN     std_logic;
      PMRESP_H    : IN     std_logic;
      RESET_L     : IN     std_logic;
      clk         : IN     std_logic;
      hitmissout  : IN     std_logic;
      justdoit    : IN     std_logic;
      needWB_H    : IN     std_logic;
      write       : IN     std_logic;
      c_write     : OUT    std_logic;
      cresp_out   : OUT    std_logic;
      cwaitout    : OUT    std_logic;
      ddata       : OUT    std_logic;
      pmread_l    : OUT    std_logic;
      pmreadstate : OUT    std_logic;
      pmwrite_l   : OUT    std_logic;
      writeback   : OUT    std_logic
   );

-- Declarations

END cache_controller ;

--
-- VHDL Architecture ece411.cache_controller.fsm
--
-- Created:
--          by - styve1.ews (evrt-252-27.ews.illinois.edu)
--          at - 20:12:00 04/03/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
 
ARCHITECTURE fsm OF cache_controller IS

   TYPE STATE_TYPE IS (
      WriteBackSt,
      CWait,
      PMRead,
      TempHold
   );
 
   -- Declare current and next state signals
   SIGNAL current_state : STATE_TYPE;
   SIGNAL next_state : STATE_TYPE;

BEGIN

   -----------------------------------------------------------------
   clocked_proc : PROCESS ( 
      clk,
      RESET_L
   )
   -----------------------------------------------------------------
   BEGIN
      IF (RESET_L = '0') THEN
         current_state <= CWait;
      ELSIF (clk'EVENT AND clk = '1') THEN
         current_state <= next_state;
      END IF;
   END PROCESS clocked_proc;
 
   -----------------------------------------------------------------
   nextstate_proc : PROCESS ( 
      MemReadCall,
      PMRESP_H,
      current_state,
      needWB_H
   )
   -----------------------------------------------------------------
   BEGIN
      CASE current_state IS
         WHEN WriteBackSt => 
            IF (PMResp_H = '1') THEN 
               next_state <= PMRead;
            ELSE
               next_state <= WriteBackSt;
            END IF;
         WHEN CWait => 
            IF (needWB_H = '1') THEN 
               next_state <= WriteBackSt;
            ELSIF (memreadcall = '1') THEN 
               next_state <= PMRead;
            ELSE
               next_state <= CWait;
            END IF;
         WHEN PMRead => 
            IF (PMResp_H = '1') THEN 
               next_state <= TempHold;
            ELSE
               next_state <= PMRead;
            END IF;
         WHEN TempHold => 
            next_state <= CWait;
         WHEN OTHERS =>
            next_state <= CWait;
      END CASE;
   END PROCESS nextstate_proc;
 
   -----------------------------------------------------------------
   output_proc : PROCESS ( 
      current_state
   )
   -----------------------------------------------------------------
   BEGIN
      -- Default Assignment
      c_write <= '0';
      cresp_out <= '0';
      cwaitout <= '0';
      ddata <= '0';
      pmread_l <= '1';
      pmreadstate <= '0';
      pmwrite_l <= '1';
      writeback <= '0';

      -- Combined Actions
      CASE current_state IS
         WHEN WriteBackSt => 
            PMWrite_L <= '0';
            writeback <= '1';
         WHEN CWait => 
            cwaitout <= '1';
         WHEN PMRead => 
            PMRead_L <= '0';
            PMReadState <= '1';
            c_write <= '1';
         WHEN OTHERS =>
            NULL;
      END CASE;
   END PROCESS output_proc;
 
END fsm;
