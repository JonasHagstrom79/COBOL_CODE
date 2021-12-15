       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. conditionals.
AUTHOR. Jonas Hagström.
DATE-WRITTEN. November 13th 2021
ENVIRONMENT DIVISION.*>Define a custom data classificcation, inside the ENVIRONMENT DIVISION Row 7-9
CONFIGURATION SECTION.
SPECIAL-NAMES.
       CLASS PassingScore IS "A" THRU "C", "D".
DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.*>Declare variables
01 Age PIC 99 VALUE 0.
01 Grade PIC 99 VALUE 0.
01 Score PIC X(1) VALUE "B".
01 CanVoteFlag PIC 9 VALUE 0. *>Like a bool
       88 CanVote VALUE 1. *>Sets a condition to a variable
       88 CantVote VALUE 0.
01 TestNumber PIC X.
       88 IsPrime VALUE "1", "3", "5", "7".
       88 IsOdd VALUE "1", "3", "5", "7", "9".
       88 IsEven VALUE "2", "4", "6", "8".
       88 LessThanFour VALUE "1" THRU "3".
       88 RandomNumber VALUE "0" THRU "9".

PROCEDURE DIVISION. *>Use stuff here
DISPLAY "Enter Age : " WITH NO ADVANCING *>Skips jumping to a new line
ACCEPT Age 
IF Age > 18 THEN
       DISPLAY "You can vote"
ELSE
       DISPLAY "You can't vote"
END-IF *>ELSE-IF statements should be avoided because it creates messy code, COBOL doesn´t like that

IF Age < 5 THEN    
       DISPLAY "Stay home"
end-if
if Age = 5 Then
       Display "Go to Kindergarten"
end-if
if Age > 5 AND Age < 18 THEN
       COMPUTE Grade = Age - 5
       Display "Go to Grad " Grade
end-if
IF Age GREATER THAN OR EQUAL TO 18
       DISPLAY "Go to College"
end-if
*>Using the classification from row 7-9
IF Score IS PassingScore then
       Display " You passed"
else
       Display "You Failed"
END-IF
IF Score IS NOT NUMERIC THEN   
       DISPLAY "Not a Number"
END-IF
*>Toggle values line 16-18
IF Age > 18 THEN   
       SET CanVote TO TRUE 
else
       SET CantVote TO TRUE    
END-IF 
DISPLAY "Vote " CanVoteFlag    

*>How evaluate works
DISPLAY "Enter Single Number or X to Exit : "
ACCEPT TestNumber
PERFORM UNTIL NOT RandomNumber *>Loop
       EVALUATE TRUE   
           WHEN IsPrime DISPLAY "Prime"
           WHEN IsOdd DISPLAY "Odd"
           WHEN IsEven DISPLAY "Even"
           WHEN LessThanFour DISPLAY "Less than four"
           WHEN OTHER DISPLAY "Default Action"
       END-EVALUATE*>Ending the evaluate
       ACCEPT TestNumber
END-PERFORM*>End the looping structure
     

STOP RUN.

