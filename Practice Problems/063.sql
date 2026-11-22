-- LeetCode Practice Problem --Medium
-- https://leetcode.com/problems/customers-who-bought-all-products/submissions/2201324781/
select
    customer_id
from    Customer
group by customer_id
having count(distinct product_key) = (select count(*) from Product)