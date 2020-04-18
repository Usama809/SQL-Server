Select * from tbIDepartment
Select * from tbIEmployee4
Select * from tbIEmployee3
Select * from tbIEmployee2
Select * from tbIEmployee1
Select * from tbIPerson
Select * from tbIPerson1
Select * from tbIUKCustomers

--INLINE Table valued Function 

Create FUNCTION fn_EmployeeBYName (@Name nvarchar(10))
RETURNS TABLE
AS
RETURN (Select id,Name,DateOfBirth 
        from tbIEmployee4 
		where Name = @Name)

 --CALLING FUnction
 Select * from fn_EmployeeBYName ('Sara')
	
	--Table Return By Function can be used in joins
	SELECT Name,DepartmentName
	FROM    fn_EmployeeBYName('Sara') E
	JOIN    tbIDepartment D ON D.Id = E.DateOfBirth