-- Q35: Low stock and nothing on order
SELECT 
    ProductID, 
    Name, 
    SafetyStockLevel, 
    ReorderPoint
FROM 
    Production.Product
WHERE 
    SafetyStockLevel < 10 AND 
    ReorderPoint = 0;
