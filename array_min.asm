ADR 	R10, ARR
ALIGN
ARR 	DCD 10, 2, -3, 5

LDR R0,[R10], #4
MOV 	R1, #3 ; length of array (pointer)
MOV 	R2, #0 ; access to the memory by counter

WHILE

CMP 	R1, R2 ; if R2 equal to the length of an array
BEQ 	DONE
LDR R4, [R10] ; load next
CMP R0, R4
BLT THERE ; IF LESS THAN
LDR R0,[R10]
THERE
ADD 	R2, R2, #1 ; counter = counter + 1
LDR R5, [R10], #4 ; 
B	WHILE
DONE