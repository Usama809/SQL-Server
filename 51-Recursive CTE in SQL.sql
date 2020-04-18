--That refrence itself is called recursive CTE
  Select * from tbIEmployee5

With EmployeesCTE (EmployeeId,Name,ManagerId,[Level])
as
(
  Select EmployeeId, Name, ManagerId ,1
  from tbIEmployee5
  where ManagerId is null

  union all
  Select tbIEmployee5.EmployeeId,tbIEmployee5.Name,
  tbIEmployee5.ManagerId,EmployeesCTE.[Level] +1
  from tbIEmployee5
  join EmployeesCTE
  on tbIEmployee5.ManagerId =EmployeesCTE.EmployeeId
)
--Select * from EmployeesCTE

Select EmpCTE.Name as Employee, ISNULL(MgrCTE.Name,'Super Boss') as Manager,
EmpCTE.[Level]
from EmployeesCTE EmpCTE
left join EmployeesCTE MgrCTE
on EmpCTE.ManagerId = MgrCTE.EmployeeId