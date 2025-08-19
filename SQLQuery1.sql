USE master
GO

CREATE SCHEMA Demo

CREATE TABLE Demo.RepPeroformance
(
   ID INT PRIMARY KEY IDENTITY(1,1),  --Primary key column, automatically increases by 1 starting from 1 (IDENTITY(1,1)).
   EmployeeID INT,
   SalesQuentity INT,
   SalresRevenue MONEY,
   OrderYear INT
)

SELECT * FROM Demo.RepPeroformance;

INSERT INTO Demo.RepPeroformance (EmployeeID, SalesQuentity, SalresRevenue, OrderYear)
VALUES
(101, 250, 15000.50, 2022),
(102, 300, 18500.75, 2022),
(103, 180, 9200.00, 2023),
(101, 400, 24000.00, 2023),
(104, 150, 7500.25, 2023),
(102, 500, 31000.00, 2024);

TRUNCATE TABLE Demo.RepPeroformance ; -- remove all values

SELECT * FROM Demo.RepPeroformance;