-- LeetCode Practice Problem --Easy
-- https://leetcode.com/problems/students-and-examinations/submissions/2200725875/
SELECT
    s.student_id,
    s.student_name,
    sub.subject_name,
    COALESCE(
            COUNT(e.subject_name), 0
    ) AS attended_exams
FROM
    Students s
CROSS JOIN Subjects sub
LEFT JOIN Examinations e   ON   e.student_id  = s.student_id
                    AND sub.subject_name = e.subject_name
GROUP BY
    s.student_id,
    s.student_name,
    sub.subject_name
ORDER BY
    s.student_id,
    s.student_name

-- CROSS JOIN creates grid of each possible combination from table a and b
-- No ON statment needed