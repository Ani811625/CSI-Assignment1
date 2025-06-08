-- Q38: Order date of the most expensive order
SELECT TOP 1 
    OrderDate,
    TotalDue
FROM 
    Sales.SalesOrderHeader
ORDER BY TotalDue DESC;
