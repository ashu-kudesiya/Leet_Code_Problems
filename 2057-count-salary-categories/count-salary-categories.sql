SELECT "Low Salary" AS Category,
    sum(income < 20000) AS accounts_count
FROM Accounts
UNION
SELECT "Average Salary" AS Category,
    sum(income BETWEEN 20000 AND 50000) AS accounts_count
FROM Accounts
UNION
SELECT "High Salary" AS Category,
    sum(income > 50000) AS accounts_count
FROM Accounts
ORDER BY accounts_count DESC