SELECT
    TO_CHAR(s.orderdate, 'Month-YYYY') order_month,
        SUM(s.netprice * s.quantity * s.exchangerate) total_revenue,
    COUNT(DISTINCT c.customerkey) number_of_unique_customers
FROM
    sales s
LEFT JOIN customer c ON s.customerkey = c.customerkey
WHERE
    EXTRACT(YEAR FROM orderdate) IN ('2021', '2022', '2023')
GROUP BY
    s.orderdate;