Select * from tbIEmployee4
--Not Changed value
Select COUNT(*) from tbIEmployee4

Select SQUARE(3)

Select  RAND(1)

--changed value

Select GETDATE()

Select CURRENT_TIMESTAMP

Select  RAND()

--create scalar function
sp_helptext fn_GetNameBYId
Select dbo.fn_GetNameBYId(1)

sp_helptext fn_GetNameBYId
--Encryption function()
Create function fn_GetNameBYId(@id int)
Returns nvarchar(30)
as 
Begin
 return(Select Name from tbIEmployee4 where id = @id) 
ENd


--Alter Function
Alter function fn_GetNameBYId(@id int)
Returns nvarchar(30)
With ENCRYPTION
as 
Begin
 return(Select Name from tbIEmployee4 where id = @id) 
ENd
--SCEMbanding Function()
Select dbo.fn_GetNameBYId(1)

sp_helptext fn_GetNameBYId

drop table tbIEmployee4

Alter function fn_GetNameBYId(@id int)
Returns nvarchar(30)
with SCHEMABINDING
as 
Begin
 return(Select Name from dbo.tbIEmployee4 where id = @id) 
ENd