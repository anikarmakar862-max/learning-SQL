WITH monthly_revenue AS(
    SELECT
        TO_CHAR(orderdate, 'YYYY-MM') AS month,
        SUM(unitprice * quantity * exchangerate) net_revenue
    FROM 
        sales
    WHERE EXTRACT(YEAR FROM orderdate) = '2022'
    GROUP BY
        month
)
SELECT
    *,
    LAG(net_revenue) OVER(ORDER BY month) AS prevMonth_revenue,
    LEAD(net_revenue) OVER(ORDER BY month) AS nextMonth_revenue,
    FIRST_VALUE(net_revenue) OVER(ORDER BY month) first_month_revenue,
    LAST_VALUE(net_revenue) OVER(ORDER BY month) last_month_revenue,
    NTH_VALUE(net_revenue, 6) OVER(ORDER BY month) june_revenue
FROM 
    monthly_revenue