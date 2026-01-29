;=================================================
; Name: Daisha Haymon
; Email: dhaym002@ucr.edu
; 
; Lab: lab 3, ex 4
; Lab section: 001
; TA: Arielle
; 
;=================================================

.ORIG x3000

LEA R1, ARRAY        ; LOAD THE BLOCK[0] INTO R1
LEA, R0 PROMPT       ; LOAD THE STARTING ADDRESS OF THE PROMPT STRING INTO R0
PUTS                 ; PRINT THE VALUES IN ADDRESSES STARTING AT R0

; THE FIRST DO_WHILE_LOOP WILL STORE VALUES IN THE ARRAY 

DO_WHILE_LOOP
GETC                 ; TRAP VALUE INTO R0
OUT                  ; ECHO ENTERED KEY BACK TO THE USER
STR R0, R1, #0       ; STORE R0 INTO ARRAY[ARRAY+1]
ADD R1, R1 #1        ; INCREASE ADDRESS VALUE IN R1 TO ARRAY[ARRAY+1]
LD R2, newline
    Test
        ADD R0, R0, #-1
        ADD R2, R2, #-1
        BRp Test
    End_Test
ADD R5, R0, #0
BRp DO_WHILE_LOOP   ; REPAT TRAP X21 ROUTINE UNTIL ALL ARRAY POSITIONS ARE FILLED
END_DO_WHILE_LOOP 
                    ; You're trapping an extra newline


; PRINT THE VALUES IN THE ARRY ;

                      ; LOADING COUNTER VALUE INTO R4
LEA R1, ARRAY         ; LOAD ARRAY ADDRESS INTO R3
DO_WHILE_LOOP_PRINT
LDR R0, R1, #0
OUT
ADD R1, R1, #1
LD R2, newline
    Test2
        ADD R0, R0, #-1
        ADD R2, R2, #-1
        BRp Test2
    End_Test2
ADD R5, R0, #0
BRp DO_WHILE_LOOP_PRINT
END_DO_WHILE_LOOP_PRINT
LD R0, newline
OUT
HALT

ascii .FILL x30
newline .FILL x0D
end_of_transmission .fill x04
PROMPT .STRINGZ "ENTER EXACTLY 10 CHARACTERS: "
ARRAY .BLKW #50

.END