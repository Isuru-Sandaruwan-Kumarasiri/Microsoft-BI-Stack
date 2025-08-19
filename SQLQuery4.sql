---                                 CREATE FUNCTION


-- 1. Scalar-Valued Function (SVF)

--    Returns a single value (like INT, VARCHAR, DATE, etc.).
--    Works similar to Excel formulas: you give it inputs (parameters), it returns one output.
--    Used in SELECT, WHERE, ORDER BY, etc.


-- 2. Table-Valued Function (TVF)

--   Returns a table (like a virtual table).
--   Can be used like a regular table in a SELECT statement.
--   Good for encapsulating reusable queries.

--  Two types:

--   Inline TVF (returns a single SELECT query result directly).
--   Multi-statement TVF (can have multiple statements and builds a table variable).


SELECT 
Demo.ufnGetFirstOrderDate()

SELECT
CAST(MIN(SOH.OrderDate) AS DATE)
FROM 
Sales.SalesOrderHeader SOH
LEFT JOIN Sales.SalesOrderDetail SOD 
            ON SOH.SalesOrderID = SOD.SalesOrderID
LEFT JOIN Sales.SalesPerson SP 
            ON SP.BusinessEntityID = SOH.SalesPersonID
LEFT JOIN HumanResources.Employee EMP 
            ON SP.BusinessEntityID = EMP.BusinessEntityID
LEFT JOIN Person.Person PER 
            ON PER.BusinessEntityID = EMP.BusinessEntityID
WHERE SP.BusinessEntityID= 275


SELECT 
Demo.ufnGetFirstOrderDate(275)