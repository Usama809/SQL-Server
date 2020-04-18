

Select * from tbIEmployee1
Select * from tbIEmployee2
Select * from tbIEmployee3
Select * from tbIEmployee4
Select * from tbIEmployee
Select * from tbIGender
Select * from tbIPerson1
Select * from tbIDepartment
Select * from tbIindianCustomers
Select * from tbIUKCustomers
Select * from Test1

--Create Table Employee 4
CREATE TABLE[tbIEmployee4]
(
  [Id] int primary key,
  [FirstName] nvarchar(50),
  [LastName] nvarchar(50),
  [Salary] int,
  [Gender] nvarchar(50),
  [City] nvarchar(50)
 )

 Insert into tbIEmployee4 Values(1,'Mike' ,'Sandoz',4500,'Male' ,'New York')
 Insert into tbIEmployee4 Values(1,'Sam' ,'Menco',2500,'Male' ,'London')

 Select * from tbIEmployee4

 --ADD Unique COnstraint

 ALTER TABLE tbIEmployee4
 Add CONSTRAINT UQ_tbIEmployee4_City
 UNIQUE CLUSTERED(City)






sp_helpindex tbIEmployee1


--Primary key constraint ,creates a unique clustered index
--Unique  constraint, creates a unique non clustered index