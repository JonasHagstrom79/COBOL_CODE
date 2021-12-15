       >>source format free
identification division.
program-id. prefilltables.

data division.

working-storage section.
01 ProductTable.
       02 ProductData.
           03 filler pic x(8) value "Red SML".  *>use fillers when no data from start
           03 filler pic x(8) value "Blue SML".
           03 filler pic x(8) value "GreenSML".
       02 filler redefines ProductData. *> allow to fill table
           03 Shirt occurs 3 times.
               04 ProductName pic x(5).
               04 ProductSize pic a occurs 3 times.
01 ChangeMe.
       02 TextNum pic x(6).
       02 FloatNum redefines TextNum pic 9(4)v99.
01 StringNumber pic x(7). *>accept a string and convert it into a float
01 SplitNum.
       02 WNum pic 9(4) value zero. *>variable whole num
       02 FNum pic 99 value zero. *>float num
01 FlNum redefines SplitNum pic 9999v99 *>four digits and 2 decimal places
01 DollarNum PIC $$,$$9.99.

procedure division.
display Shirt(1).
move '123456' to TextNum.
display FloatNum.
display "Enter a Float : " with no advancing
accept StringNumber
unstring StringNumber
       delimited by "." or all spaces
       into WNum, FNum
move FlNum to DollarNum
display DollarNum.

stop run.
