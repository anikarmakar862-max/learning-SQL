-- PARTITION BY two columns returns result for every unique combination of the two columns
SELECT DISTINCT
    cohort_year,
    purchase_year,
    COUNT(customerkey) OVER(PARTITION BY purchase_year, cohort_year)AS customer_number
FROM (
    SELECT DISTINCT
        customerkey,
        EXTRACT(YEAR FROM (MIN(orderdate) OVER(PARTITION BY customerkey))) cohort_year,
        EXTRACT(YEAR FROM orderdate) purchase_year
    FROM
        sales
)
ORDER BY
    cohort_year,
    purchase_year
