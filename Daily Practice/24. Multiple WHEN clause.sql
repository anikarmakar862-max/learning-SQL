-- Categorizing revenue into quartile-based groups using multiple WHEN conditions in CASE WHEN
WITH calculations AS (
    SELECT
        PERCENTILE_CONT(0.25) WITHIN GROUP
                    (ORDER BY (s.netprice * s.quantity * s.exchangerate)) q1,
        PERCENTILE_CONT(0.5) WITHIN GROUP
                    (ORDER BY (s.netprice * s.quantity * s.exchangerate)) median,
        PERCENTILE_CONT(0.75) WITHIN GROUP
                    (ORDER BY (s.netprice * s.quantity * s.exchangerate)) q3                  
    FROM
        sales s
    LEFT JOIN product p ON p.productkey = s.productkey
    WHERE 
        EXTRACT(YEAR FROM orderdate) IN ('2022', '2023')
    )

SELECT
    p.brand,
    CASE 
        WHEN ((s.netprice * s.quantity * s.exchangerate) <= cal.q1) THEN 'Q1_Bottom_25%'
        WHEN ((s.netprice * s.quantity * s.exchangerate) >= cal.q3) THEN 'Q4_Top_25%'
        ELSE 'Q2_Q3_Mid_50%'
        END AS revenue_categorization,
    SUM(s.netprice * s.quantity * s.exchangerate) net_revenue
FROM sales s
LEFT JOIN product p ON s.productkey = p.productkey, calculations cal
GROUP BY
    p.brand, revenue_categorization
ORDER BY
    p.brand ASC, revenue_categorization DESC;