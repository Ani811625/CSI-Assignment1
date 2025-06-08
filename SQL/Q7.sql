-- Q7: List of customers who placed at least one order
SELECT DISTINCT
    c.CustomerID,
    ISNULL(p.FirstName + ' ' + p.LastName, s.Name) AS CustomerName
FROM 
    Sales.Customer c
LEFT JOIN Person.Person p ON c.PersonID = p.BusinessEntityID
LEFT JOIN Sales.Store s ON c.StoreID = s.BusinessEntityID
JOIN Sales.SalesOrderHeader soh ON c.CustomerID = soh.CustomerID;
