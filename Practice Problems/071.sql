-- LeetCode - Hard -my first hard solve
--https://leetcode.com/problems/department-top-three-salaries/description/
with ranking as (    
    select
        id,
        departmentId,
        dense_rank() over(partition by departmentId order by salary desc) dr
    from
        Employee)
select
    d.name Department,
    e.name Employee,
    e.salary
from Employee e
inner join ranking r on e.id = r.id
inner join Department d on r.departmentId = d.id
where r.dr <=3

--I could have actually used employee name and salary inside the cte TT_TT