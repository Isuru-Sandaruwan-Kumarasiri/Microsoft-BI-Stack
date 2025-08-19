
-- =============================================
-- Author:		Isuru Sandaruwan
-- Create date: 19-08-2025
-- Description:	Tutorial Stored Procedure
-- =============================================
CREATE SCHEMA Demo;
GO

CREATE PROCEDURE Demo.uspUpdateRepPerformance
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 
        SP.BusinessEntityID AS EmployeeID,
        SUM(SOD.OrderQty) AS SalesQuantity,
        SUM(SOD.LineTotal) AS SalesRevenue,
        SUM(SOD.OrderQty * PRD.ListPrice) AS SalesRevenue2,
        DATEPART(YEAR, SOH.OrderDate) AS OrderYear
    FROM Sales.SalesOrderHeader SOH
        LEFT JOIN Sales.SalesOrderDetail SOD 
            ON SOH.SalesOrderID = SOD.SalesOrderID
        LEFT JOIN Sales.SalesPerson SP 
            ON SOH.SalesPersonID = SP.BusinessEntityID
        LEFT JOIN HumanResources.Employee EMP 
            ON SP.BusinessEntityID = EMP.BusinessEntityID
        LEFT JOIN Person.Person PER 
            ON EMP.BusinessEntityID = PER.BusinessEntityID
        LEFT JOIN Production.Product PRD 
            ON SOD.ProductID = PRD.ProductID
    GROUP BY 
        SP.BusinessEntityID,
        DATEPART(YEAR, SOH.OrderDate);
	
END
GO
