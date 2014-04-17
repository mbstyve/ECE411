SEGMENT BOOT:
    ADD R1, R0, 7
    NOP
    NOP
    NOP
    ADD R2, R0, 10 
    AND R3, R1, 4
    AND R4, R1, 7
    ADD R6, R1, 7
    NOP
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
    AND R5, R2, R1 ;Shouldn't see anything in r5 change if it works.
    NOP
    NOP
    NOP
    NOP
    NOP
SKIP:
    AND R1, R1, 0
