

Select  * from tbIGender
Select  * from tbIPerson

insert into tbIPerson values(ID,Name,Email) Values (6, 'Todd', 't@s.com')

--Drop Constraint
Alter Table tbIperson
Drop Constraint DF_tbIPerson_GenderId

--Default Constraint
Alter Table tbIperson
Add Constraint DF_tbIPerson_GenderId
Default 3 for GenerId

