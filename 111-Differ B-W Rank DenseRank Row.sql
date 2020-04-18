
Select Name, Salary, Gender,
ROW_NUMBER() Over (Order by salary DESC) As RowNumber,
RANK() over (Order by salary DESC) As [Rank],
DENSE_RANK() over (Order by salary DESC) As DenseRank
From tbIEmployee1