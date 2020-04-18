--DatePart() retun the integer
--DateName() return the nvarchar
--Examle (Datepart,Date) 
Select DATEPART(WEEKDAY,'2012-08-30 19:45:31.793') --return 5
Select DATEName(WEEKDAY,'2012-08-30 19:45:31.793')--return Thursday

--Example DATEADD(datepart,NumberToAdd, date)
Select DateAdd(DAY,20,'2012-08-30 19:45:31.793')
Select DateAdd(DAY,20,'2012-08-30 19:45:31.793')


