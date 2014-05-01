SEGMENT BOOT:
    ADD R1, R1, 1
    ADD R2, R2, 2
    ADD R3, R3, 3
    ADD R4, R4, 4
    ADD R6, R6, 6
    ADD R0, R2, 0
    JSR SKIP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    ADD R5, R2, R1 ;Shouldn't see anything in r5 change if it works.
    NOP
    NOP
    NOP
    NOP
    NOP
SKIP:
    AND R1, R1, 0
    RET
    NOP
    NOP
    NOP
    NOP
    NOP
FIN:
    BRnzp FIN
    NOP
    NOP
    NOP
    NOP
    NOP
