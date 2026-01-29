;=================================================
; Name: Daisha Haymon
; Email: dhaym002@ucr.edu
; 
; Lab: lab 3, ex 2
; Lab section: 001
; TA: David
; 
;=================================================

.orig x3000

LD  R1, DTA_PTR
LD  R2, datavalue
LD  R3, ASCII

STR R2, R1, #0
LD  R4, datavalue2

ADD R1, R1, #1
STR R4, R1, #0
ADD R1, R1, #1
STR R3, R1, #0

;HALT
;;Remote data

datavalue .FILL #33
datavalue2 .FILL #35
ASCII .FILL #48

HALT 

DTA_PTR .FILL x4000


.END
