       >>Source Format Free
identification division.
program-id. StringManipulation.
environment division.
configuration section.
data division.
file section.
working-storage section.
01 SampStr     pic x(18) value 'eerie beef sneezed'.
01 NumChars    pic 99 value 0.
01 NumEs       pic 99 value 0.
01 FName       pic x(5) value 'Jonas'.
01 MName       pic x(4) value 'King'.
01 LName       pic x(8) value 'Lastname'.
01 FLName      pic x(11).
01 FMLName     pic x(18).
01 SStr1       pic x(7) value "the egg".
01 SStr2       pic x(9) value "is #1 and".
01 Dest        pic x(33) value "is the big chicken".
01 Ptr         pic 9 value 1.
01 SStr3       pic x(3).
01 SStr4       pic x(3).
procedure division.
inspect SampStr tallying NumChars for characters.
display "Number of Characters : " NumChars.
inspect SampStr tallying NumEs for all 'e'.
display "Number of Es : " NumEs.
display function upper-case(SampStr)
display function lower-case(SampStr)

string FName delimited by size *>get the whole string
space
LName delimited by size
into FLName.
display FLName.

string FLName delimited by spaces
space
MName delimited by size
space
LName delimited by size
into FMLName
on overflow display 'Overflowed'.
display FMLName.

string SStr1 delimited by size *> manipulate 17-18
space
SStr2 delimited by "#"
into Dest
with pointer Ptr
on overflow display 'Overflowed'.
display Dest.

unstring SStr1 delimited by space *>split a string into multiple strings
into SStr3, SStr4
end-unstring.
display SStr4.

stop run.
