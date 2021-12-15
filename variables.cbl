       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. variables.
AUTHOR. Jonas Hagström.
DATE-WRITTEN. November 12th 2021
ENVIRONMENT DIVISION.
DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.*>Declare variables
01 SampleData PIC X(10) VALUE "Stuff".
01 JustLetters PIC AAA VALUE "ABC".
01 JustNums PIC 9(4) VALUE 1234.
01 SignedInt PIC S9(4) VALUE -1234.
01 PayCheck PIC 9(4)V99 VALUE ZEROS.
01 Customer.
       02 Ident    PIC 9(3).
       02 CustName PIC X(20).
       02 DateOfBirth.
           03 MonthOfBirth PIC 99.
           03 DayOfBirth PIC 99.
           03 YearOfBirth PIC 9(4).
01 NumOne PIC 9 VALUE 5.
01 NumTwo PIC 9 VALUE 4.
01 NumThree PIC 9 VALUE 3.
01 Ans PIC S99V99 VALUE 0.
01 Rem PIC 9V99.

PROCEDURE DIVISION.
MOVE "More Stuff" TO SampleData
MOVE "123" TO SampleData
Move 123 TO SampleData
DISPLAY SampleData
DISPLAY PayCheck
MOVE "123John Doe            07071974" TO Customer
DISPLAY Customer
DISPLAY MonthOfBirth "/" DayOfBirth "/" YearOfBirth

*>Displays
MOVE ZERO TO SampleData
DISPLAY SampleData
MOVE SPACE TO SampleData
DISPLAY SampleData
MOVE HIGH-VALUE TO SampleData
display SampleData
move low-value to SampleData
display SampleData
move quote to SampleData
move all "2" to SampleData
display SampleData

*> giving tells where the aswer should go
ADD NumOne TO NumTwo GIVING Ans
display Ans
SUBTRACT NumOne FROM NumTwo GIVING Ans
display Ans
MULTIPLY NumOne BY NumTwo GIVING Ans
display Ans
DIVIDE NumOne INTO NumTwo GIVING Ans
display Ans
DIVIDE NumOne INTO NumTwo GIVING Ans REMAINDER Rem 
DISPLAY "Remainder " Rem  

*> multiple variables
Add NumOne, NumTwo to NumThree Giving Ans
*>or
add NumOne, NumTwo, NumThree Giving Ans
display Ans
*>A more traditional way to calculate
compute Ans = NumOne + NumTwo
compute Ans = NumOne - NumTwo
compute Ans = NumOne * NumTwo
compute Ans = NumOne / NumTwo
display Ans
*>power
Compute Ans = NumOne ** 2
display Ans 
compute Ans = (NumOne + NumTwo) * NumThree
display Ans
*>Round values
compute Ans rounded = 3.0 + 2.0005
display Ans




STOP RUN.
