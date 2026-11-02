/* Practice Problem 25 :
Write a query to find the average salary both yearly and hourly for job
postings that were posted after June 1, 2023. Group the results by job schedule type */

SELECT
   --job_posted_date,
    data_job_salary.job_schedule_type,
    ROUND  (AVG(data_job_salary.salary_year_avg), 2) AS avg_yearly_salary,
    ROUND  (AVG(data_job_salary.salary_hour_avg), 2) AS avg_hourly_salary

FROM data_job_salary

WHERE 
    job_posted_date::DATE > '2023-06-01'
    AND
    job_schedule_type IS NOT NULL

GROUP BY data_job_salary.job_schedule_type

HAVING
    AVG(data_job_salary.salary_year_avg) IS NOT NULL
    AND
    AVG(data_job_salary.salary_hour_avg) IS NOT NULL

ORDER BY avg_yearly_salary DESC;


