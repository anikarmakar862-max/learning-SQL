SELECT
    customerkey,
    orderdate,
    (quantity * unitprice * exchangerate) net_revenue,

    AVG(quantity * unitprice * exchangerate) OVER(PARTITION BY customerkey) AS
    avg_revenue_per_customer,

    SUM(quantity * unitprice * exchangerate) OVER(PARTITION BY customerkey) AS
    total_revenue_from_customer,
    
    (quantity * unitprice * exchangerate) * 100 / 
    SUM(quantity * unitprice * exchangerate) OVER (PARTITION BY customerkey) AS
    percentage_of_customers_total_order
FROM
    sales;

