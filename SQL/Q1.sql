-- Q1: List of all customers (individuals and stores)
SELECT 
    c.CustomerID,
    ISNULL(p.FirstName + ' ' + p.LastName, s.Name) AS CustomerName
FROM 
    Sales.Customer c
LEFT JOIN 
    Person.Person p ON c.PersonID = p.BusinessEntityID
LEFT JOIN 
    Sales.Store s ON c.StoreID = s.BusinessEntityID;
