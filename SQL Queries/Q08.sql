-- Q8: Customers who live in London and bought 'Chai'
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
JOIN Person.BusinessEntityAddress bea ON (c.PersonID = bea.BusinessEntityID OR c.StoreID = bea.BusinessEntityID)
JOIN Person.Address a ON bea.AddressID = a.AddressID
WHERE 
    pr.Name = 'Chai' AND
    a.City = 'London';
