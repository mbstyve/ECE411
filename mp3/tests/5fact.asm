 SEGMENT  CodeSegment:
	;; R0 is assumed to contain zero, because of the construction
	;;  of the register file.  (After reset, all registers contain
	;;  zero.)
    ;; R1 is the current iteration of the factorial, upper loop counter
    ;; R2 is the temp result so far
    ;; R3 is on
    ;; R4 is negative one, -1
    ;; R5 is the final result
    ;; R6 is an inner loop counter

   LDR  R1, R0, FACT	; R1 <= '5'
	;; Note that the "ONE" above is a data label.  It is defined near
	;;  the bottom of the file.
   LDR  R2, R0, ZERO  ; R2 <= '0'
   
   LDR  R3, R0, ONE     ; Getting the twos comps of 1
   NOT  R4, R3
   ADD  R4, R3, R4      ; Gets us -1 to use in R4
   
   LDR  R5, R0, FACT    ; Load the number to factorial into R5 for the 1st iteration
   
UP_LOOP:

   ADD R1, R4, R1       ; R1 <= R1 + -1; Decrement the upper loop counter
   ADD R6, R1, R0       ; R6 <= R1 ; Store current loop number to R6 for a second counter
   BRnz HALT            ; Finished when this counter (R1) is 0
IN_LOOP:
   ADD R2, R2, R5       ; Add current result to previous result
   ADD R6, R6, R4       ; Decrement this inner loop counter, R6
   
   BRp IN_LOOP          ; Loop back up if still positive

   ADD R5, R2, R0       ; Save the new result into R5 to use at the beginning of LOOP1
   LDR R2, R0, ZERO     ; Zero out our temporary sum storage
   
   BR UP_LOOP
                             
                
HALT:				; Infinite loop to keep the processor
    BRnzp HALT			; from trying to execute the data below.
				
ONE:	DATA2 4x0001
ZERO:	DATA2 4x0000
FACT:   DATA2 4x0005
