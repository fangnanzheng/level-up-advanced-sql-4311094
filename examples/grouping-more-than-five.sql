-- Display report for employees who have sold at least 5 cars

SELECT emp.employeeId,
    count(*) as NumOfCarsSold,
    MIN(salesAmount) as MinSalesAmount,
    MAX(salesAmount) as MaxSalesAmount
FROM sales sls
INNER JOIN employee emp
    ON sls.employeeID = emp.employeeId
WHERE sls.soldDate >= date('2023-01-01')
GROUP BY emp.employeeId
HAVING count(*) > 5