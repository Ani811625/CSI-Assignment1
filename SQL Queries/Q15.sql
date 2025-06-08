-- Q15: List of all managers and number of employees reporting to them

WITH EmployeeWithManager AS (
    SELECT 
        e.BusinessEntityID AS EmployeeID,
        e.OrganizationNode,
        e.OrganizationNode.GetAncestor(1) AS ManagerNode
    FROM 
        HumanResources.Employee e
)
SELECT 
    mgr.BusinessEntityID AS ManagerID,
    p.FirstName + ' ' + p.LastName AS ManagerName,
    COUNT(emp.EmployeeID) AS ReporteeCount
FROM 
    EmployeeWithManager emp
JOIN 
    HumanResources.Employee mgr ON emp.ManagerNode = mgr.OrganizationNode
JOIN 
    Person.Person p ON mgr.BusinessEntityID = p.BusinessEntityID
GROUP BY 
    mgr.BusinessEntityID, p.FirstName, p.LastName
ORDER BY 
    ReporteeCount DESC;
