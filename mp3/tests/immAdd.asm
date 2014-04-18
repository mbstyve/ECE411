SEGMENT BOOT:
    ADD R1, R0, 1 ;Immediate add to R1
    ADD R2, R0, 2 ;Again to R2, different store register
    NOP
    NOP
    NOP
    NOP
    ADD R1, R1, 4   ;After NOPS, this comes out to 5
    ADD R1, R1, 6   ; Thanks to dependencies and no forwarding, this comes out to 7. Good test for forwarding later.
