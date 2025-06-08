-- Q40: Supplier and product count
SELECT 
    v.BusinessEntityID AS SupplierID,
    v.Name AS SupplierName,
    COUNT(pv.ProductID) AS ProductCount
FROM 
    Purchasing.Vendor v
JOIN Purchasing.ProductVendor pv ON v.BusinessEntityID = pv.BusinessEntityID
GROUP BY v.BusinessEntityID, v.Name;
