
select * from tbIProduct
--Exceute the One Query
Begin tran
Update tbIProduct Set QtyAvailable	= 350 where ProductId = 1
--Roll back is stop the exectution of current data base
Rollback tran