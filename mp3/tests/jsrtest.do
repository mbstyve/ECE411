echo "--- Executing initialization force file for ../mp3/ECE411/mp3/tests/jsrtest.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5
echo "Initializing the processor."
force /start_h 0 @0
force /start_h 1 @10

-- Test case: lowering start_h should not impact the function of the processor
force /start_h 0 @ 100

echo "Done initializing processor, loading ../mp3/ECE411/mp3/tests/jsrtest.asm program code."
run 5
change /mp3_cpu/TM/VHDL_MEMORY/mem(0) X"61"
change /mp3_cpu/TM/VHDL_MEMORY/mem(1) X"12"
change /mp3_cpu/TM/VHDL_MEMORY/mem(2) X"A2"
change /mp3_cpu/TM/VHDL_MEMORY/mem(3) X"14"
change /mp3_cpu/TM/VHDL_MEMORY/mem(4) X"E3"
change /mp3_cpu/TM/VHDL_MEMORY/mem(5) X"16"
change /mp3_cpu/TM/VHDL_MEMORY/mem(6) X"24"
change /mp3_cpu/TM/VHDL_MEMORY/mem(7) X"19"
change /mp3_cpu/TM/VHDL_MEMORY/mem(8) X"A6"
change /mp3_cpu/TM/VHDL_MEMORY/mem(9) X"1D"
change /mp3_cpu/TM/VHDL_MEMORY/mem(10) X"A0"
change /mp3_cpu/TM/VHDL_MEMORY/mem(11) X"10"
change /mp3_cpu/TM/VHDL_MEMORY/mem(12) X"1F"
change /mp3_cpu/TM/VHDL_MEMORY/mem(13) X"48"
change /mp3_cpu/TM/VHDL_MEMORY/mem(14) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(15) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(16) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(17) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(18) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(19) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(20) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(21) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(22) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(23) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(24) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(25) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(26) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(27) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(28) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(29) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(30) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(31) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(32) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(33) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(34) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(35) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(36) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(37) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(38) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(39) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(40) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(41) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(42) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(43) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(44) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(45) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(46) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(47) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(48) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(49) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(50) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(51) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(52) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(53) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(54) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(55) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(56) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(57) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(58) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(59) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(60) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(61) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(62) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(63) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(64) X"81"
change /mp3_cpu/TM/VHDL_MEMORY/mem(65) X"1A"
change /mp3_cpu/TM/VHDL_MEMORY/mem(66) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(67) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(68) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(69) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(70) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(71) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(72) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(73) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(74) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(75) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(76) X"60"
change /mp3_cpu/TM/VHDL_MEMORY/mem(77) X"52"
change /mp3_cpu/TM/VHDL_MEMORY/mem(78) X"C0"
change /mp3_cpu/TM/VHDL_MEMORY/mem(79) X"C1"
change /mp3_cpu/TM/VHDL_MEMORY/mem(80) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(81) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(82) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(83) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(84) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(85) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(86) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(87) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(88) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(89) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(90) X"FF"
change /mp3_cpu/TM/VHDL_MEMORY/mem(91) X"0F"
change /mp3_cpu/TM/VHDL_MEMORY/mem(92) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(93) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(94) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(95) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(96) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(97) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(98) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(99) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(100) X"00"
change /mp3_cpu/TM/VHDL_MEMORY/mem(101) X"00"
run 5
echo "Done loading ../mp3/ECE411/mp3/tests/jsrtest.asm program code."
