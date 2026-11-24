-- LeetCode -Medium
-- https://leetcode.com/problems/managers-with-at-least-5-direct-reports/submissions/2202657198/
with return_id as 
    (select
        e2.id
    from
        Employee e1
    inner join Employee e2 on e1.managerId =e2.id
    group by
        e2.id
    having
        count(e2.id) > 4
    )
select
    name
from Employee e
inner join return_id ri on ri.id = e.id
-- incorrect submission - cannot group by name cuz of duplicate names
-- https://leetcode.com/problems/managers-with-at-least-5-direct-reports/submissions/2202261522/
select
    e2.name
from
    Employee e1
inner join Employee e2 on e1.managerId =e2.id
group by
    e2.name
having
    count(e2.id) > 4

