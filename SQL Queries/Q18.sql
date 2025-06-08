-- Q18: Orders shipped to Canada
SELECT 
    soh.SalesOrderID,
    a.City,
    cr.Name AS Country
FROM 
    Sales.SalesOrderHeader soh
JOIN Person.Address a ON soh.ShipToAddressID = a.AddressID
JOIN Person.StateProvince sp ON a.StateProvinceID = sp.StateProvinceID
JOIN Person.CountryRegion cr ON sp.CountryRegionCode = cr.CountryRegionCode
WHERE cr.Name = 'Canada';
