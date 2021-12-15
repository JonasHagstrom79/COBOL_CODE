       >>source format free
identification division.
program-id. sortfiles.
environment division.
input-output section.
file-control.
       select WorkFile assign to 'work.tmp'.
       select OrgFile assign to 'student.dat'
           organization is line sequential. *>all pices of data is on seperate lines
       select SortedFile assign to 'studentSort.dat'
           organization is line sequential.

data division.
file section.
FD OrgFile.
01 StudDAta.
       02 IDNum pic 9.
       02 StudName pic x(10).
SD WorkFile.
01 WStudDAta. *>W for workfile-versions
       02 WIDNum pic 9.
       02 WStudName pic x(10).
FD SortedFile.
01 SStudDAta. *>S for sortedfile-versions
       02 SIDNum pic 9.
       02 SStudName pic x(10).
working-storage section.

procedure division.
sort WorkFile on ascending key SIDNum
       using OrgFile
       giving SortedFile.

stop run.
