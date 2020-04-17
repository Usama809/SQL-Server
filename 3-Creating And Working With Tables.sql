
--Creating and working with tables
Select * from tbIPerson
Select * from tbIGender


Alter table tbIPerson add constraint tbIPerson_GenderID_FK
Foreign Key (GenderId) references tb1Gender(ID)  