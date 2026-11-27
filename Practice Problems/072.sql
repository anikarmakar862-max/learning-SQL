-- LeetCode - Easy
--https://leetcode.com/problems/list-the-products-ordered-in-a-period/submissions/2204639309/
select 
    p.product_name,
    sum(o.unit) unit
from Products p
left join Orders o on p.product_id = o.product_id
where
    extract(month from order_date) = 2
    and
    extract(year from order_date ) =2020
group by 1
having
    sum(o.unit) > 99