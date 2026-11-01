 /* Practice Problem 18
 In the data_job_salary table count the number of job postings available
 for each country.Use the job_country column to group the job postings, and count the number of
 job postings (job_id) within each country group */
SELECT 
    job_country,
    COUNT (job_id) AS job_count
FROM
    data_job_salary
GROUP BY
    job_country
ORDER BY
    job_count DESC;

