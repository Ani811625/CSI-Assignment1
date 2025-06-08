-- Q34: Products that were never ordered
SELECT 
    p.ProductID, 
    p.Name 
FROM 
    Production.Product p
LEFT JOIN Sales.SalesOrderDetail sod ON p.ProductID = sod.ProductID
WHERE 
    sod.ProductID IS NULL;
