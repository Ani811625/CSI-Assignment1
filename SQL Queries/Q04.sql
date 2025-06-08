-- Q4: List of customers who live in UK or USA

SELECT 
    c.CustomerID,
    ISNULL(p.FirstName + ' ' + p.LastName, s.Name) AS CustomerName,
    cr.Name AS Country
FROM 
    Sales.Customer c
LEFT JOIN Person.Person p ON c.PersonID = p.BusinessEntityID
LEFT JOIN Sales.Store s ON c.StoreID = s.BusinessEntityID
JOIN Person.BusinessEntityAddress bea 
    ON (c.PersonID = bea.BusinessEntityID OR c.StoreID = bea.BusinessEntityID)
JOIN Person.Address a ON bea.AddressID = a.AddressID
JOIN Person.StateProvince sp ON a.StateProvinceID = sp.StateProvinceID
JOIN Person.CountryRegion cr ON sp.CountryRegionCode = cr.CountryRegionCode
WHERE 
    cr.Name IN ('United Kingdom', 'United States');
