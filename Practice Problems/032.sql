/* Practice Problem 32 : Union/Union All
Find job postings from the first quarter that have a salary
greater than $ 70K
-- Combine data_job tables from the first quarter of 2023 (Jan-Mar)
-- Get job posting with average yearly salary > $70,000 */

WITH data_jobs_1st_quarter AS (
    SELECT * FROM data_jobs_january
    UNION ALL
    SELECT * FROM data_jobs_february
    UNION ALL
    SELECT * FROM data_jobs_march
)

SELECT *
FROM data_jobs_1st_quarter
WHERE
    salary_year_avg > 70000;