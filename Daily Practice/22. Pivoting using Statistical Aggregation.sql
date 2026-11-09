-- Using AVG, MIN and MAX

SELECT
    p.categoryname,
    MIN (DISTINCT CASE WHEN EXTRACT(YEAR FROM s.orderdate) = '2022' THEN (s.unitcost * s.quantity) END) min_revenue_2022,
    AVG (DISTINCT CASE WHEN EXTRACT(YEAR FROM s.orderdate) = '2022' THEN (s.unitcost * s.quantity) END) avg_revenue_2022,
    MAX (DISTINCT CASE WHEN EXTRACT(YEAR FROM s.orderdate) = '2022' THEN (s.unitcost * s.quantity) END) max_revenue_2022,
    MIN (DISTINCT CASE WHEN EXTRACT(YEAR FROM s.orderdate) = '2023' THEN (s.unitcost * s.quantity) END) min_revenue_2023,
    AVG (DISTINCT CASE WHEN EXTRACT(YEAR FROM s.orderdate) = '2023' THEN (s.unitcost * s.quantity) END) avg_revenue_2023,
    MAX (DISTINCT CASE WHEN EXTRACT(YEAR FROM s.orderdate) = '2023' THEN (s.unitcost * s.quantity) END) max_revenue_2023,
    MIN (DISTINCT CASE WHEN EXTRACT(YEAR FROM s.orderdate) = '2024' THEN (s.unitcost * s.quantity) END) min_revenue_2024,
    AVG (DISTINCT CASE WHEN EXTRACT(YEAR FROM s.orderdate) = '2024' THEN (s.unitcost * s.quantity) END) avg_revenue_2024,
    MAX (DISTINCT CASE WHEN EXTRACT(YEAR FROM s.orderdate) = '2024' THEN (s.unitcost * s.quantity) END) max_revenue_2024
FROM
    sales s
LEFT JOIN product p ON s.productkey = p.productkey

GROUP BY
    p.categoryname

ORDER BY
    p.categoryname;

-- 

