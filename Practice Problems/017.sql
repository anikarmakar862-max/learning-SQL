/* Practice Problem 17
In the data_job_salary table count the total number of job postings that
offer health insurance. USE the job_health_insurance column to determine
if a job posting offer health insurance (TRUE means it does offer health
insurance) */

SELECT
    job_title_short,
    COUNT (job_health_insurance) AS count_of_health_insurance
FROM data_job_salary
WHERE job_health_insurance = TRUE
GROUP BY job_title_short
