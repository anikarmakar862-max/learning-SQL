/* Practice Problem 26 :
Write a query to count the number of job postings for each month in 2023, 
adjusting the job_posted_date to be in 'America/New_York' time zone before
extracting the month. Assume the job_posted_date is stored in UTC.
Group by and Order by the month */

SELECT
        EXTRACT(MONTH FROM job_posted_date
        AT TIME ZONE 'UTC' AT TIME ZONE 'America/New_York') AS months_,
        
        COUNT(job_id)
FROM
        data_job_salary
WHERE 
        EXTRACT(YEAR FROM job_posted_date
        AT TIME ZONE 'UTC' AT TIME ZONE 'America/New_York') = 2023
GROUP BY 
        months_
ORDER BY 
        months_;