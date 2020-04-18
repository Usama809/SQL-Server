Select * from tbIEmployee4

Select id,Name, Name +'--'	 + CAST(id as nvarchar) as [Name-ID] from tbIEmployee4
--Cast is based on ANSI standered and convert is specific  to SQL server.
--So,if portability is a concern and if you want to use the script with others
--database application,use Cast() 
Select id, Name ,DateOfBirth, CAST(DateofBirth as nvarchar) as ConvertedDOB from tbIEmployee4

--Convert provides many flaxibility than cast.For example,it's possible to control how you want DataTime datatypes converted using style with convert function
Select id, Name ,DateOfBirth, CONVERT(nvarchar, DateOfBirth) as ConvertedDOB from tbIEmployee4


