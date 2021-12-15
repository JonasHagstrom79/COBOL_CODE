       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. conditionals.
AUTHOR. Jonas Hagström.
DATE-WRITTEN. November 13th 2021
ENVIRONMENT DIVISION.*>Define a custom data classificcation, inside the ENVIRONMENT DIVISION Row 7-9
CONFIGURATION SECTION.
SPECIAL-NAMES.
       CLASS PassingScore IS "A" THRU "C, "D".
DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.*>Declare variables
01 Age PIC 99 VALUE 0.
01 Grade PIC 99 VALUE 0.
01 Score PIC X(1) VALUE "B".
01 CanVoteFlag PIC 9 VALUE 0. *>Like a bool
       88 CanVote VALUE 1. *>Sets a condition to a variable
       88 CanVote VALUE 0.
01 TestNumber PIC X.
       88 IsPrime VALUE "1", "3", "5", "7".
       88 IsOdd VALUE "1", "3", "5", "7", "9".
       88 IsEven VALUE "2", "4", "6", "8".
       88 LessThanFour VALUE "1" THRU "3".
       88 RandomNumber VALUE "0" THRU "9".

PROCEDURE DIVISION. *>Use stuff here
Display "Enter Age : " WITH NO ADVANCING *>Skips jumping to a new line
ACCEPT Age 
If Age > 18 then
       Display "You can vote"
else
       Display "You can't vote"
end-if
       

STOP RUN.
