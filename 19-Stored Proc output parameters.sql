sp_depends spGetEmployeeCountByGender
sp_help spGetEmployeeCountByGender
Select * from tbIEmployee3

Create procedure spGetEmployeeCountByGender
@Gender nvarchar(20),
@EmployeeCount int output
as
BEGIN
    Select @EmployeeCount = COUNT (Id) from tbIEmployee where Gender = @Gender
END

Declare @TotalCount int
Execute spGetEmployeeCountByGender 'Male' , @TotalCount Output
Print @TotalCount