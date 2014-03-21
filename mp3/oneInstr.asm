ORIGIN
SEGMENT  CodeSegment:
   LDR  R1, R0, ONE		; R1 <= 1
   NOP
   NOP
   NOP
   NOP
   NOP
   LDR R2, R0, TWO      ; R2 <= 2
   NOP
   NOP
   NOP
   NOP
   NOP
   STR R1, R0, TWO       ; R3 <= 1+2
   NOP
   NOP
   NOP
   NOP
   NOP
   NOP
   ONE:	DATA2 4xFFFF
   TWO: DATA2 4x0002
   
   
