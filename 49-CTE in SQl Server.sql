

select * from tbIEmployee3
select * from tbIDepartment1
--CTE(Common table Expression)
with EmployeeCount (DepartmentId, TotalEmployee)
as
(
   Select DepartmentId, Count(*) as TotalEmployee
   from   tbIEmployee3
   group by DepartmentId 
) 

Select DeptName,TotalEmployee
from  tbIDepartment1
join EmployeeCount
on tbIDepartment1.DeptId = EmployeeCount.DepartmentId
order by TotalEmployee

---Multiple CTE in SQL


with EmployeeCount_payroll_IT_Dept(DepartmentId, TotalEmployee)
as
(
   Select DepartmentId, Count(*) as TotalEmployee
   from   tbIEmployee3
   join tbIDepartment1
   on tbIEmployee3.DepartmentId = tbIDepartment1.DeptId
   where DeptName IN ('Payroll,IT')
   group by DeptName 
),
EmployeeCountBy_Payroll_IT_DeptName (DepartmentName, Total)
as
(
   Select DeptName, Count(Id) as TotalEmployee
   from   tbIEmployee3
   join tbIDepartment1
   on tbIEmployee3.DepartmentId = tbIDepartment1.DeptId
   where DeptName IN ('HR, Admin')
   group by DeptName 
)

Select DeptName,TotalEmployee
from  tbIDepartment1
join EmployeeCount
on tbIDepartment1.DeptId = EmployeeCount.DepartmentId
order by TotalEmployee

select * from EmployeeCount_payroll_IT_Dept
UNION
Select * from EmployeeCountBy_Payroll_IT_DeptName
