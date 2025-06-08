-- Q33: Products and Categories for vendor 'Specialty Biscuits, Ltd.'
SELECT 
    pr.Name AS ProductName,
    pc.Name AS Category
FROM 
    Purchasing.Vendor v
JOIN Purchasing.ProductVendor pv ON v.BusinessEntityID = pv.BusinessEntityID
JOIN Production.Product pr ON pv.ProductID = pr.ProductID
JOIN Production.ProductSubcategory psc ON pr.ProductSubcategoryID = psc.ProductSubcategoryID
JOIN Production.ProductCategory pc ON psc.ProductCategoryID = pc.ProductCategoryID
WHERE 
    v.Name = 'Specialty Biscuits, Ltd.';
