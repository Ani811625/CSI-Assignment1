-- Q17: Orders placed on or after 1996-12-31
SELECT *
FROM Sales.SalesOrderHeader
WHERE OrderDate >= '1996-12-31';
