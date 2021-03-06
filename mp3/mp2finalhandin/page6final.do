onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label RESET_L /mp2_cpu/RESET_L
add wave -noupdate -label START_H /mp2_cpu/START_H
add wave -noupdate -label CLK /mp2_cpu/clk
add wave -noupdate -label PCout /mp2_cpu/theDatapath/PCout
add wave -noupdate -label ADDRESS /mp2_cpu/theDatapath/ADDRESS
add wave -noupdate -label MWRITEL_L /mp2_cpu/ControlUnit/MWRITEL_L
add wave -noupdate -label MWRITEH_L /mp2_cpu/ControlUnit/MWRITEH_L
add wave -noupdate -label MREAD_L /mp2_cpu/ControlUnit/MREAD_L
add wave -noupdate -label DATAIN /mp2_cpu/theDatapath/DATAIN
add wave -noupdate -label DATAOUT /mp2_cpu/theDatapath/DATAOUT
add wave -noupdate -label CURRENT_STATE /mp2_cpu/ControlUnit/current_state
add wave -noupdate -label RAM -expand /mp2_cpu/theDatapath/aRegFile/RAM
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {81400 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 277
configure wave -valuecolwidth 100
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
WaveRestoreZoom {81386 ns} {82279 ns}
