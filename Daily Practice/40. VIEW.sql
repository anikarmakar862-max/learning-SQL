/*VIEW: A saved SQL query that acts like a permanent virtual table
        Stores ONLY the query logic (no physical data), always pulling fresh results
        Reuseable across different query files and session until dropped*/


CREATE VIEW cohort_analysis AS
WITH customer_revenue AS (
    SELECT
        s.customerkey,
        s.orderdate,
        SUM(s.quantity * s.netprice * s.exchangerate) AS total_net_revenue,
        COUNT(s.orderkey),
        c.countryfull,
        c.givenname,
        c.surname,
        c.age
    FROM sales s
    LEFT JOIN customer c ON c.customerkey = s.customerkey
    GROUP BY
        s.customerkey,
        s.orderdate,
        c.countryfull,
        c.givenname,
        c.surname,
        c.age
)
SELECT 
    cr.*,
    MIN(cr.orderdate) OVER(PARTITION BY customerkey) AS first_purchase_year,
    EXTRACT(YEAR FROM MIN(cr.orderdate) OVER(PARTITION BY customerkey)) AS cohort_year
FROM
    customer_revenue cr;
ALTER VIEW IF EXISTS cohort_analysis RENAME COLUMN count TO num_orders;