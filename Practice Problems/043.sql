-- LeetCode Practice Problem --Easy
--https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/
SELECT
    customer_number
FROM 
    Orders
WHERE
    order_number IS NOT NULL
    AND
    customer_number IS NOT NULL
GROUP BY
    customer_number
ORDER BY
    COUNT(order_number) DESC
LIMIT
    1