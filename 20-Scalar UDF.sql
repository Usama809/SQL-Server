 
Select Sample.dbo.CalculateAge('10/08/1982') as Age
--Scalar UDF

CREATE FUNCTION CalculateAge (@DOB Date)
RETURNS INT
As 
BEGIN
DECLARE @Age INT  

SET @Age = DATEDIFF(YEAR, @DOB,GETDATE()) -
             CASE
	            WHEN (MONTH(@DOB)> MONTH(GETDATE())) OR
	                (MONTH(@DOB)= MONTH(GETDATE()) AND DAY(@DOB) > DAY(GETDATE()))
			 THEN 1
		     ELSE 0
		    END
RETURN @Age

END


Select id,Name,dbo.CalculateAge(DateOfBirth) as Age  from tbIEmployee4


--Stored Proc
sp_helptext CalculateAge

 Execute spCalculateAge  '10/08/1982'
CREATE Proc spCalculateAge  
(@DOB Date)  
As   
BEGIN  
DECLARE @Age INT    
  
SET @Age = DATEDIFF(YEAR, @DOB,GETDATE()) -  
             CASE  
             WHEN (MONTH(@DOB)> MONTH(GETDATE())) OR  
                 (MONTH(@DOB)= MONTH(GETDATE()) AND DAY(@DOB) > DAY(GETDATE()))  
    THEN 1  
       ELSE 0  
      END  
RETURN @Age  
  
END

