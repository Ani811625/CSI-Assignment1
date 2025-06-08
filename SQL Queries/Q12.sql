-- Q12: Details of the most expensive order
SELECT TOP 1 *
FROM Sales.SalesOrderHeader
ORDER BY TotalDue DESC;
