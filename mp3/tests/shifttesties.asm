SEGMENT BOOT:
    ADD R1, R0, 7
    LDR R2, R0, BLA
    LSHF R3, R1, 2
    RSHFL R3, R2, 2
    RSHFA R4, R2, 2
    
    FIN:
        BRnzp FIN
        NOP
        NOP
        NOP
        NOP
    
    
    BLA: DATA2 4xFFFF
