Select * from tbIDepartment1
Select * from tbIEmployee3

--Using Views
 Create View vWEmployeeCount
 as
 Select DeptName,DepartmentId,COUNT(*) as TotalEmployee
 from   tbIEmployee3
 join   tbIDepartment1
 on tbIEmployee3.DepartmentId = tbIDepartment1.DeptId
 group by DeptName, DepartmentId

 Select * from vWEmployeeCount

 Select DeptName, TotalEmployee from vWEmployeeCount
 where TotalEmployee >=4

 --Using Temp Table

 Select DeptName,DepartmentId,COUNT(*) as TotalEmployee
 into #TempEmployeeCount
 from   tbIEmployee3
 join   tbIDepartment1
 on tbIEmployee3.DepartmentId = tbIDepartment1.DeptId
 group by DeptName, DepartmentId

 Select * from #TempEmployeeCount

 Select DeptName, TotalEmployee
 From #TempEmployeeCount
 where TotalEmployee >=4

 Drop Table #TempEmployeeCount 

 --Table Variable

 Declare @tbIEmployeeCount table(DeptName nvarchar(20),DepartmentId int,TotalEmployee int)
 insert @tbIEmployeeCount
 Select DeptName,DepartmentId,COUNT(*) as TotalEmployee
 from   tbIEmployee3
 join   tbIDepartment1
 on tbIEmployee3.DepartmentId = tbIDepartment1.DeptId
 group by DeptName, DepartmentId
 
 Select DeptName,TotalEmployee
 From @tbIEmployeeCount
 where @tbIEmployeeCount >=4 

 --Derived Table

 Select DeptName, TotalEmployee
 from
 (
 Select DeptName,DepartmentId,COUNT(*) as TotalEmployee
 from   tbIEmployee3
 join   tbIDepartment1
 on tbIEmployee3.DepartmentId = tbIDepartment1.DeptId
 group by DeptName, DepartmentId
 )
 as EmployeeCount
 where TotalEmployee >=2

 --CTE (Common Table Expression)
With EmployeeCount(DeptName ,DepartmentId ,TotalEmployee)
as
(
 Select DeptName,DepartmentId,COUNT(*) as TotalEmployee
 from   tbIEmployee3
 join   tbIDepartment1
 on tbIEmployee3.DepartmentId = tbIDepartment1.DeptId
 group by DeptName, DepartmentId
 )

 Select DeptName, TotalEmployee
 from EmployeeCount
 where TotalEmployee >=4

