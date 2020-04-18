

Select * from tbIEmployee1

sp_helpindex tbIEmployee1
--Clustered index => stored on the table itself and stored only one clustered table  
Create Clustered Index IX_tbIEmployee1_Gender_Salary
ON tbIEmployee1(Gender DESC,Salary ASC)	

--Nonclustered index => stored saperately from the actual data and more than one non clustered index on the table 
create  NonClustered index IX_tbIEmployee1_Gender_Salary
ON tbIEmployee1(Gender DESC,Salary ASC)