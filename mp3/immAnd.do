echo "--- Executing initialization force file for ../ECE411/mp3/immAnd.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5
echo "Initializing the processor."
force /start_h 0 @0
force /start_h 1 @10

-- Test case: lowering start_h should not impact the function of the processor
force /start_h 0 @ 100

echo "Done initializing processor, loading ../ECE411/mp3/immAnd.asm program code."
run 5
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(0) X"27"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(1) X"12"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(2) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(3) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(4) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(5) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(6) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(7) X"00"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(8) X"63"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(9) X"54"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(10) X"64"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(11) X"56"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(12) X"67"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(13) X"58"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(14) X"81"
change /mp3_cpu/L1_Cache/PM/vhdl_memory/mem(15) X"5A"
run 5
echo "Done loading ../ECE411/mp3/immAnd.asm program code."
