
Select * from tbIEmployee
--ASCII
Select ASCII('a')

Select CHAR(65)

Decalre @Start int
Set @Start = 97
While (@Start <= 122)
Begin
   Print CHAR(@Start)
   Set @Start = @Start + 1
End

--LTRIM remove the White Space on the Left Hand Side

Select LtRIM('    Hello')

--RTRIM remove the White Space on the Right Hand Side

Select RtRIM('Hello     ')

--LEN (Length) Return the count of the total characters

Select Name, LEN(Name) as [Total Characters] from tbIEmployee

