Select Contient, Country, City, SUM (TotalSales) As TotalSales,
        Cast (Grouping(Contient) As nvarchar(1) ) +
		cast (Grouping(Country) As nvarchar(1) ) +
		cast (Grouping(City) As nvarchar(1)) as Groupings,
		GROUPING_ID(Contient , Country, City) AsFGPID
From Sales 
Group by ROLLUP(Contient,Country,City)
--

Select Contient, Country, City, SUM (TotalSales) As TotalSales,
		GROUPING_ID(Contient , Country, City) As GPID
From Sales 
Group by ROLLUP(Contient,Country,City)
order BY GPID 


--- Filter by level of grouping
Select Contient, Country, City, SUM (TotalSales) As TotalSales,
		GROUPING_ID(Contient , Country, City) As GPID
From Sales 
Group by ROLLUP(Contient,Country,City)
Having GROUPING_ID(Contient , Country, City) =3