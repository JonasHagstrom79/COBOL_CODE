       >>source format free
identification division.
program-id. reports.
environment division.
input-output section.
file-control.
       select CustomerReport assign to "CustReport.rpt"
           organization is line sequential.
       select CustomerFile assign to "Customer.dat"
           organization is line sequential.
data division.
file section.
fd CustomerReport.
01 PrintLine
fd CustomerFile.
01 CustomerData.
       02 IDNum    pic 9(5).
       02 CustName.
           03 FirstName pic x(15).
           03 LastName pic x(15).
       88 WorkingStorageEdOfFile value high-value.

working-storage section. *>breaks the report into different pieces
01 PageHeading.
       02 filler pic x(13) value "Customer List". *>use filler when u dont need to identify labels
01 PageFooting.
       02 filler pic x(15) value space.
       02 filler pic x(7) value "Page : ".
       02 PrnPageNum pic z9.
01 Heads pic x(36) value "IDNum    FirstName    LastName".
01 CustomerDetailLine.
       02 filler pic x value space.
       02 PrnCustID pic 9(5).
       02 filler pic x(4) value space.
       02 PrnFirstName pic x(15).
       02 filler pic xx value space.
       02 PrnLasttName pic x(15).
01 ReportFooting pic x(13) value "End of report".
01 LineCount pic 99 value zero.
       88 NewPageRequired value 40 thru 99.
01 PageCount pic 99 value zero.

procedure division.
open input CustomerFile.
open output CustomerReport
perform PrintPageHeading
read CustomerFile
       at end set WorkingStorageEdOfFile to true
end-read
perform PrintReportBody until WorkingStorageEndOfFile
write PrintLine from ReportFooting after advancing 5 lines
close CustomerFile, CustomerReport.
stop run.

PrintPageHeading. *>print the heading and report body
write PrintLine from PageHeading after advancing Page
write PrintLine from Heads after advancing 5 lines
move 3 to LineCount
add 1 to PageCount.

PrintReportBody.
if NewPageRequired
       move PageCount to PrnPageNum
       write PrintLine from PageFooting after advancing 5 lines
       perform PrintPageHeading
end-if
move IDNum to PrnCustID
move FirstName to PrnFirstName
move LastName to PrnLasttName
write PrintLine from CustomerDetailLine after advancing 1 line
add 1 to LineCount
read CustomerFile
       at end set WorkingStorageEdOfFile to true
end-read.

