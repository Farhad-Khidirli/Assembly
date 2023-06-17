MOV R0, #89 ; Given Number
MOV R1, #-1 ; Result (flag)
MOV R5, #0 ; Fib (n)
MOV R3, #0 ; Fib (n - 2)
MOV R4, #1 ; Fib (n - 1)

WHILE
CMP R5, R0 
BGT DONE ; if Fib(n) > Given number -> end
BNE THERE ; if Fib(n) = Given number -> Flag = 1
MOV R1, #1

THERE
ADD R5, R3, R4 ; Fib(n) = Fib(n - 1) + Fib(n - 2)
MOV R3, R4 ; Fib(n - 2) = Fib(n - 1)
MOV R4, R5 ; Fin(n - 1) = Fib(n)

B WHILE
DONE