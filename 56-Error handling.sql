

Select * from tbIProduct
Select * from tbIProductSales

  spSellProduct 2, 10 

ALTER procedure spSellProduct
@ProductId	int,
@QuantitytoSell int
as 
Begin
   --Check the stock available, for the product we went to sell
   Declare @StockAvailable int
   Select @StockAvailable = QtyAvailable
   from tbIproduct	where ProductId = @ProductId
   
   --Throw an error to the calling application, if enough stock
   --is not Available
   if(@StockAvailable < @QuantitytoSell)
    Begin
	  Raiserror('Not Enough stock Available',16,1)
	END
	  --if enough stock available
	 Else
	 Begin
	 Begin Tran
	 --First Reduce the quantity abvailable
	   Update tbIProdct set QtyAvailable = (QtyAvailable - @QuantitytoSell)
	   where ProductId = @ProductId

	   Declare	@MaxProductSalesId int
	   --Calculate Max ProductSalesId
        Select @MaxProductSalesId = Case when
	                                MAX(ProductSalesId) is NULL
                                    Then 0 else Max(ProductSalesId) end
								from tbIProductSales
		--Increment @MaxproductSalesId	by 1, so we don't get a primary key violation
		  --Set @MaxProductSalesId = @MaxMaxProductSalesid + 1
		Insert into tbIProductSales	values (@MaxProductSalesId, @ProductId,@QuantitytoSell)
		Commit Tran
	End
End	

------Error block



Select * from tbIProduct
Select * from tbIProductSales

  spSellProduct 2, 10 

ALTER procedure spSellProduct
@ProductId	int,
@QuantitytoSell int
as 
Begin
   --Check the stock available, for the product we went to sell
   Declare @StockAvailable int
   Select @StockAvailable = QtyAvailable
   from tbIproduct	where ProductId = @ProductId
   
   --Throw an error to the calling application, if enough stock
   --is not Available
   if(@StockAvailable < @QuantitytoSell)
    Begin
	  Raiserror('Not Enough stock Available',16,1)
	END
	  --if enough stock available
	 Else
	 Begin
	 Begin Transaction 
	 --First Reduce the quantity abvailable
	   Update tbIProdct set QtyAvailable = (QtyAvailable - @QuantitytoSell)
	   where ProductId = @ProductId

	   Declare	@MaxProductSalesId int
	   --Calculate Max ProductSalesId
        Select @MaxProductSalesId = Case when
	                                MAX(ProductSalesId) is NULL
                                    Then 0 else Max(ProductSalesId) end
								from tbIProductSales
		--Increment @MaxproductSalesId	by 1, so we don't get a primary key violation
		  --Set @MaxProductSalesId = @MaxMaxProductSalesid + 1
		Insert into tbIProductSales	values (@MaxProductSalesId, @ProductId,@QuantitytoSell)
		Commit Transaction
		End Try
		Begin catch
		Rollback Transaction
		Select
		ERROR_NUMBER() as ErrorNumber,
		ERROR_MESSAGE()as ErrorMessage,
		ERROR_PROCEDURE() as ErrorProcedure,
		ERROR_STATE()  as ErrorState,
		ERROR_SEVERITY() as ErrorSeverity,
		ERROR_LINE() as ErrorLine
		END Catch
	End
End	