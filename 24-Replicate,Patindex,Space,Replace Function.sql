Select* from tbIPerson
--Replicate() Function

Select REPLICATE('Usama',3)

Select SUBSTRING(Email, 1, 2) + REPLICATE('*', 5) +
SUBSTRING(Email,CHARINDEX('@',Email),LEN(Email)-CHARINDEX('@',Email)+1)  as Email
from tbIPerson

--Space()	Function

Select Space(5)


--PATINDEX() Function
Select Email , PATINDEX('%@s.com', Email) as FirstOccurance
from tbIPerson
Where PATINDEX('%@s.com', Email) > 0

--Replace()Function
Select Email ,REPLACE (Email ,'.com','.net') as ConveredEmail
from tbIPerson

--Stuff() Function
Select Email,
STUFF(Email, 2 ,3, '*****') as StuffedEmail
from tbIPerson