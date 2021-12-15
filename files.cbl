       >>Source Format Free
identification division.
program-id. files.
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

procedure division.
open extend CustomerFile.
       display "Customer ID " with no advancing
       accept IdNum
       display "Customer First Name " with no advancing
       accept FirstName
       display "Customer Last Name " with no advancing
       accept LastName
       write CustomerData
       end-write.       
close CustomerFile.



stop run.
