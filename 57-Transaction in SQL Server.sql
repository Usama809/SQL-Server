



Select * from tbIMailingAddress
Select * from tbIPhysicalAddress

create Procedure spUpdateAddress
as
Begin
  Begin try
    Begin Transaction
	      Update tbIMailingAddress set City = 'London'
 		  where AddressId = 1 and EmployeeNumber = 101 

		  Update tbIPhysicalAddress set City = 'London'
		  where AddressId = 1 and EmployeeNumber = 101 
		commit transaction
		Print 'Transcation committed'
		  End try
		  Begin catch
		      Rollback transaction
		     Print 'Transcation Rolled Back'
		End Catch
End