Select * from tbIEmployee1

create view vWEmployeeDataExceptSalary
as
Select EmployeeId,Name ,Gender,Department
from tbIEmployee1

select * from vWEmployeeDataExceptSalary

--update fields
update vWEmployeeDataExceptSalary
Set Name = 'jhon' where EmployeeId = 3
--Delete
Delete vWEmployeeDataExceptSalary where EmployeeId = 9
--Insert
insert into vWEmployeeDataExceptSalary values(EmployeeId,'Zain','Male',6000,2)