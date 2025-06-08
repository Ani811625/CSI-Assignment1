-- Q28: List of Orders and Product Names
SELECT 
    soh.SalesOrderID,
    p.Name AS ProductName
FROM 
    Sales.SalesOrderHeader soh
JOIN Sales.SalesOrderDetail sod ON soh.SalesOrderID = sod.SalesOrderID
JOIN Production.Product p ON sod.ProductID = p.ProductID;
