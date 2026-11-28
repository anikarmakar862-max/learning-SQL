--LeetCode - Medium
--https://leetcode.com/problems/consecutive-numbers/submissions/2205260383/
WITH lag_lead AS
(
    SELECT
        num,
        LAG(num) OVER(ORDER BY id) AS prevnum,
        LEAD(num) OVER(ORDER BY id) AS nextnum
    FROM
        Logs
)
SELECT DISTINCT
    num AS ConsecutiveNums
FROM
    lag_lead
WHERE
    num= prevnum
    AND
    num = nextnum
-- incorrect submission 
-- creates multiple instance of the num that occurs more than 3 times consecutively or multiple times
-- also was not ordered by id
-- https://leetcode.com/problems/consecutive-numbers/submissions/2198007644/
WITH lag_lead AS
(
    SELECT
        num,
        LAG(num) OVER() AS prevnum,
        LEAD(num) OVER() AS nextnum
    FROM
        Logs
)
SELECT
    num AS ConsecutiveNums
FROM
    lag_lead
WHERE
    num= prevnum
    AND
    num = nextnum