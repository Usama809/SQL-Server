Select * from tbIPerson

Alter Table tbIPerson
Add Constraint UQ_tblPerson_Email Unique (Email)

 Insert into tbIPerson values (1, 'ABC','a@a.com',1, 20)


Alter Table tbIPerson
Drop Constraint UQ_tblPerson_Email