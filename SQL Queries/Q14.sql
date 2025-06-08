-- Q14: OrderID with min and max quantity
SELECT 
    SalesOrderID,
    MIN(OrderQty) AS MinQty,
    MAX(OrderQty) AS MaxQty
FROM 
    Sales.SalesOrderDetail
GROUP BY 
    SalesOrderID;
