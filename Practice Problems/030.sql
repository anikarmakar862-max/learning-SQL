/* Practice Problem 30 : Subqueries
Determine the size category of ("Small", "Medium", or "Large") for each company
by first identifying the number of job postings they have. Use a subquery to calculate
the total job postings per company. A company is considered 'Small' if it has less
than 10 job postings, 'Medium' if the number of job postings is between 10 and 50,
and 'Large' if it has more than 50 job postings. Implement a subquery to aggregate
job counts per company before classifing them based on size. */

SELECT
    company_dim.name AS company_name,
    COUNT(data_job_salary.job_id) AS job_count,
    (
    CASE
        WHEN COUNT(data_job_salary.job_id) <10 THEN 'Small'
        WHEN COUNT(data_job_salary.job_id) BETWEEN 10 AND 50 THEN 'Medium'
        WHEN COUNT(data_job_salary.job_id) > 50 THEN 'Large'
        ELSE 'Un-identified'
    END
    ) AS categorization_
FROM data_job_salary
LEFT JOIN company_dim ON company_dim.company_id = data_job_salary.company_id

GROUP BY company_name
ORDER BY job_count DESC;

-- Alternatively : - 
SELECT
    company_name,
    job_count,
    CASE
        WHEN job_count < 10 THEN 'Small'
        WHEN job_count BETWEEN 10 AND 50 THEN 'Medium'
        WHEN job_count > 50 THEN 'Large'
        ELSE 'Un-identified'
    END AS categorization_
FROM (
    SELECT
        company_dim.name AS company_name,
        COUNT(data_job_salary.job_id) AS job_count
    FROM data_job_salary
    LEFT JOIN company_dim ON company_dim.company_id = data_job_salary.company_id
    GROUP BY company_dim.name
) AS company_job_counts
ORDER BY job_count DESC;