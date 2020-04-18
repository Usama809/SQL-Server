--Indexes
Select * from tbIEmploye
--Create indexes
Create Index IX_tbIEmploye_Salary 
ON tbIEmployee (Salary ASC)

sp_Helpindex tbIEmployee.IX_tbIEmploye_Salary 


--drop index
drop index tbIEmployee.IX_tbIEmployee1_Salary 
 

