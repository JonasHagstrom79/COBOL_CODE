       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. numbers.
DATA DIVISION. 
WORKING-STORAGE SECTION.
       01 Num1     PIC 9 VALUE 5.
       01 Num2     PIC 9 VALUE 4.
       01 Sum1     PIC 99.
PROCEDURE DIVISION.
       CALL 'GETSUM' USING Num1, Num2, Sum1. *> Must be in the exact order as 8-10
DISPLAY Num1 " + " Num2 " = " Sum1.
STOP RUN.
.