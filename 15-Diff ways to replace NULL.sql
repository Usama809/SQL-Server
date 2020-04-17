Select * from tbIEmployee2


Select ISNULL('USAMA','NO Manager') as Manger
Select COALESCE('NULL','NO Manager') as Manger
EN EXPREssion THEN '' ELSE '' END

Select      E.Name as Employee, CASE WHEN M.Name IS NULL THEN 'NO Manager' ELSE M.Name END as Manager
from		tbIEmployee2 E
LEFT JOIN	tbIEmployee2 M
ON			E.MangerID = M.EmployeeID

Select      E.Name as Employee, ISNULL(M.Name, 'No Manager') as Manager
from		tbIEmployee2 E
LEFT JOIN	tbIEmployee2 M
ON			E.MangerID = M.EmployeeID