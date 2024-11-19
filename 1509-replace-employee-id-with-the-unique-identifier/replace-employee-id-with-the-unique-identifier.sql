# Write your MySQL query statement below
select name, unique_id
FROM EMPLOYEES
LEFT JOIN EMPLOYEEUNI
ON EMPLOYEEUNI.ID = EMPLOYEES.ID