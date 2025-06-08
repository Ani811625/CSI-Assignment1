-- Q31: Postal codes where 'Tofu' was shipped
SELECT DISTINCT 
    a.PostalCode
FROM 
    Sales.SalesOrderHeader soh
JOIN Sales.SalesOrderDetail sod ON soh.SalesOrderID = sod.SalesOrderID
JOIN Production.Product p ON sod.ProductID = p.ProductID
JOIN Person.Address a ON soh.ShipToAddressID = a.AddressID
WHERE 
    p.Name = 'Tofu';
