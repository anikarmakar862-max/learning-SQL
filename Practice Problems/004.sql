/*Practice Problem 4:
In the data_job_salary table get the columns job_id, job_title_short, job_location, job_via columns and
salary_year_avg. Only return rows where the job_location is in 'Tampa, FL'.*/

SELECT
	job_id,
	job_title_short,
	job_location,
	job_via,
	salary_year_avg
FROM 
	data_job_salary
WHERE
	job_location = 'Tampa, FL';