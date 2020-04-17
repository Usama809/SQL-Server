Select * from tbIEmployee3



--Return Values
Create proc spGetTotalCount2
as 
Begin
   return (Select  COUNT(Id) from tbIEmployee3)
END

Declare @Total int
Execute @Total = spGetTotalCount2
Print @Total

--Return Value

Create proc spGetNameById2
@Id int
as 
Begin
   return  (Select Name from tbIEmployee3 Where Id = @Id)
END

Declare @Name nvarchar(20)
Execute @Name = spGetNameById2 1
Print 'Name= ' + @Name

--Output Parameters
Create proc spGetTotalCount1
@TotalCount int out
as 
Begin
   Select @TotalCount = COUNT(Id) from tbIEmployee3
END

Declare @Total int
Execute spGetTotalCount1 @Total Out
Print @Total
--ID

Create proc spGetNameById1
@Id int,
@Name nvarchar (20) output
as 
Begin
   Select @Name = Name from tbIEmployee3 Where Id = @Id
END

Declare @Name nvarchar(20)
Execute spGetNameById1 1, @Name Out
Print 'Name= ' + @Name

