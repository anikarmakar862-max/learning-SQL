--LeetCode -Medium
--https://leetcode.com/problems/product-sales-analysis-iii/submissions/2205058125/

select
    product_id,
    year first_year,
    quantity,
    price
from
    Sales
where
    (product_id, year) in 
    (select
        product_id,
        min(year)
    from
        Sales
    group by
        product_id)