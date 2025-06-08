-- Q24: Employee names and their supervisors
WITH EmployeeWithManager AS (
    SELECT 
        e.BusinessEntityID AS EmployeeID,
        e.OrganizationNode,
        e.OrganizationNode.GetAncestor(1) AS ManagerNode
    FROM 
        HumanResources.Employee e
)
SELECT 
    e.BusinessEntityID AS EmployeeID,
    pe.FirstName + ' ' + pe.LastName AS EmployeeName,
    pm.FirstName + ' ' + pm.LastName AS SupervisorName
FROM 
    EmployeeWithManager ewm
JOIN HumanResources.Employee e ON ewm.EmployeeID = e.BusinessEntityID
JOIN HumanResources.Employee m ON ewm.ManagerNode = m.OrganizationNode
JOIN Person.Person pe ON e.BusinessEntityID = pe.BusinessEntityID
JOIN Person.Person pm ON m.BusinessEntityID = pm.BusinessEntityID;
