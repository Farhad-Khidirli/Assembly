       ADR     R10, ARR
ALIGN  
ARR    DCD     3, 6, 8, 10, 13, 18, 26, 43, 56 ; Given Sorted Array

       MOV     R0, #-1 ; Result (if found -> position(index) of element, otherwise -1)
       MOV     R1, #0 ; leftPoint
       MOV     R2, #8 ; rightPoint
       MOV     R3, #26 ; Given number to find (x)
       ;-----------------REGISTERS DECLARATION------------------
WHILE  
       CMP     R2, R1 ; condition "leftPoint < rightPoint"
       BLT     DONE ; endpoint
       ;--------------------------------------------------------
       ;       MID VALUE ESTABLISHMENT
       ;--------------------------------------------------------
       SUB     R4, R2, R1 ; midIndex = R - L
       LSR     R4, R4, #1 ; (midIndex / 2) Division by 2^n where n = 1
       ADD     R4, R4, R1 ; midIndex = midIndex + leftPoint
       LSL     R6, R4, #2 ; midIndex to Bits for Array input
       LDR     R5, [R10, R6] ; midValue = arr[midIndex]
       ;--------------------------------------------------------
       CMP     R5, R3 ; if (midValue == x) true == end
       BEQ     DONE2 ; endpoint
       ;--------------------------------------------------------
       CMP     R3, R5 ; if (x > midValue) GOTO L1
       BGT     L1
       ;--------------------------------------------------------
       ;       else: (rightPoint = m - 1)
       MOV     R2, R4 ; rightPoint = m
       SUB     R2, R2, #1 ; rightPoint = rightPoint - 1
       ;--------------------------------------------------------
       B       L2 ; connector to skip "if" if "else" is used
L1     ADD     R1, R4, #1 ; "if" con't (GOTO)
L2     ;       "else" con't
       B       WHILE

DONE2  ;       if number exists in Array, then:
       MOV     R0, R4 ; Display Index of given number in R0
DONE   