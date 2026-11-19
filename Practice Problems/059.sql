-- LeetCode Practice Problem --Easy
--https://leetcode.com/problems/queries-quality-and-percentage/submissions/2199489835/
SELECT
    query_name,
    ROUND (AVG (rating::NUMERIC/position), 2) as quality,
    ROUND (AVG (
        CASE 
        WHEN rating < 3 THEN 1 ELSE 0 END
    ) * 100 , 2) AS poor_query_percentage
FROM 
    Queries
WHERE
    query_name IS NOT NULL
GROUP BY
    query_name