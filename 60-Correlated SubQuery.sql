

Select * from tbIproduct1
Select * from tbIproductsales1
--Sub Query
select Id, Name, Description
from tbIProduct1 where Id NOT IN (Select distinct ProductId from tbIProductSales)
--Correlated Subquery
Select Name,
(Select SUM(QuantitySold) from tbIProductSales1 where ProductId = tbIProduct1.Id) as QtySold
from tbiProduct1