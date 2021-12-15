       >>source format free
identification division.
program-id. tables.

data division.

working-storage section.
01 TableOne.
       02 Friend pic x(15) occurs 4 times.

01 CustTable.
       02 CustName occurs 5 times.
           03 FName pic x(15).
           03 LName pic x(15).

01 OrderTable.
       02 Product occurs 2 times indexed by I.
           03 ProductName pic x(10).
           03 ProductSize occurs 3 times indexed by J.
               04 SizeType pic a.
procedure division.
move 'Achmed' to Friend(1).
move 'Seppo' to Friend(2).
move 'Abdullah' to Friend(3).
move 'Achmed' to FName(1).
move 'Yalla' to LName(1).
move 'John' to FName(2).
move 'Doe' to LName(2).
display Friend(1).
display TableOne.
display CustName(1).
display CustTable.

set I J to 1.
move 'White Shirt' to Product(I).
move 'S' to ProductSize(I, J).
set J up BY 1.
move 'M' to ProductSize(I,J).
set J down by 1.
move 'Blue ShirtSMLYellow Shirt SML' to OrderTable.
perform GetProduct varying I from 1 by 1 until I>2.
Go to LookUp.

GetProduct.
       display PRODUCT(I)
       perform GetSizes varying J from 1 by 1 until J>3.

GetSizes.
       display ProductSize(I,J).

LookUp.
       set I to 1.
       search Product
           at end display 'Product Not Found'
           when ProductName(I) = 'Yellow Shirt'
               display 'Yellow Shirt Found'
           end-search.

stop run.
