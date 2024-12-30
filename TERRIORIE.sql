CREATE VIEW [dbo].[vw_DimTerritories] AS
SELECT [TerritoryID]
      ,[Name]
      ,[CountryRegionCode]
      ,[Group]
      ,[SalesYTD]
      ,[SalesLastYear]
  FROM [AdventureWorks2019].[Sales].[SalesTerritory]



