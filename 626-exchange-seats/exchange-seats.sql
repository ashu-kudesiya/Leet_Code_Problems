SELECT 
    CASE 
        WHEN id = (SELECT MAX(id) FROM Seat) AND NOT id % 2 = 0 THEN id
        WHEN id % 2 = 0 THEN id - 1
        ELSE id + 1
    END as id,
    student
FROM Seat
ORDER by id