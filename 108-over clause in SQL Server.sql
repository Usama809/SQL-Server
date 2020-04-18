

Select * from tbIEmployee1
-- over clause in SQL Server
Select  Gender, COUNT(*) As GenderTotal, AVG(Salary) As AvgSal,
     MIN(Salary) As MinSal, MAX(Salary) AsMaxSal

	 From tbIEmployee1
	  Group By Gender

---
select Name, Salary , Gender,
COUNT(Gender) Over (Partition By Gender) As GendersTotal,
AVG(Salary) Over (Partition By Gender) As AVGSal,
MIN(Salary) Over (Partition By Gender) As MinSal,
MAX(Salary) Over (Partition By Gender) As  MaxSal
From tbIEmployee1
--Including the Aggregation in a subquery and then joining the many query

select Name, Salary , tbIEmployee1.Gender,Genders.GenderTotal, Genders.AvgSal,
Genders.MinSal, Genders.MaxSal
From tbIEmployee1
INNER JOIN
(Select  Gender, COUNT(*) As GenderTotal,
      AVG(Salary) As AvgSal,
     MIN(Salary) As MinSal, MAX(Salary) As MaxSal

	 From tbIEmployee1
	  Group By Gender) As Genders
	  On Genders.Gender = tbIEmployee1.Gender