-- LeetCode Practice Problem --Medium
-- https://leetcode.com/problems/monthly-transactions-i/submissions/2201280012/
select
    to_char(trans_date, 'yyyy-mm') as month,
    country,
    coalesce(count(id), 0) as trans_count,
    coalesce(count(case when state = 'approved' then  1 end), 0) as approved_count,
    coalesce(sum(amount), 0) as trans_total_amount,
    coalesce(sum(case when state = 'approved' then amount end), 0) as approved_total_amount
from
    Transactions
group by
    1, 2
-- simpler solution is sum approved for approved_count and use else 0
-- first time used column number in group BY
-- https://leetcode.com/problems/monthly-transactions-i/submissions/2201283341/
select
    to_char(trans_date, 'yyyy-mm') as month,
    country,
    count(id) as trans_count,
    sum(case when state = 'approved' then 1 else 0 end) as approved_count,
    sum(amount) as trans_total_amount,
    sum(case when state = 'approved' then amount else 0 end) as approved_total_amount
from
    Transactions
group by
    1, 2
