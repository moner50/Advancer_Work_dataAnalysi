CREATE VIEW [dbo].[vw_DimShipMethods] AS
SELECT  [ShipMethodID]
      ,[Name]
      ,[ShipBase]
      ,[ShipRate]
  FROM [AdventureWorks2019].[Purchasing].[ShipMethod]



