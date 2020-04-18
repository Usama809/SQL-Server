

Select * from tbIproduct1
Select * from tbIproductsales1

Select Id, Name, [Description]
from tbIProduct1
where Id NOT IN (Select	distinct ProductId	from tbIProductSales1)

Select tbIProduct1.Id,Name, [Description]
from tbIProduct1
inner join tbIProductSales1
on tbIproduct1.Id = tbIProductSales1.ProductId

--Left join

Select tbIProduct1.Id,Name, [Description]
from tbIProduct1
Left join tbIProductSales1
on tbIproduct1.Id = tbIProductSales1.ProductId
where tbIProductSales1.ProductId is null
 
 --Subquery
Select Name,
(Select SUM(QuantitySold) from tbIProductSales1 where  ProductId= tbIproduct1.Id) as QtySold
from tbIProduct1
order by name


--group by
Select Name, SUM(QuantitySold) as QtySold
from tbIProduct1
Left join tbIProductSales1
on tbIproduct1.Id = tbIProductSales1.ProductId
Group By Name