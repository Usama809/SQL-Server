Select * from tbIPerson

--LEFT Return ths specifiy numbers of characters from the left hand side of the given expression
Select LEFT('ABCDEFG', 3)

--RIGHT Return ths specifiy numbers of characters from the Right hand side of the given expression

Select RIGHT('ABCDEFG', 3)

--CHARINDEX returns the starting position of the specified expression in a characters String
  SELECT CHARINDEX('@','sara@aaa.com')
-- Returs Substring (Part of the string),from the given expression
  SELECT SUBSTRING('sara@aaa.com', 6,7)

  SELECT SUBSTRING('pam@bbb.com',CHARINDEX('@','pam@bbb.com') + 1,7)

  SELECT SUBSTRING('pam@bbb.com',CHARINDEX('@','pam@bbb.com') + 1,
  LEN('pam@bbb.com') - CHARINDEX('@','pam@bbb.com'))


  SELECT SUBSTRING(Email,CHARINDEX('@',Email) + 1,
  LEN(Email) - CHARINDEX('@',Email)) as EmailDomain,
  COUNT (Email) as Total
  from tbIPerson
  Group By SUBSTRING(Email,CHARINDEX('@',Email) + 1,
  LEN(Email) - CHARINDEX('@',Email))

