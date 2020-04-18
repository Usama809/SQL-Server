Select * from tbIEmployee4
--Add data in Table
Insert into tbIEmployee4  Values(1,'Mike','John',4500,'Male','New York')
Insert into tbIEmployee4  Values(2,'Sam','Todd',2500,'Male','Landon')
Insert into tbIEmployee4  Values(3,'Pargim','Lea',3500,'Male','America')
Insert into tbIEmployee4  Values(4,'Zain','Rajpoot',3000,'Male','India')
Insert into tbIEmployee4  Values(5,'Sara','Ishfaq',2800,'Female','Pakistan')


--Adavantages of Indexes
--Select Statement with a Where clause
Select * from tbIEmployee4 where Salary > 3500 and Salary < 2500

--DELETE AND UPDATA SATATEMENT
Delete from tbIEmployee4 where Salary = 2500
Update tbIEmployee4 set Salary = 9000 where Salary = 3500
--Order by ASCENDING=> not using ASCI word because its by default
Select* from tbIEmployee4 order by Salary

--Order by DESCENDING
Select * from tbIEmployee4 order by Salary DESC

--Group by

Select Salary, COUNT(Salary) as Total
from tbIEmployee4
Group By Salary


--Disadvantages of Indexex
--1)Additional Disk Space :Clustered or nonclustered
--2)Insert Update and Delete statements become slow
--3)What is a covering query
--4) A clustered index, always covers a query=> compostie indexes two or more columns 
