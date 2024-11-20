SELECT 
    name, bonus
FROM 
    Employee
LEFT JOIN 
    Bonus
ON 
    Employee.empID = Bonus.empID
WHERE 
    bonus < 1000 OR Bonus IS NULL ;