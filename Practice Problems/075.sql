-- LeetCode - Easy
--https://leetcode.com/problems/group-sold-products-by-the-date/submissions/2204670968/
SELECT
    sell_date,
    count(distinct product) num_sold,
    STRING_AGG(DISTINCT product, ',' ORDER BY product ASC) products
FROM
    Activities
GROUP BY
    1
ORDER BY
    sell_date

-- first time doing string aggregation, 
-- work almost like an arithmetic aggregation and combines row strings, 
-- use group by if you have non aggregated columns in the select statement
-- group_concat() in mysql and sqlite
