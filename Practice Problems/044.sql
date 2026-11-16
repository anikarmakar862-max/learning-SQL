-- LeetCode Practice Problem --Easy
--https://leetcode.com/problems/big-countries/submissions/2197485257/

SELECT
    name,
    population,
    area
FROM
    World
WHERE
    area >= 3000000
    OR
    population >= 25000000