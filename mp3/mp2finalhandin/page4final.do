onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label Way0Data -expand /mp2_cpu/DRAM/Cache_DP/Way00/Data
add wave -noupdate -label Way0Tags -expand /mp2_cpu/DRAM/Cache_DP/Way0Tags/Data
add wave -noupdate -label PCout /mp2_cpu/theDatapath/PCout
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {81748 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 296
configure wave -valuecolwidth 75
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {81730 ns} {82628 ns}
