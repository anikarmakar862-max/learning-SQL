-- Processing time using AGE and EXTRACT
-- AGE(ending_date, starting_date)

SELECT
    orderdate,
    deliverydate,
    EXTRACT(DAY FROM AGE(deliverydate, orderdate)) processing_time
FROM
    sales
ORDER BY
    processing_time DESC;