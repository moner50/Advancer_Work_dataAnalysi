CREATE VIEW vw_DimStatuses AS

WITH StatusTextCTE AS
(
    SELECT 1 AS StatusCode, [dbo].[ufnGetSalesOrderStatusText](1) AS StatusText
    UNION ALL
    SELECT StatusCode + 1, [dbo].[ufnGetSalesOrderStatusText](StatusCode + 1) AS StatusText
    FROM StatusTextCTE
    WHERE StatusCode <= 6
)
SELECT * 
FROM StatusTextCTE;