

Select * from tbIEmployee3
Select * from tbIDepartment1
--CTE on one base table
With  Employee_Name_Gender
as
( Select Id,Name, Gender
  from tbIEmployee3 
) 
Select * from Employee_Name_Gender

--Update
With  Employee_Name_Gender
as
( Select Id,Name, Gender
  from tbIEmployee3 
)
Update Employee_Name_Gender set Gender = 'Female' where Id = 1 

Select * from tbIEmployee3

 --CTE on 2  base table
With  EmployeeByDepartment
as
( 
  Select Id,Name, Gender, DeptName
  from tbIEmployee3 
  join tbIDepartment1
  on  tbIDepartment1.DeptId = tbIEmployee3.DepartmentId
)
Update EmployeeByDepartment set Gender ='Male' where Id = 1

Select * from tbIEmployee3