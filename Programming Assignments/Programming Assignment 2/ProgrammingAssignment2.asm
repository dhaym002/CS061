;=========================================================================
; Name & Email must be EXACTLY as in Gradescope roster!
; Name: Daisha Haymon
; Email: dhaym002@ucr.edu
; 
; Assignment name: Assignment 2
; Lab section: 001
; TA: Arielle
; 
; I hereby certify that I have not received assistance on this assignment,
; or used code, from ANY outside source other than the instruction team
; (apart from what was provided in the starter file).
;
;=========================================================================

.ORIG x3000			; Program begins here
;-------------
;Instructions
;-------------

;----------------------------------------------
;output prompt
;----------------------------------------------	

LEA R0, intro			; get starting address of prompt string
PUTS			    	; Invokes BIOS routine to output string
INPUT_LOOP
GETC
LD R1, ASCII_0 ; 
NOT R1, R1     ;
ADD R1, R1, #1 ;
ADD R2, R0, R1 ;
BRn INPUT_LOOP
END_INPUT_LOOP
STI R0, ValueOneLocation
LDI R0, ValueOneLocation
OUT
LD R0, newline
OUT

INPUT_LOOP_TWO
GETC
LD R1, ASCII_0 ;
NOT R1, R1     ; 
ADD R1, R1, #1 ; 
ADD R2, R0, R1 ; 
BRn INPUT_LOOP_TWO
END_INPUT_LOOP_TWO
STI R0, ValueTwoLocation
LDI R0, ValueTwoLocation
OUT
LD R0, newline
OUT

; Print Equation Sequence

LD R0, newline 
LDI R0, ValueOneLocation
OUT
LD R0, space
OUT
LD R0, minus
OUT
LD R0, space
OUT
LDI R0, ValueTwoLocation
OUT
LD R0, space
OUT
LD R0, equals
OUT
LD R0, space
OUT

; converting R2 to dec
ADD, R5, R5, #0
LD R5, ASCII_0
LDI R2, ValueOneLocation
DO_WHILE_LOOP1
    ADD R2, R2 #-1
    ADD, R5, R5, #-1
BRp DO_WHILE_LOOP1
END_DO_WHILE_LOOP1
STI R2, ValueOneLocation

; converting R3 to dec

LDI R3, ValueTwoLocation

LD R5, ASCII_0 
DO_WHILE_LOOP2
    ADD R3, R3 #-1
    ADD, R5, R5, #-1
BRp DO_WHILE_LOOP2
END_DO_WHILE_LOOP2
STI R3, ValueTwoLocation


NOT R3, R3
ADD R3, R3, #1
STI R3, ValueTwoLocation

;ADD R4, R4, #0

ADD R4, R2, R3
STI R4, Result
BRzp SKIP

; ADDITION LOOP

;SUB_LOOP
;    ADD R2, R2, #-1
;    ADD R1, R1, #1
;    ADD R3, R3, #-1
;BRp SUB_LOOP
;END_SUB_LOOP
;STI R1, Subtracted
;STI R2, ProductSubOne
;NOT R2, R2
;ADD R2, R2, #1
;STI R2, ProductSubOne

; see if R1 == value two
;LD R2, Subtracted
;LD R3, ValueTwoLocation

;NOT R2, R2
;ADD R2, R2, #-1

;SUBR2FromR3
;    ADD R3, R3, #-1
;    ADD R2, R2, #-1
;BRp SUBR2FromR3
;END_SUBR2FromR3
;ADD R0, R3, #0
;BRz JUMP


;ADD R2, R1, #0
;NOT R2, R2
;LDI R1, ValueOneLocation
;ADD R4, R1, R2
;BRnz SKIP

;LDI R6, valuetwolocation

;DIFFERENCE_LOOP
;    ADD R6, R6, #-1
;    ADD R1, R1, #-1
;BRp DIFFERENCE_LOOP
;END_DIFFERENCE_LOOP

; Subtract R1, from R
;ADD_NEGATIVE_LOOP
;    ADD R2, R2, #-1
;    ADD R6, R6, #-1
;BRp ADD_NEGATIVE_LOOP
;NOT R2, R2
;ADD R2, R2, #1
;END_ADD_NEGATIVE_LOOP

;STI R2, Result

;LDI R0, Result
;OUT

;NOT R2, R2
;ADD R2, R2, #1




;DO_WHILE_LOOP3
;    ADD R2, R2 #-1
;;    ADD, R5, R5, #-1
;BRp DO_WHILE_LOOP3
;END_DO_WHILE_LOOP3


;STI R2, Result

LD R0, minus
OUT

NOT R4, R4
ADD R4, R4, #1
STI R4, Result
LD R5, ASCII_0
ADD R0, R4, R5
OUT
LD R0, newline
OUT

ADD R0, R0 #0
BRnzp Move

SKIP

LD R5, ASCII_0
LDI R0, Result
ADD R0, R5, R0
OUT
LD R0, newline
OUT

;STI R3, TwosComplement

;NOT R2, R2
;ADD R2, R2, #1


; End of Print Equation Sequence

Move



HALT				; Stop execution of program
;------	
;Data
;------
; String to prompt user. Note: already includes terminating newline!
intro 	.STRINGZ	"ENTER two numbers (i.e '0'....'9')\n" 		; prompt string - use with LEA, followed by PUTS.
newline .FILL x0D	; newline character - use with LD followed by OUT
space .FILL x20
minus .FILL x2D
negative .FILL x2D
equals .FILL x3D
ASCII_0 .FILL #48

ValueOneLocation .FILL x4000
ValueTwoLocation .Fill x4001
TwosComplement .FILL x4002
Result .FILL x4003


;---------------	
;END of PROGRAM
;---------------	
.END
