-- Q2: List of all customers where company names end with 'N'
SELECT 
    s.BusinessEntityID AS StoreID,
    s.Name AS StoreName
FROM 
    Sales.Store s
WHERE 
    s.Name LIKE '%N';
