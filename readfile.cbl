       >>Source Format Free
identification division.
program-id. readfile.
environment division.
input-output section.
file-control.
       select CustomerFile assign to "Customer.dat"
           organization is line sequential
           access is sequential.
*>configuration section.
data division.
file section.
fd CustomerFile.
01 CustomerData.
       02 IdNum    pic 9(5).
       02 CustName.
           03 FirstName pic x(15).
           03 LastName pic x(15).

working-storage section.
01 WSCustomer.
       02 WSIdNum    pic 9(5).
       02 WSCustName.
           03 WSFirstName pic x(15).
           03 WSLastName pic x(15).
01 WorkingStorageEndOfFile pic A(1). *>React to the end of the file

procedure division.
open input CustomerFile.
       perform until WorkingStorageEndOfFile='Y'
           read CustomerFile into WSCustomer
               at end move 'Y' to WorkingStorageEndOfFile
               not at end display WSCustomer
             end-read
            end-perform    
close CustomerFile.



stop run.
.