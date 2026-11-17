-- LeetCode Practice Problem --Easy
--https://leetcode.com/problems/second-highest-salary/submissions/2197995668/

SELECT (
SELECT DISTINCT
    salary
FROM
    Employee
ORDER BY salary DESC
LIMIT 1 OFFSET 1
) AS SecondHighestSalary