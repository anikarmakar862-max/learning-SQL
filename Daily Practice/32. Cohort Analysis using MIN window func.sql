
SELECT DISTINCT
    cohort_year,
    SUM(net_revenue) OVER(PARTITION BY cohort_year) *100/
    SUM(net_revenue) OVER() AS pct_of_total_revenue

FROM(
    SELECT
        MIN(EXTRACT (YEAR FROM orderdate)) 
        OVER(PARTITION BY customerkey) cohort_year,
        (exchangerate * unitprice * quantity) net_revenue
    FROM
        sales
);
--Alternatively
WITH yearly_cohort AS (
    SELECT DISTINCT
    customerkey,
    EXTRACT (YEAR FROM MIN (orderdate) OVER(PARTITION BY customerkey)) cohort_year
    FROM
        sales
)

SELECT
    cohort_year,
    SUM(exchangerate * unitprice * quantity) net_revenue

FROM sales s
LEFT JOIN yearly_cohort yc ON s.customerkey = yc.customerkey
GROUP BY
    cohort_year
