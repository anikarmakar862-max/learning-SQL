-- LeetCode Practice Problem --Easy
--https://leetcode.com/problems/project-employees-i/submissions/2198017202/
SELECT
    p.project_id,
    ROUND(AVG(experience_years), 2) AS average_years
FROM
    Project p
LEFT JOIN   Employee e ON e.employee_id = p.employee_id
GROUP BY
    p.project_id

-- incorrect submission -forgot to add round()
-- https://leetcode.com/problems/project-employees-i/submissions/2198015441/
SELECT
    p.project_id,
    AVG(experience_years) AS average_years
FROM
    Project p
LEFT JOIN   Employee e ON e.employee_id = p.employee_id
GROUP BY
    p.project_id