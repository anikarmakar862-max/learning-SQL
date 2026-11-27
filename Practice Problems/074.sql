-- LeetCode - Easy
--https://leetcode.com/problems/top-travellers/submissions/2204655355/
select 
    name,
    travelled_distance
from(
    select
        u.id,
        u.name,
        coalesce(sum(distance), 0) travelled_distance
    from
        Users u
    left join Rides r on u.id = r.user_id
    group by 1, 2
)
order by 2 desc, 1 asc
--incorrect submission - forgot to order by NAME
--https://leetcode.com/problems/top-travellers/submissions/2204654522/
select 
    name,
    travelled_distance
from(
    select
        u.id,
        u.name,
        coalesce(sum(distance), 0) travelled_distance
    from
        Users u
    left join Rides r on u.id = r.user_id
    group by 1, 2
)
order by 2 desc

