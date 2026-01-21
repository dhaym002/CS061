;=================================================
; Name: Daisha Haymon   
; Email: dhaym002@ucr.edu
; 
; Lab: lab 3, ex 1
; Lab section: 001
; TA: 
; 
;=================================================

.ORIG x3000


LDI R3, DATA_PTR
LDI R4, DATA_PTR
ADD R4, R4, #1
ADD R3, R3, #0   ;CLEARING AND PREVIOUSLY DEFINED DATA IN x4000
ADD R3, R3, #1
STI R3 DATA_PTR
;LDR R4, R3,  #1
ADD R4, R4, #0   ;CLEARING ANY PREVIOUSLY DEFINED DATA x4001
ADD R4, R4, #1
STR R4, R4, #1

HALT

DATA_PTR .FILL x4000

.END

;;Remote data

.ORIG x4000


.END