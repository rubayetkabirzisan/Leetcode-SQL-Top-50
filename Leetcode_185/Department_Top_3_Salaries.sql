SELECT 
    Department, 
    Employee, 
    Salary 
FROM (
    SELECT 
        d.name AS Department,
        e.name AS Employee,
        e.salary AS Salary,
        DENSE_RANK() OVER(PARTITION BY d.id ORDER BY e.salary DESC) AS rnk
    FROM employee e
    INNER JOIN department d 
        ON e.departmentId = d.id
) TEMP
WHERE rnk <= 3;