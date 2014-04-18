ORIGIN
SEGMENT  CodeSegment:
    LDR R1, R0, ONE
    ADD R2, R1, 3
    NOP
    NOP
    NOP
YOLO:
    BRnzp YOLO
    NOP
    NOP
    NOP
    NOP
    ONE: DATA2 4x0001
   
   
