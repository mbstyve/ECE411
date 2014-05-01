echo "--- Executing initialization force file for ../mp3/ECE411/mp3/tests/LDBUTS.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5
echo "Initializing the processor."
force /start_h 0 @0
force /start_h 1 @10

-- Test case: lowering start_h should not impact the function of the processor
force /start_h 0 @ 100

echo "Done initializing processor, loading ../mp3/ECE411/mp3/tests/LDBUTS.asm program code."
run 5
change /mp3_cpu/TM/VHDL_MEMORY/mem(0) X"07"
change /mp3_cpu/TM/VHDL_MEMORY/mem(1) X"E2"
change /mp3_cpu/TM/VHDL_MEMORY/mem(2) X"42"
change /mp3_cpu/TM/VHDL_MEMORY/mem(3) X"24"
change /mp3_cpu/TM/VHDL_MEMORY/mem(4) X"47"
change /mp3_cpu/TM/VHDL_MEMORY/mem(5) X"34"
change /mp3_cpu/TM/VHDL_MEMORY/mem(6) X"FF"
change /mp3_cpu/TM/VHDL_MEMORY/mem(7) X"0F"
change /mp3_cpu/TM/VHDL_MEMORY/mem(8) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(9) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(10) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(11) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(12) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(13) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(14) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(15) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(16) X"01"
change /mp3_cpu/TM/VHDL_MEMORY/mem(17) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(18) X"0D"
change /mp3_cpu/TM/VHDL_MEMORY/mem(19) X"60"
change /mp3_cpu/TM/VHDL_MEMORY/mem(20) X"FF"
change /mp3_cpu/TM/VHDL_MEMORY/mem(21) X"FF"
change /mp3_cpu/TM/VHDL_MEMORY/mem(22) X"11"
change /mp3_cpu/TM/VHDL_MEMORY/mem(23) X"11"
run 5
echo "Done loading ../mp3/ECE411/mp3/tests/LDBUTS.asm program code."
