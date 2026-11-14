-- GROUP BY run before Window function which create problems
-- So use window functions in cte/subqueries before group by

WITH customer_orders AS (
    SELECT
        customerkey,
        COUNT(orderdate) OVER(PARTITION BY customerkey) num_of_order,
        (quantity * unitprice * exchangerate) order_value 
    FROM
        sales
)

SELECT
    customerkey,
    num_of_order,
    AVG(order_value) AS net_revenue
FROM
    customer_orders
GROUP BY
    customerkey,
    num_of_order