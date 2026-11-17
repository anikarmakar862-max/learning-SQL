-- LeetCode Practice Problem --Easy
--https://leetcode.com/problems/not-boring-movies/submissions/2197988239/
SELECT
    *
FROM
    Cinema
WHERE
    id%2 <> 0
    AND
    description <> 'boring'
ORDER BY
    rating DESC

--incorrect try
-- https://leetcode.com/problems/not-boring-movies/submissions/2197982656/
SELECT
    *
FROM
    Cinema
WHERE
    id%2 <> 0
    AND
    description NOT LIKE '%boring%'  -- needs to be exactly 'boring'
ORDER BY
    rating DESC 
 