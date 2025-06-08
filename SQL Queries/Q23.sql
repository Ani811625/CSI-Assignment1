-- Q23: Discontinued products ordered between 1/1/1997 and 1/1/1998
SELECT DISTINCT 
    p.Name,
    p.ProductID
FROM 
    Production.Product p
JOIN Sales.SalesOrderDetail sod ON p.ProductID = sod.ProductID
JOIN Sales.SalesOrderHeader soh ON sod.SalesOrderID = soh.SalesOrderID
WHERE 
    soh.OrderDate BETWEEN '1997-01-01' AND '1998-01-01'
    AND p.SellEndDate IS NOT NULL;
