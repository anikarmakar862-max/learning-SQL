/*Practice Problem 7:
In the data_job_salary table get the columns job_id, job_title_short, job_location, job_via columns and
salary_year_avg. Only look at jobs that are NOT posted via LinkedIn.*/

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
	job_via = 'via LinkedIn';