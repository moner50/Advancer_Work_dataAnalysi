CREATE VIEW [dbo].[vw_DimProducts] AS
SELECT 
       pr.[ProductID]
      ,pr.[Name]
      ,pr.[MakeFlag]
      ,pr.[FinishedGoodsFlag]
      ,pr.[SafetyStockLevel]
      ,pr.[ReorderPoint]
      ,pr.[StandardCost]
      ,pr.[ListPrice]
      ,pr.[Size]
      ,pr.[Weight]
      ,pr.[DaysToManufacture]
      ,pr.[ProductLine]
      ,pr.[Class]
      ,pr.[Style]
      ,pr.[SellStartDate]
      ,pr.[SellEndDate] 
	  ,pc.[ProductCategoryID]
      ,pc.[Name] AS Product_Category 
	  ,psc.[ProductSubcategoryID]
      ,psc.[Name] As Product_SubCategory
FROM [Production].[ProductSubcategory] as psc 
    left JOIN [Production].[Product] as pr
    ON pr.ProductSubcategoryID = psc.ProductSubcategoryID
    left JOIN [Production].[ProductCategory] as pc
    ON psc.ProductCategoryID = pc.ProductCategoryID ;



