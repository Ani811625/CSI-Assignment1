-- Q6: List of all products where name starts with 'A'
SELECT 
    ProductID, 
    Name, 
    ProductNumber, 
    ListPrice 
FROM 
    Production.Product
WHERE 
    Name LIKE 'A%';
