--User 1
Insert into Test2 Values ('zzz')

Select SCOPE_IDENTITY()
Select @@IDENTITY
Select IDENT_CURRENT('Test2')

Insert into Test1 Values('X')

Select SCOPE_IDENTITY()
Select @@IDENTITY

Select * from Test1
Select * from Test2

Create Trigger trforInsert on Test1 for insert
as
Begin 
 Insert into Test2 Values ('YYYY')
End