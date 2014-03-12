echo "--- Executing initialization force file for ../mp2.2/finaltest.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5
echo "Initializing the processor."
force /start_h 0 @0
force /start_h 1 @10

-- Test case: lowering start_h should not impact the function of the processor
force /start_h 0 @ 100

echo "Done initializing processor, loading ../mp2.2/finaltest.asm program code."
run 5
change /mp2_cpu/dram/pdram/vhdl_memory/mem(0) X"2F"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(1) X"E0"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(2) X"6E"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(3) X"E2"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(4) X"AD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(5) X"E4"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(6) X"8A"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(7) X"6E"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(8) X"4B"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(9) X"6E"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(10) X"88"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(11) X"6C"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(12) X"0E"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(13) X"6E"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(14) X"0E"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(15) X"6C"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(16) X"4F"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(17) X"6C"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(18) X"8C"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(19) X"6C"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(20) X"8C"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(21) X"6C"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(22) X"8C"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(23) X"6C"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(24) X"81"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(25) X"6A"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(26) X"46"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(27) X"28"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(28) X"44"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(29) X"78"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(30) X"83"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(31) X"6A"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(32) X"4A"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(33) X"32"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(34) X"42"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(35) X"72"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(36) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(37) X"34"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(38) X"61"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(39) X"18"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(40) X"0A"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(41) X"39"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(42) X"02"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(43) X"E0"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(44) X"29"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(45) X"0E"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(46) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(47) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(48) X"0D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(49) X"60"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(50) X"0D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(51) X"60"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(52) X"0D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(53) X"60"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(54) X"0D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(55) X"60"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(56) X"0D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(57) X"60"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(58) X"0D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(59) X"60"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(60) X"0D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(61) X"60"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(62) X"0D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(63) X"60"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(64) X"C2"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(65) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(66) X"48"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(67) X"01"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(68) X"22"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(69) X"11"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(70) X"44"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(71) X"33"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(72) X"66"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(73) X"55"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(74) X"88"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(75) X"77"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(76) X"AA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(77) X"99"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(78) X"CC"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(79) X"BB"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(80) X"0D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(81) X"60"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(82) X"0D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(83) X"60"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(84) X"0D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(85) X"60"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(86) X"0D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(87) X"60"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(88) X"0D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(89) X"60"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(90) X"0D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(91) X"60"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(92) X"0D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(93) X"60"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(94) X"0D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(95) X"60"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(96) X"6D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(97) X"66"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(98) X"7D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(99) X"67"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(100) X"8D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(101) X"68"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(102) X"9D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(103) X"69"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(104) X"AD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(105) X"6A"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(106) X"BD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(107) X"6B"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(108) X"CD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(109) X"6C"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(110) X"DD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(111) X"6D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(112) X"0D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(113) X"60"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(114) X"0D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(115) X"60"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(116) X"0D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(117) X"60"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(118) X"0D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(119) X"60"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(120) X"0D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(121) X"60"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(122) X"0D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(123) X"60"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(124) X"0D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(125) X"60"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(126) X"0D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(127) X"60"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(128) X"17"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(129) X"E2"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(130) X"56"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(131) X"E4"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(132) X"10"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(133) X"70"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(134) X"51"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(135) X"72"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(136) X"92"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(137) X"74"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(138) X"14"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(139) X"74"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(140) X"51"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(141) X"6E"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(142) X"95"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(143) X"6A"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(144) X"12"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(145) X"6C"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(146) X"56"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(147) X"2A"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(148) X"A1"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(149) X"18"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(150) X"12"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(151) X"2D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(152) X"46"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(153) X"1D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(154) X"08"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(155) X"AA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(156) X"46"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(157) X"1D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(158) X"09"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(159) X"BC"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(160) X"E0"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(161) X"56"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(162) X"ED"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(163) X"16"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(164) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(165) X"3C"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(166) X"21"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(167) X"18"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(168) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(169) X"29"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(170) X"05"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(171) X"78"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(172) X"29"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(173) X"0E"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(174) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(175) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(176) X"20"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(177) X"52"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(178) X"20"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(179) X"52"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(180) X"20"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(181) X"52"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(182) X"20"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(183) X"52"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(184) X"20"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(185) X"52"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(186) X"20"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(187) X"52"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(188) X"20"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(189) X"52"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(190) X"20"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(191) X"52"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(192) X"20"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(193) X"52"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(194) X"20"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(195) X"52"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(196) X"20"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(197) X"52"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(198) X"20"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(199) X"52"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(200) X"20"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(201) X"52"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(202) X"20"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(203) X"52"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(204) X"20"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(205) X"52"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(206) X"20"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(207) X"52"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(208) X"20"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(209) X"52"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(210) X"20"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(211) X"52"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(212) X"20"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(213) X"52"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(214) X"20"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(215) X"52"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(216) X"20"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(217) X"52"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(218) X"20"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(219) X"52"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(220) X"20"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(221) X"52"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(222) X"20"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(223) X"52"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(224) X"A0"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(225) X"5A"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(226) X"B0"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(227) X"5B"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(228) X"C0"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(229) X"5C"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(230) X"D0"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(231) X"5D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(232) X"E0"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(233) X"5E"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(234) X"F0"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(235) X"5F"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(236) X"10"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(237) X"51"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(238) X"20"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(239) X"52"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(240) X"20"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(241) X"52"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(242) X"20"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(243) X"52"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(244) X"20"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(245) X"52"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(246) X"20"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(247) X"52"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(248) X"20"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(249) X"52"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(250) X"20"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(251) X"52"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(252) X"20"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(253) X"52"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(254) X"20"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(255) X"52"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(256) X"42"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(257) X"6A"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(258) X"01"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(259) X"68"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(260) X"00"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(261) X"6C"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(262) X"04"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(263) X"2C"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(264) X"86"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(265) X"68"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(266) X"FF"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(267) X"16"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(268) X"F9"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(269) X"03"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(270) X"FF"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(271) X"0F"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(272) X"DD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(273) X"BA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(274) X"DD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(275) X"BA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(276) X"2D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(277) X"B2"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(278) X"3D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(279) X"B3"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(280) X"4D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(281) X"B4"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(282) X"5D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(283) X"B5"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(284) X"6D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(285) X"B6"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(286) X"7D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(287) X"B7"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(288) X"8D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(289) X"B8"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(290) X"9D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(291) X"B9"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(292) X"AD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(293) X"BA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(294) X"BD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(295) X"BB"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(296) X"CD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(297) X"BC"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(298) X"DD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(299) X"BD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(300) X"ED"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(301) X"BE"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(302) X"FD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(303) X"BF"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(304) X"AD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(305) X"BA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(306) X"AD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(307) X"BA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(308) X"AD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(309) X"BA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(310) X"AD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(311) X"BA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(312) X"AD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(313) X"BA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(314) X"AD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(315) X"BA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(316) X"AD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(317) X"BA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(318) X"AD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(319) X"BA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(320) X"AD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(321) X"BA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(322) X"AD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(323) X"BA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(324) X"AD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(325) X"BA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(326) X"AD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(327) X"BA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(328) X"AD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(329) X"BA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(330) X"AD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(331) X"BA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(332) X"AD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(333) X"BA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(334) X"AD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(335) X"BA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(336) X"AD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(337) X"BA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(338) X"AD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(339) X"BA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(340) X"AD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(341) X"BA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(342) X"AD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(343) X"BA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(344) X"AD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(345) X"BA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(346) X"AD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(347) X"BA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(348) X"AD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(349) X"BA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(350) X"AD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(351) X"BA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(352) X"8D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(353) X"B8"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(354) X"9D"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(355) X"B9"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(356) X"AD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(357) X"BA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(358) X"BD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(359) X"BB"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(360) X"CD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(361) X"BC"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(362) X"DD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(363) X"BD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(364) X"ED"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(365) X"BE"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(366) X"FD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(367) X"BF"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(368) X"DD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(369) X"BA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(370) X"DD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(371) X"BA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(372) X"DD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(373) X"BA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(374) X"DD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(375) X"BA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(376) X"DD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(377) X"BA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(378) X"DD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(379) X"BA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(380) X"DD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(381) X"BA"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(382) X"DD"
change /mp2_cpu/dram/pdram/vhdl_memory/mem(383) X"BA"
run 5
echo "Done loading ../mp2.2/finaltest.asm program code."
