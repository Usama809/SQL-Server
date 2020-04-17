
--Check Constraint is used to limit the range of the values,that can be entered for a column
--constraint is just a boolean expression

Select * from tbIPerson
insert into tbIPerson values(7,'Mark','m@s.com',1,10,'New York')
Delete from tbIPerson where ID = 3

Alter Table tbIPerson
Drop Constraint Ck_tbIPerson_Age


Alter Table tbIPerson
Drop Constraint Ck_tbIPerson_Age Check (Age > 0 AND Age < 150)

