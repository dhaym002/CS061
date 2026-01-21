;=================================================
; Name: Daisha Haymon   
; Email: dhaym002@ucr.edu
; 
; Lab: lab 3, ex 1
; Lab section: 001
; TA: Ariel
; 
;=================================================


.ORIG x3000


LD R3, DATA_PTR     ; LOADING PTR INTO R3
ADD R2, R2, #6      ; LOADING VALUE INTO R2
STR R2, R3, #0      ; STORING VALUE OF R2 INTO @ MEMORY DATA_PTR

ADD R4, R4, #7 ;    ; LOADING VALUE INTO R4
STR R4, R3 #1       ; STORING VALUE IN R4 INTO MEMORY @ DATA_PTR[DATA_PTR+1]


HALT

DATA_PTR .FILL X4000

.END
