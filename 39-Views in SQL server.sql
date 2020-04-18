--A view is nothing more than a saved SQL query.A View can also be Considered as a virtual table

Select * from tBIEmployee1
Select * from tbIDepartment


Select * from tbIEmployee1 order by EmployeeId

Create View vWEmployeeByDepartment
as
Select EmployeeId, Name, Gender, Salary, DepartmentName
from tbIEmployee1
join tbIDepartment
on tbIEmployee1.Department = tbIDepartment.Id

Select * from vWEmployeeByDepartment
sp_helptext vWEmployeeByDepartment

--view can b used as a machanism to implement row and column level security
Create View vWITEmployee
as
--Join two tables
Select EmployeeId, Name, Gender, Salary, DepartmentName
from tbIEmployee1
join tbIDepartment
on tbIEmployee1.Department = tbIDepartment.Id
where tbIDepartment.DepartmentName='IT'

Select	* from vWITEmployee

--Drop of salary columns

Create View vWNonConfidentialData
as
Select EmployeeId, Name, Gender, DepartmentName
from tbIEmployee1
join tbIDepartment
on tbIEmployee1.Department = tbIDepartment.Id


Select * from vWNonConfidentialData


