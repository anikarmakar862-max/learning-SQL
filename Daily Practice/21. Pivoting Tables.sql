-- Pivoting -- CASE WHEN
-- Using COUNT
SELECT
    orderdate,
    COUNT(DISTINCT CASE WHEN c.continent = 'Europe' THEN s.customerkey END) eu_number_of_customers,
    COUNT(DISTINCT CASE WHEN c.continent = 'North America' THEN s.customerkey END) na_number_of_customers,
    COUNT(DISTINCT CASE WHEN c.continent = 'Australia' THEN s.customerkey END) au_number_of_customers
FROM
    sales s
LEFT JOIN customer c ON s.customerkey = c.customerkey

GROUP BY
    orderdate

ORDER BY
    orderdate;

-- Using SUM

SELECT
    p.categoryname,
    SUM(DISTINCT CASE WHEN EXTRACT(YEAR FROM s.orderdate) = '2022' THEN (s.unitcost * s.quantity) END) revenue_2022,
    SUM(DISTINCT CASE WHEN EXTRACT(YEAR FROM s.orderdate) = '2023' THEN (s.unitcost * s.quantity) END) revenue_2023,
    SUM(DISTINCT CASE WHEN EXTRACT(YEAR FROM s.orderdate) = '2024' THEN (s.unitcost * s.quantity) END) revenue_2024
FROM
    sales s
LEFT JOIN product p ON s.productkey = p.productkey

GROUP BY
    p.categoryname

ORDER BY
    p.categoryname;