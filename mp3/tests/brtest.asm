 SEGMENT  CodeSegment:
    ADD R1, R0, 10
    NOP
    NOP
    NOP
    SUBTRACT:
    ADD R1, R1, -1
    NOP
    NOP
    NOP
    NOP
    BRp SUBTRACT
    NOP
    NOP
    NOP
    NOP
    HALT:
    BRnzp HALT
    NOP
    NOP
    NOP
    NOP
