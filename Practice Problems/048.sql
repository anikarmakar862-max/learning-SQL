-- LeetCode Practice Problem --Easy
--https://leetcode.com/problems/biggest-single-number/submissions/2197980207/
SELECT (
SELECT 
    num
FROM
    MyNumbers
GROUP BY
    num
HAVING
     COUNT(num) = 1
ORDER BY
    num DESC
LIMIT 1

)
AS num