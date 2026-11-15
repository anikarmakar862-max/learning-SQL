--RANK skips numbers whereas DENSE_RANK doesn't skip numbers
SELECT
     customerkey,
    (unitprice * quantity * exchangerate) AS ordervalue,
    RANK() 
    OVER(PARTITION BY customerkey ORDER BY unitprice * quantity * exchangerate DESC) 
    ordervalue_rank_of_this_customer,
    RANK()
    OVER(ORDER BY unitprice * quantity * exchangerate DESC) ordervalue_rank,
    DENSE_RANK()
    OVER(ORDER BY unitprice * quantity * exchangerate DESC) ordervalue_dense_rank

FROM
    sales;

-- Order Count Ranks
SELECT
    ROW_NUMBER() OVER(ORDER BY COUNT(*) DESC) row_num,
    customerkey,
    COUNT(*) ordercount,
    RANK() OVER(ORDER BY COUNT(*) DESC) rank_order_count,
    DENSE_RANK() OVER(ORDER BY COUNT(*) DESC) dense_rank_order_count

FROM
    sales
GROUP BY
    customerkey;