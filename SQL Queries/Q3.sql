-- Q3: List of all customers who live in Berlin or London

SELECT 
    c.CustomerID,
    ISNULL(p.FirstName + ' ' + p.LastName, s.Name) AS CustomerName,
    a.City
FROM 
    Sales.Customer c
LEFT JOIN Person.Person p ON c.PersonID = p.BusinessEntityID
LEFT JOIN Sales.Store s ON c.StoreID = s.BusinessEntityID
JOIN Person.BusinessEntityAddress bea ON 
    (c.PersonID = bea.BusinessEntityID OR c.StoreID = bea.BusinessEntityID)
JOIN Person.Address a ON bea.AddressID = a.AddressID
WHERE 
    a.City IN ('Berlin', 'London');

