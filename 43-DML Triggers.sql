Select * from tbIEmployee3
Select * from tbIEmployeeAudit

Alter TRIGGER tr_tbIEmployee_ForInsert
ON tbIEmployee3
For Insert
As
Begin
      Declare @Id int
	  Select @Id = Id from inserted
	  insert into tbIEmployeeAudit
	 Values('New Employee with Id = ' + CAST (@Id as nvarchar (20)) + 'is added at' + CAST(GETDATE() as nvarchar(20)))
End


--Delete
Alter TRIGGER tr_tbIEmployee_ForDelete
ON tbIEmployee3
For DELETE
As
Begin
      Declare @Id int
	  Select @Id = Id from deleted
	  insert into tbIEmployeeAudit
	 Values('An exising employee with Id = ' + CAST (@Id as nvarchar (20)) + 'is added at' + CAST(GETDATE() as nvarchar(20)))
End

insert into tbIEmployee3 values(11,'Xami','Male',2)