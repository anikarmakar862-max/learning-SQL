-- LeetCode Practice Problem --Easy
--https://leetcode.com/problems/sales-person/submissions/2197945795/
SELECT
    s.name
FROM
    SalesPerson s
Where
    s.sales_id NOT IN (
    SELECT
        o.sales_id
    FROM 
        Orders o
    LEFT JOIN Company c
    ON c.com_id = o.com_id
    WHERE
        c.name = 'RED'
    Group by
        c.name,
        o. sales_id
        )
         