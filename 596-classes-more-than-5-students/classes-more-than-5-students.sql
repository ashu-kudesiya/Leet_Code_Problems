SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(distinct student) > 4