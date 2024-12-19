(
SELECT U.name AS results
FROM MovieRating R
LEFT JOIN Users U
ON (R.user_id = U.user_id)
GROUP BY R.user_id
ORDER BY COUNT(R.movie_id) DESC, U.name
LIMIT 1
)
UNION ALL
(
SELECT M.title AS results
FROM MovieRating R
LEFT JOIN Movies M
ON (R.movie_id = M.movie_id)
WHERE R.created_at LIKE '2020-02%'
GROUP BY R.movie_id
ORDER BY AVG(R.rating) DESC, M.title
LIMIT 1
)