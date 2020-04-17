Select * from tbIEmployee1
Select * from tbIDepartment

--Left Join
Select     Name, Gender, Salary,DepartmentName
from		tbIEmployee1
Left Join   tbIDepartment
on			tbIEmployee1.Department = tbIDepartment.Id
Where		tbIDepartment.Id IS NULL 

--Right JOin
Select     Name, Gender, Salary,DepartmentName
from		tbIEmployee1
RIGHT Join   tbIDepartment
on			tbIEmployee1.Department = tbIDepartment.Id
Where		tbIEmployee1.Department IS NULL 

--FULL JOIN
Select     Name, Gender, Salary,DepartmentName
from		tbIEmployee1
FULL Join   tbIDepartment
on			tbIEmployee1.Department = tbIDepartment.Id
Where		tbIEmployee1.Department IS NULL 
OR			tbIDepartment.Id IS NULL