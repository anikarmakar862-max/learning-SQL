-- LeetCode Practice Problem --Easy
--https://leetcode.com/problems/triangle-judgement/submissions/2197968442/
SELECT
    *,
    CASE
    WHEN (x + y <= z) THEN 'No'
    WHEN (y + z <= x) THEN 'No'
    WHEN (x + z <= y) THEN 'No'
    ELSE 'Yes'
    END
    AS triangle
FROM
    Triangle