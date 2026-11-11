-- INTERVAL 'value unit' -- Last five years revenue by brand

SELECT
    CURRENT_DATE,
    NOW(),
    s.orderdate,
    p.brand,
    SUM (s.quantity * s.unitprice * s.exchangerate) net_revenue
FROM 
    sales s
LEFT JOIN
    product p ON p.productkey = s.productkey
WHERE
    orderdate <= CURRENT_DATE - INTERVAL '5 years'
GROUP BY
    s.orderdate, p.brand