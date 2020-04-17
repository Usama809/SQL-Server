Select * from tbIEmployee1
Select * from tbIDepartment
--Join two table
Select	Name,Gender, Salary,DepartmentName
from tbIEmployee1
Right OUTER JOIN tbIDepartment
ON tbIEmployee1.Department = tbIDepartment.Id


Select	Name,Gender, Salary,DepartmentName
from tbIEmployee1
CROSS JOIN tbIDepartment