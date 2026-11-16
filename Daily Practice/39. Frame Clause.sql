WITH monthly_revenue AS (
    SELECT
        TO_CHAR(orderdate, 'YYYY - MM') AS month_,
        SUM(quantity * exchangerate* unitprice) AS net_revenue
    FROM
        sales
    WHERE
        EXTRACT(YEAR FROM orderdate) = '2021'
    GROUP BY
        month_
)
SELECT
    *,
    AVG (net_revenue) 
    OVER (ORDER BY month_ 
    ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS
    running_avg,
    AVG (net_revenue) 
    OVER (ORDER BY month_ 
    ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING) AS
    rolling_avg_3m
FROM monthly_revenue
