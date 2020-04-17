
--Create the Table
Create Table Sample

Create Table Sample1
--Changing the name of the table
Alter Database Sample1 Modify Name = Sample2

--Deleted the LDF And MDF Files
Drop table Sample1

--Rename
sp_renameDB 'Sample2', 'Sample1'