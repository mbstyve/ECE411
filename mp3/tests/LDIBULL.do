echo "--- Executing initialization force file for ../mp3/ECE411/mp3/tests/LDIBULL.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5
echo "Initializing the processor."
force /start_h 0 @0
force /start_h 1 @10

-- Test case: lowering start_h should not impact the function of the processor
force /start_h 0 @ 100

echo "Done initializing processor, loading ../mp3/ECE411/mp3/tests/LDIBULL.asm program code."
run 5
change /mp3_cpu/TM/VHDL_MEMORY/mem(0) X"06"
change /mp3_cpu/TM/VHDL_MEMORY/mem(1) X"E2"
change /mp3_cpu/TM/VHDL_MEMORY/mem(2) X"0B"
change /mp3_cpu/TM/VHDL_MEMORY/mem(3) X"E6"
change /mp3_cpu/TM/VHDL_MEMORY/mem(4) X"45"
change /mp3_cpu/TM/VHDL_MEMORY/mem(5) X"76"
change /mp3_cpu/TM/VHDL_MEMORY/mem(6) X"45"
change /mp3_cpu/TM/VHDL_MEMORY/mem(7) X"A8"
change /mp3_cpu/TM/VHDL_MEMORY/mem(8) X"21"
change /mp3_cpu/TM/VHDL_MEMORY/mem(9) X"15"
change /mp3_cpu/TM/VHDL_MEMORY/mem(10) X"A3"
change /mp3_cpu/TM/VHDL_MEMORY/mem(11) X"1A"
change /mp3_cpu/TM/VHDL_MEMORY/mem(12) X"45"
change /mp3_cpu/TM/VHDL_MEMORY/mem(13) X"BA"
change /mp3_cpu/TM/VHDL_MEMORY/mem(14) X"01"
change /mp3_cpu/TM/VHDL_MEMORY/mem(15) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(16) X"01"
change /mp3_cpu/TM/VHDL_MEMORY/mem(17) X"01"
change /mp3_cpu/TM/VHDL_MEMORY/mem(18) X"10"
change /mp3_cpu/TM/VHDL_MEMORY/mem(19) X"10"
change /mp3_cpu/TM/VHDL_MEMORY/mem(20) X"11"
change /mp3_cpu/TM/VHDL_MEMORY/mem(21) X"11"
change /mp3_cpu/TM/VHDL_MEMORY/mem(22) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(23) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(24) X"AA"
change /mp3_cpu/TM/VHDL_MEMORY/mem(25) X"AA"
change /mp3_cpu/TM/VHDL_MEMORY/mem(26) X"08"
change /mp3_cpu/TM/VHDL_MEMORY/mem(27) X"80"
change /mp3_cpu/TM/VHDL_MEMORY/mem(28) X"04"
change /mp3_cpu/TM/VHDL_MEMORY/mem(29) X"40"
run 5
echo "Done loading ../mp3/ECE411/mp3/tests/LDIBULL.asm program code."
