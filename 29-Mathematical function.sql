select RAND(1)

Select ABS(-101.5)

Select CEILING(15.2)--Return 16
Select CEILING(-15.2)--Return -15

Select FLOOR(15.2)--Return 15
Select FLOOR(-15.2)--Returns -16

Select POWER(2,3)--Return 8
Select SQUARE(9) --Return 81

Select SQRT(81)--Return 9 
Select FLOOR((RAND() * 100))

--RAND() RAnd return the random function 0 and 1
Declare @Counter INT
Set @Counter = 1
while(@Counter <= 10)
Begin 
    print FLOOR((RAND() * 100))
	set @Counter = @Counter + 1 
  END

  --Round () Function
  Select ROUND(850.556, 2)
  Select ROUND(850.556, -2)