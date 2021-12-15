       >>source format free
identification division.
program-id. mergefiles.
environment division.
input-output section.
file-control.
       select WorkFile assign to 'work.tmp'.
       select File1 assign to 'student.dat'
           organization is line sequential. *>all pices of data is on seperate lines
       select File2 assign to 'student2.dat'
           organization is line sequential.
       select NewFile assign to 'mergedStudent.dat' *>the final file where information is going to go
           organization is line sequential.

data division.
file section.
FD File1.
01 StudDAta.
       02 IDNum pic 9.
       02 StudName pic x(10).
FD File2.
01 StudDAta2.
       02 IDNum2 pic 9.
       02 StudName2 pic x(10).
SD WorkFile.
01 WStudDAta. *>W for workfile-versions
       02 WIDNum pic 9.
       02 WStudName pic x(10).
FD NewFile.
01 NStudDAta. *>N for new-file
       02 NIDNum pic 9.
       02 NStudName pic x(10).
working-storage section.

procedure division.
merge WorkFile on ascending key NIDNum *>on wich key to merge
       using File1, File2
       giving NewFile.

stop run.
.