/*Practice Problem 5:
In the data_job_salary table get the columns job_id, job_title_short, job_location, job_via columns and
salary_year_avg. Only return 'Full-time' jobs.*/

SELECT
	job_id,
	job_title_short,
	job_location,
	job_via,
	salary_year_avg
	--job_schedule_type
FROM
	data_job_salary
WHERE
	job_schedule_type = 'Full-time';  --Use '%Full-time%' for jobs with plus other scheduling types
