SEGMENT BOOT:
    ADD R1, R0, 14
    ADD R1, R1, 8 
    AND R3, R1, 4
    AND R4, R1, 7
    ADD R6, R1, 2
    JMP R6
    NOP
    NOP
    NOP
    NOP
    AND R5, R2, R1
SKIP:
    AND R1, R1, 0
    
FIN:
    BRnzp FIN  
    NOP
    NOP
    NOP
    NOP
    NOP   
