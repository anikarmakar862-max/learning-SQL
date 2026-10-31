/* Practice Problem 14:
* Look for non-senior data analyst or business analyst roles
* Get the job_title, location, and average yearly salary*/

SELECT
    job_title,
    job_title_short,
    job_location, 
    salary_year_avg

FROM data_job_salary

WHERE 
        (job_title_short NOT LIKE '%Senior%')
        AND
        (job_title_short LIKE '%Data Analyst%' OR 
        job_title_short LIKE '%Business Analyst%')

-- job_title column may also be used
-- Alternatively

SELECT
    job_title,
    job_location, 
    salary_year_avg

FROM data_job_salary

WHERE
    (job_title LIKE '%Data%' OR job_title LIKE '%Business%')
    AND
    job_title LIKE '%Analyst%'
    AND
    job_title NOT LIKE '%Senior%'
-- Like is case-sensitive