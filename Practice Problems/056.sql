-- LeetCode Practice Problem --Easy
--https://leetcode.com/problems/sales-analysis-iii/submissions/2198817991/

SELECT
    p.product_id,
    p.product_name
FROM    Product p
INNER JOIN Sales s ON  p.product_id = s.product_id
GROUP BY
    p.product_id,
    p.product_name
HAVING
    MIN(s.sale_date ) >= '2019-01-01'
    AND
    MAX(s.sale_date) <= '2019-03-31'