SELECT
    *,
    net_revenue *100/ daily_net_revenue as percent_daily_revenue
FROM (
    SELECT
        orderdate,
        orderkey,
        linenumber,
        (exchangerate * quantity * unitprice) net_revenue,
        SUM(exchangerate * quantity * unitprice) OVER(PARTITION BY orderdate) daily_net_revenue
    FROM
        sales
) AS revenue_cal