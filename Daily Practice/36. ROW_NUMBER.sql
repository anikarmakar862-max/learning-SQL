SELECT
    ROW_NUMBER() OVER(ORDER BY orderdate, orderkey, linenumber) row_num,
    ROW_NUMBER() OVER(PARTITION BY orderdate ORDER BY orderdate, orderkey, linenumber) daily_order_num,
    *
FROM
    sales
LIMIT
    100;