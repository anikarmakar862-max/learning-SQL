WITH net_revenue_all AS (

SELECT
    s.orderdate,
    p.categoryname category,
    s.unitcost * s.unitprice * s.exchangerate net_revenue
FROM
    sales s
LEFT JOIN product p ON s.productkey = p.productkey
)

SELECT
    net_revenue_all.category,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY CASE WHEN orderdate 
    BETWEEN '2022-01-01' AND '2022-12-31' THEN net_revenue END) median_sales_2022,

    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY CASE WHEN orderdate 
    BETWEEN '2023-01-01' AND '2023-12-31' THEN net_revenue END) median_sales_2023,

    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY CASE WHEN orderdate 
    BETWEEN '2024-01-01' AND '2024-12-31' THEN net_revenue END) median_sales_2024

FROM net_revenue_all
GROUP BY category                    

-- PERCENTILE_CONT & PERCENTILE_DISC are ordered-set aggregate functions.
-- PERCENTILE_CONT (continuous) - interpolates between values to calculate a continuous result.
-- PERCENTILE_DISC (discrete)   - returns an exact value from the dataset.