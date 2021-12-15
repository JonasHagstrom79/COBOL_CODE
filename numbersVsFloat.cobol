       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. NUMBERSVSFLOAT.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.
01 Price PIC 9(4)V99.
01 VatRate PIC V999 VALUE .25.
01 FullPrice PIC 9(4)V99.
PROCEDURE DIVISION.
DISPLAY "Enter the Price : " WITH NO ADVANCING
ACCEPT Price
COMPUTE FullPrice ROUNDED = Price + (Price * VatRate)
DISPLAY "Price + Vat : " FullPrice.
STOP RUN.
