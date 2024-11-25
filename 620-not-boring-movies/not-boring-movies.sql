SELECT *
FROM cinema
WHERE (id % 2) != 0
AND description NOT IN ('Boring')
ORDER BY rating DESC