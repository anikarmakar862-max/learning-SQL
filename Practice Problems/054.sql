-- LeetCode Practice Problem --Easy
-- https://leetcode.com/problems/product-sales-analysis-i/submissions/2198771777/
SELECT
    p.product_name,
    s.year,
    s.price
FROM
    Sales s
LEFT JOIN Product p ON s.product_id = p.product_id