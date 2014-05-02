echo "--- Executing initialization force file for ../mp3/ECE411/mp3/tests/mp32tc_given.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5
echo "Initializing the processor."
force /start_h 0 @0
force /start_h 1 @10

-- Test case: lowering start_h should not impact the function of the processor
force /start_h 0 @ 100

echo "Done initializing processor, loading ../mp3/ECE411/mp3/tests/mp32tc_given.asm program code."
run 5
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(0) X"01"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(1) X"0E"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(2) X"2E"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(3) X"00"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(4) X"01"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(5) X"60"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(6) X"00"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(7) X"62"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(8) X"02"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(9) X"66"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(10) X"01"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(11) X"64"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(12) X"03"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(13) X"68"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(14) X"03"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(15) X"72"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(16) X"02"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(17) X"74"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(18) X"01"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(19) X"76"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(20) X"00"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(21) X"78"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(22) X"00"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(23) X"62"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(24) X"01"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(25) X"64"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(26) X"02"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(27) X"66"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(28) X"03"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(29) X"68"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(30) X"00"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(31) X"0E"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(32) X"42"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(33) X"1A"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(34) X"C4"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(35) X"1C"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(36) X"05"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(37) X"7A"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(38) X"46"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(39) X"1F"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(40) X"04"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(41) X"7E"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(42) X"04"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(43) X"62"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(44) X"FF"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(45) X"0F"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(46) X"09"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(47) X"00"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(48) X"02"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(49) X"00"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(50) X"01"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(51) X"00"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(52) X"03"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(53) X"00"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(54) X"00"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(55) X"00"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(56) X"00"
change /mp3_cpu/L1_MEM/PM/VHDL_MEMORY/mem(57) X"00"
run 5
echo "Done loading ../mp3/ECE411/mp3/tests/mp32tc_given.asm program code."
