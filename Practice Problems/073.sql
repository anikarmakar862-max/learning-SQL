-- LeetCode - Easy
--https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/submissions/2204643437/
select
    eu.unique_id,
    e.name
from Employees e
left join EmployeeUNI eu on e.id = eu.id