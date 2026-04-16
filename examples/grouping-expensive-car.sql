-- Find the least and most expensive car sold by each employee

SELECT emp.employeeId,
    emp.firstName,
    emp.lastName,
    MIN(salesAmount) as MinSalesAmount,
    MAX(salesAmount) as MaxSalesAmount
FROM sales sls
INNER JOIN employee emp
    ON sls.employeeID = emp.employeeId
WHERE sls.soldDate >= date('2023-01-01')
-- WHERE sls.soldDate >= date('now', 'start of year')
GROUP BY emp.employeeId, emp.firstName, emp.lastName