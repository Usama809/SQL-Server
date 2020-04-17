Select * from dbo.tbIPerson1


SET IDENTITY_INSERT tbIPerson1 OFF
 insert into dbo.tbIPerson1 values('Martin')

 Delete from tbIPerson1 where PersonId = 1

 An explicit value for the identity column in table 'dbo.tbIPerson1' 
 can only be specified when a column list is used and IDENTITY_INSERT is ON.
