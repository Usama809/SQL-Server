
Select * from tbIEmployee4
--Inline Table Valued Function
Create Function fn_ILTVF_GetEmployee()
Returns Table
as 
Return 
(Select id, Name, CAST(DateOfBirth as Date)as DOB From tbIEmployee4)

Select * from dbo.fn_ILTVF_GetEmployee()

UPDATE  fn_ILTVF_GetEmployee() set Name= 'Sam' where id = 1 

--Multi statement Table Value Function
Create Function fn_MSTVF_GetEmployee()
Returns @Table Table (id int, Name nvarchar(20), DOB Date)
as
Begin
	Insert into @Table
	Select Id,Name ,Cast(DateOfBirth as Date) From tbIEmployee4

	Return
 END

 select * from [dbo].[fn_MSTVF_GetEmployee]()
 




	