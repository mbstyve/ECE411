SEGMENT BOOT:
	BRnzp ldr_str_test 	; 0 BRANCH TO x10, ldr_str_test
				; 2
				; 4
				; 6
				; 8
				; A
				; C
DSP:	DATA2 DataSeg		; E
	; cache line boundary

ldr_str_test:
	LDR R0, R0, DSP		; 10	R0 <- x80 (DataSeg)
				; 12
	 			; 14
				; 16
				; 18
				; 1A
	LDR R1, R0, W		; 1C	R1 <- X09
	LDR R3, R0, Y		; 1E	R3 <- X01
	; cache line boundary	
	LDR R2, R0, X		; 20	R2 <- X02
	LDR R4, R0, Z		; 22	R4 <- X03
				; 24
	STR R1, R0, Z		; 26	R1 -> Z Z <- X09
	STR R2, R0, Y		; 28	R2 -> Y Y <- X02
	STR R3, R0, X		; 2A	R3 -> X X <- X01
	STR R4, R0, W		; 2C 	R4 -> W W <- X03
				; 2E	
	; cache line boundary
	LDR R1, R0, W		; 30	R1 <- X03
	LDR R2, R0, X		; 32	R2 <- X01
	LDR R3, R0, Y		; 34	R3 <- X02
	LDR R4, R0, Z		; 36	R4 <- X09
	BRnzp fetch_stall_test	; 38	BR TO PC = 5E
				; 3A
				; 3C
				; 3E
	; cache line boundary
				; 40
				; 42
		
	
	
	
	
	
	; cache line boundary
				; 50
	
				; 54
	
				; 58
	
				; 5C
fetch_stall_test:
	ADD R5, R1, R2		; 5E	R5 <- R1+R2 = X03 + X01 = X04
	; cache line boundary
	ADD R6, R3, R4		; 60	R6 <- R3+R4 = X02 + X09 = X0B
				; 62
				; 64
	 			; 66
				; 68
	STR R5, R0, VICTIM	; 6A	VICTIM <- R5 = X04
	ADD R7, R5, R6 		; 6C	R7 <- R5+R6 = X0F
				; 6E
	; cache line boundary
				; 70
				; 72
				; 74
	STR R7, R0, TOTAL	; 76	TOTAL <- R7 = X0F
	LDR R1, R0, TOTAL	; 78	R1 <- X0F
inf:
	BRnzp inf		; 7A
				; 7C
				; 7E

; cache line boundary
SEGMENT DataSeg:
				; 80


				; 86

				; 8A
W:	DATA2 4x0009		; 8C FINAL: x03
X:	DATA2 4x0002		; 8E FINAL: x01
; cache line boundary
Y:	DATA2 4x0001		; 90 FINAL: x02
Z:	DATA2 4x0003		; 92 FINAL: x09
				; 94




				; 9e
; cache line boundary
TOTAL:	DATA2 4x0000		; A0 FINAL: X0F






				; AE
; cache line boundary
VICTIM: DATA2 4x0000		; B0 FINAL: X04
				; B2






;
; FINAL REGISTER FILE
; R0	x00 
; R1	x0F
; R2  	x01
; R3	x02
; R4	x09
; R5	x04
; R6	x0B
; R7	x0F
