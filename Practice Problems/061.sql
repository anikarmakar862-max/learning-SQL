-- LeetCode Practice Problem --Easy
--https://leetcode.com/problems/average-selling-price/submissions/2200690335/
SELECT
    p.product_id,
    COALESCE(
        ROUND (SUM(p.price * units) * 1.0 / 
                        NULLIF(SUM(units), 0)
             , 2)
        , 0)
        AS average_price
FROM
    Prices p
LEFT JOIN UnitsSold us ON p.product_id = us.product_id
    AND
    us.purchase_date BETWEEN  p.start_date AND p.end_date
GROUP BY
    p.product_id
--incorrect submission
-- https://leetcode.com/problems/average-selling-price/submissions/2200687796/
SELECT
    p.product_id,
    COALESCE(
        ROUND (SUM(p.price * units) * 1.0 / SUM(units) , 2), 0)
        AS average_price
FROM
    Prices p
LEFT JOIN UnitsSold us ON p.product_id = us.product_id
    AND
    us.purchase_date BETWEEN  p.start_date AND p.end_date
GROUP BY
    p.product_id
-- without nullif create a divide by zero error