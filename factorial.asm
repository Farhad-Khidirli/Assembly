MOV R0, #6 ; Number n
MOV R1, #0 ; Result
MOV R11, #1 ; 1 role: sum += sum 
MOV R12, #2 ; counter (i) for factorial (sum *= i)

WHILE
	CMP R0, R12
	BLT DONE1
	MOV R10, #0 ; Counter (j)

	MOV R1, #0 ; Reset sum due to For loop

	FOR
		CMP R10, R11
		BGE DONE2 ; If numbers >= then END loop

		ADD R1, R1, R12
		ADD R10, R10, #1 ; j++
		B FOR
	DONE2
	MOV R11, R1 ; display result
	ADD R12, R12, #1 ; increment
	
B WHILE
DONE1