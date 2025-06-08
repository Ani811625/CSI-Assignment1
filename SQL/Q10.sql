-- Q10: Customers who ordered 'Tofu'
SELECT DISTINCT 
    c.CustomerID,
    ISNULL(p.FirstName + ' ' + p.LastName, s.Name) AS CustomerName
FROM 
    Sales.Customer c
LEFT JOIN Person.Person p ON c.PersonID = p.BusinessEntityID
LEFT JOIN Sales.Store s ON c.StoreID = s.BusinessEntityID
JOIN Sales.SalesOrderHeader soh ON c.CustomerID = soh.CustomerID
JOIN Sales.SalesOrderDetail sod ON soh.SalesOrderID = sod.SalesOrderID
JOIN Production.Product pr ON sod.ProductID = pr.ProductID
WHERE 
    pr.Name = 'Tofu';
