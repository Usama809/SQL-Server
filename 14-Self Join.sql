Select * from tbIEmployee2
--Left Join
Select		E.Name as Employee2, M.Name	as Manger
From		tbIEmployee2 E
Left JOIN	tbIEmployee2 M
On			E.MangerID = M.EmployeeID

--Inner JOIN
Select		E.Name as Employee2, M.Name	as Manger
From		tbIEmployee2 E
INNER JOIN	tbIEmployee2 M
On			E.MangerID = M.EmployeeID
--CROSS JOIN
Select		E.Name as Employee2, M.Name	as Manger
From		tbIEmployee2 E
Cross JOIN	tbIEmployee2 M
