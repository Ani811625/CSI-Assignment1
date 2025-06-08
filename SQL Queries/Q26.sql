-- Q26: Employees whose first name contains 'a'
SELECT 
    p.FirstName, p.LastName
FROM 
    HumanResources.Employee e
JOIN Person.Person p ON e.BusinessEntityID = p.BusinessEntityID
WHERE 
    p.FirstName LIKE '%a%';
