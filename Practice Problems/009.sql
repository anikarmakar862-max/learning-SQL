/*Practice Problem 9:
In the data_job_salary table get jobs that have an average yearly salary less than $110,000 or greater.
Also get the job_id, job_title_short, job_location, job_via columns and
salary_year_avg columns*/

SELECT
	job_id,
	job_title_short,
	job_location,
	job_via,
	salary_year_avg
FROM 
	data_job_salary
WHERE
	salary_year_avg < 110000;