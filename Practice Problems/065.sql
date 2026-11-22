-- LeetCode Practice Problem --Medium
--https://leetcode.com/problems/movie-rating/submissions/2201393468/
(SELECT
    u.name results
FROM MovieRating mr
LEFT JOIN Users u ON u.user_id = mr.user_id
GROUP BY u.name
ORDER BY count(mr.user_id) DESC, u.name ASC
LIMIT 1)

UNION ALL

(SELECT
    m.title as results
FROM
    MovieRating mr
LEFT JOIN   Movies m ON m.movie_id = mr.movie_id
WHERE
    EXTRACT(MONTH FROM created_at) = 2
    AND
    EXTRACT(YEAR FROM created_at) = 2020
GROUP BY   m.title
ORDER BY AVG(mr.rating) DESC, m.title ASC
LIMIT 1)