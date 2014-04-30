echo "--- Executing initialization force file for ../mp3/ECE411/mp3/tests/leatest.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5
echo "Initializing the processor."
force /start_h 0 @0
force /start_h 1 @10

-- Test case: lowering start_h should not impact the function of the processor
force /start_h 0 @ 100

echo "Done initializing processor, loading ../mp3/ECE411/mp3/tests/leatest.asm program code."
run 5
change /mp3_cpu/TM/VHDL_MEMORY/mem(0) X"02"
change /mp3_cpu/TM/VHDL_MEMORY/mem(1) X"E2"
change /mp3_cpu/TM/VHDL_MEMORY/mem(2) X"40"
change /mp3_cpu/TM/VHDL_MEMORY/mem(3) X"62"
change /mp3_cpu/TM/VHDL_MEMORY/mem(4) X"61"
change /mp3_cpu/TM/VHDL_MEMORY/mem(5) X"12"
change /mp3_cpu/TM/VHDL_MEMORY/mem(6) X"01"
change /mp3_cpu/TM/VHDL_MEMORY/mem(7) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(8) X"01"
change /mp3_cpu/TM/VHDL_MEMORY/mem(9) X"01"
change /mp3_cpu/TM/VHDL_MEMORY/mem(10) X"10"
change /mp3_cpu/TM/VHDL_MEMORY/mem(11) X"10"
change /mp3_cpu/TM/VHDL_MEMORY/mem(12) X"11"
change /mp3_cpu/TM/VHDL_MEMORY/mem(13) X"11"
change /mp3_cpu/TM/VHDL_MEMORY/mem(14) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(15) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(16) X"AA"
change /mp3_cpu/TM/VHDL_MEMORY/mem(17) X"AA"
change /mp3_cpu/TM/VHDL_MEMORY/mem(18) X"08"
change /mp3_cpu/TM/VHDL_MEMORY/mem(19) X"80"
change /mp3_cpu/TM/VHDL_MEMORY/mem(20) X"04"
change /mp3_cpu/TM/VHDL_MEMORY/mem(21) X"40"
run 5
echo "Done loading ../mp3/ECE411/mp3/tests/leatest.asm program code."
