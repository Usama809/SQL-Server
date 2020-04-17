Select * from tbIindianCustomers
Union All--Remove the duplicate and sorting.union is little slower then union All
Select * from tbIUKCustomers

--Sort By Name
ORDER By NAME

--Unions combines rows from 2 or more tables,Where JOINS Combine columns from 2 or more table