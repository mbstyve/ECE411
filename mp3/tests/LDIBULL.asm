SEGMENT BOOT:
    LEA R1, BULLSHIT
    ;ADD R1, R1, 1
    LEA R3, COW0
    STR R3, R1, BULL10
    ;LDB R2, R1, BULL10 ;Loads 0011 into R2
    LDI R4, R1, BULL10
    ADD R2, R4, 1 ;Makes r2 0100
    ADD R5, R2, 3
    STI R5, R1, BULL10
    
FIN:
    BRnzp FIN
    NOP
    NOP
    NOP
    NOP
    NOP

    
SEGMENT BULLSHIT:
BULL0:    DATA2 4X0001 ;0
BULL2:    DATA2 4x0101 ;2
BULL4:    DATA2 4x1010 ;4
BULL6:    DATA2 4x1111 ;6
BULL8:    DATA2 4x0000 ;8
BULL10:   DATA2 4xAAAA ;10 3A

SEGMENT HORSE:
COW0    : DATA2 4x8008 ; line 60
SHIT2   : DATA2 4x4004 ;
    
    
;;LDI puts addr of COW0 into R1 + BULL 10 so the LDI will get cow0
;;STI will store in the cow0 spot
