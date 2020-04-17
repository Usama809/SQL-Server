

--Note: For Datatimes2 values,IsDate Returns Zero.

Select ISDATE('USama') --return 0
Select ISDATE(GETDATE()) --Return 1
Select ISDATE('2012-08-04 21:02:04.167') --return 1
Select ISDATE('2012-09-01 11:34:21.1918447') --return 0

--Example
Select Month (GETDATE())
Select Month('04/06/2020')
--DAY
Select DAY (GETDATE())
Select DAY('04/06/2020')
--Year
Select Year (GETDATE())
Select YEAR('04/06/2020')

--DATENAME
Select  DATENAME(DAY,'2020-02-06 12:43:46.837')
Select  DATENAME(WEEKDAY,'2020-02-06 12:43:46.837')
Select  DATENAME(MONTH,'2020-02-06 12:43:46.837')


