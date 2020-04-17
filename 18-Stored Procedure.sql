Select * from tbIEmployee3

Select Name,Gender from tbIEmployee3

--Stored Procedure
spGetEmployeesBYGenderAndDepartment 'Male',1

Create proc spGetEmployeesBYGenderAndDepartment
@Gender	 nvarchar(20),
@DepartmentId int 
as 
Begin
Select Name,Gender,DepartmentId from tbIEmployee3 where Gender= @Gender
and DepartmentId = @DepartmentId
END


--Stored Proceducer
spGetEmployees

Create PROCEDURE spGetEmployees
AS
BEGIN
  Select Name, Gender from tbIEmployee3
  END


  --ALTER Sorting
 Alter PROCEDURE spGetEmployees
AS
BEGIN
  Select Name, Gender from tbIEmployee3 order by Name
  END

  --Drop proce
  Drop proc spGetEmployees

  sp_helptext spGetEmployeesBYGenderAndDepartment
  --LOCK of the Encrypt
 Alter proc spGetEmployeesBYGenderAndDepartment  
@Gender  nvarchar(20),  
@DepartmentId int   
With Encryption
as   
Begin  
Select Name,Gender,DepartmentId from tbIEmployee3 where Gender= @Gender  
and DepartmentId = @DepartmentId  
END