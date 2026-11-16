-- LeetCode Practice Problem --Easy
--https://leetcode.com/problems/classes-with-at-least-5-students/submissions/2197489816/
SELECT
    class
FROM
    Courses
GROUP BY
    class
 HAVING
    COUNT(student) > 4