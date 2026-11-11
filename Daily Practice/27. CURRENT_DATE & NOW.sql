SELECT
    CURRENT_DATE, --current date have timezone feature but now doesn't
    NOW(),  -- TIMESTAMP
    s.orderdate,
    p.categoryname as category,
    SUM (s.quantity * s.unitprice * s.exchangerate) net_revenue
FROM 
    sales s
LEFT JOIN
    product p ON p.productkey = s.productkey
WHERE
    EXTRACT (YEAR FROM orderdate) <= EXTRACT(YEAR FROM CURRENT_DATE) - 5 --CURRENT DATE minus 5
GROUP BY
    s.orderdate, p.categoryname