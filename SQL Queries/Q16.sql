-- Q16: Orders with total quantity > 300
SELECT 
    SalesOrderID,
    SUM(OrderQty) AS TotalQty
FROM 
    Sales.SalesOrderDetail
GROUP BY 
    SalesOrderID
HAVING 
    SUM(OrderQty) > 300;
