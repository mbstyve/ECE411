echo "--- Executing initialization force file for ../ECE411/mp3/jsrtest.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5
echo "Initializing the processor."
force /start_h 0 @0
force /start_h 1 @10

-- Test case: lowering start_h should not impact the function of the processor
force /start_h 0 @ 100

echo "Done initializing processor, loading ../ECE411/mp3/jsrtest.asm program code."
run 5
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(0) X"27"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(1) X"12"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(2) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(3) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(4) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(5) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(6) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(7) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(8) X"2A"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(9) X"14"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(10) X"64"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(11) X"56"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(12) X"67"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(13) X"58"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(14) X"67"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(15) X"1C"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(16) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(17) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(18) X"1F"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(19) X"48"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(20) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(21) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(22) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(23) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(24) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(25) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(26) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(27) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(28) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(29) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(30) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(31) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(32) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(33) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(34) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(35) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(36) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(37) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(38) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(39) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(40) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(41) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(42) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(43) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(44) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(45) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(46) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(47) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(48) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(49) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(50) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(51) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(52) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(53) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(54) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(55) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(56) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(57) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(58) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(59) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(60) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(61) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(62) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(63) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(64) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(65) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(66) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(67) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(68) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(69) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(70) X"81"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(71) X"5A"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(72) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(73) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(74) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(75) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(76) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(77) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(78) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(79) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(80) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(81) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(82) X"60"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(83) X"52"
run 5
echo "Done loading ../ECE411/mp3/jsrtest.asm program code."
