-- Q37: Orders per employee for customers in ID range 1–40
SELECT 
    sp.BusinessEntityID AS EmployeeID,
    COUNT(soh.SalesOrderID) AS OrdersTaken
FROM 
    Sales.SalesOrderHeader soh
JOIN Sales.SalesPerson sp ON soh.SalesPersonID = sp.BusinessEntityID
WHERE 
    soh.CustomerID BETWEEN 1 AND 40
GROUP BY sp.BusinessEntityID;
