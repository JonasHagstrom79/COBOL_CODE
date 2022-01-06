       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. cobolJonas.
AUTHOR. Jonas Hagström.
DATE-WRITTEN. November 11th 2021
ENVIRONMENT DIVISION.

DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.
*> Create variables here will be good
01 UserName PIC X(30) VALUE "You".
01 Num1    PIC 9 VALUE ZEROS.
01 Num2    PIC 9 VALUE ZEROS.
01 Num3    PIC 9 VALUE ZEROS.
01 Total   PIC 99 VALUE 0.
01 SSNum.
       02 SSArea   PIC 999.
       02 SSGroup  PIC 99.
       02 SSSerial PIC 9999.
01 PiValue CONSTANT AS 3.14.

PROCEDURE DIVISION.
*>Print here
DISPLAY "Insert your name " WITH NO advancing
ACCEPT UserName
DISPLAY "Hello " UserName

MOVE ZERO TO UserName
DISPLAY UserName
DISPLAY "Enter three values to sum"
ACCEPT Num1
ACCEPT Num2
ACCEPT Num3
COMPUTE Total = Num1 + Num2 + Num3
DISPLAY Num2 " + " Num2 " + " Num3 " = " Total



STOP RUN.



