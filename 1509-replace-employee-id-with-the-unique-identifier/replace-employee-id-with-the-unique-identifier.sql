SELECT name, unique_id
FROM EMPLOYEEUNI
RIGHT JOIN EMPLOYEES
ON EMPLOYEES.ID = EMPLOYEEUNI.ID 