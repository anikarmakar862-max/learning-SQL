/*Practice Problem 6:
In the data_job_salary table get the columns job_id, job_title_short, job_location, job_via columns and
salary_year_avg. Only look at jobs that are NOT 'Part-time' jobs.*/

SELECT
	job_id,
	job_title_short,
	job_location,
	job_via,
	salary_year_avg--,
	--job_schedule_type
FROM 
	data_job_salary
WHERE NOT
	job_schedule_type = 'Part-time';  --Use '%Part-time%' for jobs that do not have part-time at all