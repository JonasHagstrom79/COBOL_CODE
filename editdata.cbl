       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. editdata.
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.
01 StartNum PIC 9(8)V99 VALUE 00001123.55.
01 NoZero PIC ZZZZZZZ9.99.
01 NoZeroPlusCommas PIC ZZ,ZZZ,ZZ9.99.
01 DollarSign PIC $$,$$$,$$9.99.
01 Birthday PIC 9(8) VALUE 04101979.
01 ADate PIC 99/99/9999.
PROCEDURE DIVISION.
MOVE StartNum TO NoZero
DISPLAY NoZero
MOVE StartNum TO NoZeroPlusCommas
DISPLAY NoZeroPlusCommas
MOVE StartNum TO DollarSign
DISPLAY DollarSign
MOVE Birthday TO ADate
DISPLAY Adate
STOP RUN.
.