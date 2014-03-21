echo "--- Executing initialization force file for ../mp3/ECE411/mp3/oneInstr.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5
echo "Initializing the processor."
force /start_h 0 @0
force /start_h 1 @10

-- Test case: lowering start_h should not impact the function of the processor
force /start_h 0 @ 100

echo "Done initializing processor, loading ../mp3/ECE411/mp3/oneInstr.asm program code."
run 5
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(0) X"13"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(1) X"62"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(2) X"00"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(3) X"00"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(4) X"00"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(5) X"00"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(6) X"00"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(7) X"00"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(8) X"00"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(9) X"00"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(10) X"00"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(11) X"00"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(12) X"14"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(13) X"64"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(14) X"00"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(15) X"00"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(16) X"00"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(17) X"00"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(18) X"00"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(19) X"00"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(20) X"00"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(21) X"00"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(22) X"00"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(23) X"00"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(24) X"14"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(25) X"72"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(26) X"00"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(27) X"00"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(28) X"00"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(29) X"00"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(30) X"00"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(31) X"00"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(32) X"00"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(33) X"00"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(34) X"00"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(35) X"00"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(36) X"00"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(37) X"00"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(38) X"FF"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(39) X"FF"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(40) X"02"
change /mp3_cpu/PerfectMem/VHDL_MEMORY/mem(41) X"00"
run 5
echo "Done loading ../mp3/ECE411/mp3/oneInstr.asm program code."
