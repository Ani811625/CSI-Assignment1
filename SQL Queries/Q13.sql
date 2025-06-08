-- Q13: OrderID and average quantity per order
SELECT 
    SalesOrderID,
    AVG(OrderQty) AS AvgQuantity
FROM 
    Sales.SalesOrderDetail
GROUP BY 
    SalesOrderID;
