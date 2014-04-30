SEGMENT BOOT:
    ADD R1, R0, 1 ;Immediate add to R1
    ADD R2, R1, 2 ;R2<=3
    ADD R3, R1, 3   ;R3<=4
    ADD R4, R1, 6   ; R4 <= 7
    
    FIN:
    BRnzp FIN
    NOP
    NOP
    NOP
    NOP
