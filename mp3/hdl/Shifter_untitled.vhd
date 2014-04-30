--
-- VHDL Architecture ece411.Shifter.untitled
--
-- Created:
--          by - styve1.ews (gelib-057-22.ews.illinois.edu)
--          at - 17:25:58 04/14/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Shifter IS
   PORT( 
      SHFTOP  : IN     LC3B_SHFTOP;
      SFTOUT  : OUT    LC3b_word;
      ADATA : IN     LC3b_word;
      ADJ4    : IN     LC3B_WORD
   );

-- Declarations

END Shifter ;

--
ARCHITECTURE untitled OF Shifter IS
BEGIN
  PROCESS (SHFTOP,ADATA, ADJ4,SFTOUT)
    variable state : LC3b_word;
    variable count : integer;
  BEGIN
    case SHFTOP is
      when SHFT_SRL =>
        state := std_logic_vector("srl"(unsigned(ADATA), to_integer(unsigned(ADJ4))));
      when SHFT_SLL =>
        state := std_logic_vector("sll"(unsigned(ADATA), to_integer(unsigned(ADJ4))));
      when SHFT_SRA =>
        COUNT := to_integer(unsigned(ADJ4(3 downto 0)));
          if (ADJ4(3 downto 0) = "0000") then
            state := ADATA; --Perform no shifting
          else
            state(15 - COUNT downto 0) := ADATA(15 downto COUNT);
            state(15 downto (15 - COUNT + 1)) := (others => ADATA(15));
          end if;
    when others =>
      state := (OTHERS => 'X');
    end case;
    SFTOUT <= state after delay_shifter;
  END PROCESS;
END ARCHITECTURE untitled;
