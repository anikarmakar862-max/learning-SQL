SELECT * 
FROM data_jobs_january

UNION

SELECT * 
FROM data_jobs_february


UNION

SELECT * 
FROM data_jobs_march

-- UNION - joins (combines the rows) tables with same data type ommiting duplicated
-- UNION ALL on the other hand keeps duplicates