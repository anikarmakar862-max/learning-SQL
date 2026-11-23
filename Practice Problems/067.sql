--LeetCode - Medium
--https://leetcode.com/problems/department-highest-salary/submissions/2201589767/

with max_salary as (select
*,
    max(salary) over(partition by departmentId)
    from
    Employee)

select
    d.name as Department,
    ms.name as Employee,
    ms.salary
from
    max_salary ms
inner join Department d on d.id = ms.departmentId
where ms.salary = ms.max
    