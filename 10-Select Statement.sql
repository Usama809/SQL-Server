--Joining Multiple Condition using ANd and OR Operators
Select * from  tbIPerson where (City='New YOrk' or City = 'india') AND Age >25
--Selecting top n or top n  percantage of rows\
Select top 2 * from tbIPerson
Select top 2 Name, Age from tbIPerson
--Sorting rows using order by
Select * from tbIPerson order by Name 
--Sorting rows using order by DEscending
Select * from tbIPerson order by Name DESC
--Sorting rows using order by DEscending And ASCE
Select * from tbIPerson order by Name DESC, Age ASC


--Wild Card in SQL Server
--[]Any character with in the bracket
Select * from tbIPerson where Name LIKE '[^JZM]%'

--IN Used Specify a list of values 
Select * from tbIPerson where Age IN (28,25,10)

--BETWEEN Specify a Range
Select * from tbIPerson where Age BETWEEN 10 AND 28


Select * from tbIPerson where CIty != 'New York'

--DISTINCT
--Select DISTINCT Name, City from tbIPerson