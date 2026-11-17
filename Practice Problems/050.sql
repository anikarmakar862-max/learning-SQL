-- LeetCode Practice Problem --Easy
--https://leetcode.com/problems/swap-sex-of-employees/submissions/2197992150/
UPDATE
    Salary
SET sex =
    CASE
    WHEN sex = 'm' THEN 'f'
    WHEN sex = 'f' THEN 'm'
    ELSE NULL
    END