-- Q5: List of all products sorted by product name

SELECT 
    ProductID,
    Name AS ProductName,
    ProductNumber,
    ListPrice
FROM 
    Production.Product
ORDER BY 
    Name;
