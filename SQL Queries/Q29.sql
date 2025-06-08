-- Q29: Orders placed by the best customer
WITH CustomerTotals AS (
    SELECT 
        CustomerID,
        SUM(TotalDue) AS TotalSpent
    FROM 
        Sales.SalesOrderHeader
    GROUP BY CustomerID
),
BestCustomer AS (
    SELECT TOP 1 CustomerID
    FROM CustomerTotals
    ORDER BY TotalSpent DESC
)
SELECT *
FROM Sales.SalesOrderHeader
WHERE CustomerID = (SELECT CustomerID FROM BestCustomer);
