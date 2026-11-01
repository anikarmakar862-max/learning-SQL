/* Practice Problem 21 :
Identify all job postings that have neither an annual average salary (salary_year_avg)
nor an hourly average salary (salary_hour_avg) in the data_job_salary table. Return
the job_id, job_title, salary_year_avg, salary_hour_avg. This can be useful to look
at postings where there's no compensation. */

SELECT
    job_id,
    job_title,
    salary_year_avg,
    salary_hour_avg
FROM 
    data_job_salary
WHERE
    salary_hour_avg IS NULL
    AND
    salary_year_avg IS NULL