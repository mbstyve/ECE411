SEGMENT BOOT:
    LEA R1, BULLSHIT
    LDB R2, R1, 2
    STB R2, R1, 7
    
    FIN:
    BRnzp FIN
    NOP
    NOP
    NOP
    NOP






BULLSHIT:
    DATA2 4X0001
    DATA2 4x600D
    DATA2 4xFFFF
    BLA: DATA2 4x1111
    
