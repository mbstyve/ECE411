SEGMENT CODESEGMENT:
    ADD R1, R0, 1
    TRAP BEAR
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
    AND R1, R0, 0
    BRnzp BAD
    
    
    
    BOOBS:
        LDR R2, R1, GOOD
        BRnzp FIN
    
    
    
    BAD:
       LDR R2, R0, BADD
       BRnzp FIN
       
    FIN:
        BRnzp FIN
        
        
    SEGMENT BULLSHIT:
    Bear:	      DATA2 BOOBS    
    GOOD:    DATA2 4X600D
    BADD:    DATA2 4XBADD

