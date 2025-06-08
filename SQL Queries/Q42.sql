-- Q42: Total revenue of the company
SELECT 
    SUM(TotalDue) AS TotalRevenue
FROM 
    Sales.SalesOrderHeader;
