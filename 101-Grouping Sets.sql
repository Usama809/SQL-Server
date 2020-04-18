

Select * from tbIEmployee6

Select Country, Gender, Sum(Salary)as TotalSalary
From tbIEmployee6
Group by Country, Gender

Union ALL

Select Country, NULL, Sum(Salary)as TotalSalary
From tbIEmployee6
Group by Country

Union ALL
Select NULL, Gender, Sum(Salary)as TotalSalary
From tbIEmployee6
Group by Gender
Union All
Select NULL, NULL, Sum(Salary)as TotalSalary
From tbIEmployee6


---Grouping Sets

Select Country, Gender, Sum(Salary)as TotalSalary
From tbIEmployee6
Group by 
    GROUPING SETS
	( 
	    (Country ,Gender),
		(Country),
		(Gender),
		()
	)

	order by GROUPING(Country), Grouping (Gender), Gender