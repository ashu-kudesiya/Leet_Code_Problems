SELECT D.Name AS department, E1.name AS Employee, E1.salary
FROM Employee E1
JOIN Department D
ON E1.departmentId = D.id
WHERE 3 > (SELECT COUNT(DISTINCT(E2.salary))
            FROM Employee E2
            WHERE E2.salary > E1.salary
            AND E1.departmentId = E2.departmentId
            )   