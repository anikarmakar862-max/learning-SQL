-- LeetCode - Medium
-- https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/submissions/2201712503/
select
    id,
    count(*) as num
from
    (
        select requester_id as id from RequestAccepted
        union all
        select accepter_id as id from RequestAccepted
    )
group by id
order by num desc
limit 1
--to count/sum or aggregate ids across multiple columns you might want
-- to stack them using UNION or UNION ALL