/* Practice Problem 19
In the data_job_salary table calculate the total sum of the average yearly salary
(salary_year_avg) for all job postings that are marked as fully remote
(job_work_from_home TRUE) and divide it by the total count of salary_year_avg.
To get the total average yearly salary for full remote jobs.
Ensure to only include job postings where a yearly salary is specified
(i.e, salary_year_avg is not NULL) */

SELECT
    SUM(salary_year_avg)/COUNT(salary_year_avg) AS salary_per_job
FROM 
    data_job_salary
WHERE 
    job_work_from_home = TRUE AND
    salary_year_avg IS NOT NULL;