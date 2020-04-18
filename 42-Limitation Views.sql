Select * from tbIEmployee3
--create View
Create view vWEmployeeDetails
as 
select     Id,Name, Gender, DepartmentId
from       tbIEmployee3

Select * from vWEmployeeDetails
--View cannot pass the parameters

--You can filter Gender in the where class
Select * from vWEmployeeDetails where Gender = 'Male'

---
Create Function fnEmployeeDetails (@Gender nvarchar(20))
Returns Table
as 
Return
(Select Id,Name ,Gender,DepartmentId
from tbIEmployee3 where Gender = @Gender)

Select * from dbo.fnEmployeeDetails('Male')