Select * from tbIGender
Select * from tbIPerson

--Cascading referential integrity constraint allows to define the action MS SQL Server
--Should takes when a uer attempts to delete and update a key to which an exixting foregin keys points
--Add from the table
insert into tbIGender values(2,'Female')
--Delete from the table 
Delete from tbIGender where ID = 1