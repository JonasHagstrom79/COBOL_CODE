 >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. moreParagraphs.
AUTHOR. Jonas Hagström.
DATE-WRITTEN. November 13th 2021
ENVIRONMENT DIVISION.*>Define a custom data classificcation, inside the ENVIRONMENT DIVISION Row 7-9
CONFIGURATION SECTION.
DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.*>Declare variables

PROCEDURE DIVISION.
SubOne.
       DISPLAY "First Paragraph"
       PERFORM SubTwo
       DISPLAY "Returned to the First Paragraph"
       PERFORM SubFour 2 TIMES.           
       STOP RUN.
 
SubThree.
       DISPLAY "Third Paragraph".

SubTwo.
       DISPLAY "Second Paragraph"
       PERFORM SubThree
       DISPLAY "Returned to the Second Paragraph".

SubFour.
       DISPLAY "Repeat".       
STOP RUN.
.