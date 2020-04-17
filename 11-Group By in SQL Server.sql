Select *  from tbIEmployee
--City and TotalSalary is valid and the total salary od this account 
Select City, SUM (Salary) as TotalSalary 
from tbIEmployee
Group By City


--Grouping by multiple columns
Select City, Gender,SUM (Salary) as TotalSalary 
from tbIEmployee
Group By City,Gender
Order by City

--Using Multile Aggriagte function
Select Gender, City,SUM (Salary) as TotalSalary, COUNT(ID) as [Total Employee]
from tbIEmployee
Group By Gender,City
Order by City

Select COUNT(ID)  from tbIEmployee
Select COUNT(*)  from tbIEmployee

--Fillltring Group
Select City, Gender,SUM (Salary) as TotalSalary 
from tbIEmployee
Where Gender='Male'
Group By City,Gender
Order by City

Select City, Gender,SUM (Salary) as TotalSalary 
from tbIEmployee
Group By City,Gender
Having Gender ='Male'