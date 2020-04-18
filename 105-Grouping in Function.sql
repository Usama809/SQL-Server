 ---Create Tabel Sales
Create Table Sales
(
Contient nvarchar(50),
Country nvarchar(50),
City nvarchar(50),
TotalSales int,
)
insert into Sales values  ('Asia', 'india' , 'Banglore' ,1000)
insert into Sales values ('Asia', 'india','Chennai',2000)
insert into Sales values('Asia', 'india','NULL',3000)
insert into Sales values('Asia', 'Japan','Hiroshima',5000)
insert into Sales values('Asia', 'Japan','Tokyo',4000)
insert into Sales values('Asia', 'Japan','NULL',3000)
insert into Sales values('Asia', 'NULL','NULL',12000)
insert into Sales values('Europe', 'France','Cannai',5000)
insert into Sales values('Europe', 'France','Paries',4500)
insert into Sales values('Europe', 'France','NULL',9000)
insert into Sales values('Europe', 'UK','London',1000)
insert into Sales values('Europe', 'UK','Manchister',2000)
insert into Sales values('Europe', 'UK','NULL',3000)
insert into Sales values('Europe', 'NULL','NULL',12000)
insert into Sales values('NULL', 'NULL','NULL',24000)
Select * from Sales
--


Select Contient, Country, City, SUM (TotalSales) As TotalSales,
        Grouping(Contient) as GP_Contient,
		Grouping(Country) as GP_Country,
		Grouping(City) as GP_City
From Sales
Group by ROLLUP(Contient,Country,City)


---Grouping Function

Select
ISNULL (Contient, 'All') as Contient, 
 ISNULL (Country, 'All') as Country,
 ISNULL (City, 'All') as City,
 SUM (TotalSales) As TotalSales   
From Sales
Group by ROLLUP(Contient,Country,City)

select * from Sales

update Sales set city = NULL where =1 