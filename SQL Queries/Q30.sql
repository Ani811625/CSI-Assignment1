-- Q30: Orders placed by customers who do not have a phone number
SELECT 
    soh.SalesOrderID,
    ISNULL(p.FirstName + ' ' + p.LastName, s.Name) AS CustomerName
FROM 
    Sales.Customer c
LEFT JOIN Person.Person p ON c.PersonID = p.BusinessEntityID
LEFT JOIN Sales.Store s ON c.StoreID = s.BusinessEntityID
JOIN Sales.SalesOrderHeader soh ON c.CustomerID = soh.CustomerID
LEFT JOIN Person.PersonPhone pp ON p.BusinessEntityID = pp.BusinessEntityID
WHERE 
    pp.PhoneNumber IS NULL;
