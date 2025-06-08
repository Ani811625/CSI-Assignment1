-- Q27: Managers with more than 4 reportees
WITH EmployeeWithManager AS (
    SELECT 
        e.BusinessEntityID AS EmployeeID,
        e.OrganizationNode,
        e.OrganizationNode.GetAncestor(1) AS ManagerNode
    FROM 
        HumanResources.Employee e
)
SELECT 
    m.BusinessEntityID AS ManagerID,
    pp.FirstName + ' ' + pp.LastName AS ManagerName,
    COUNT(emp.EmployeeID) AS ReporteeCount
FROM 
    EmployeeWithManager emp
JOIN HumanResources.Employee m ON emp.ManagerNode = m.OrganizationNode
JOIN Person.Person pp ON m.BusinessEntityID = pp.BusinessEntityID
GROUP BY m.BusinessEntityID, pp.FirstName, pp.LastName
HAVING COUNT(emp.EmployeeID) > 4;
