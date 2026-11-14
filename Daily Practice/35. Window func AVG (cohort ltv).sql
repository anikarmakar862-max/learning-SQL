-- Customer Life Time Value
WITH yearly_cohort AS(
        SELECT
        customerkey,
        EXTRACT(YEAR FROM MIN(orderdate)) AS cohort_year,
        SUM(quantity * exchangerate * unitprice) customer_ltv
    FROM
        sales
    GROUP BY customerkey )
SELECT
    *,
    AVG (customer_ltv) OVER(PARTITION BY cohort_year) AS avg_cohort_ltv
FROM
    yearly_cohort
ORDER BY
    cohort_year,
    customerkey