/*Practice Problem 3:
In the data_job_salary table get the columns job_id, job_title_short, job_location, job_via columns and
salary_year_avg. And only look at rows where job_title_short is 'Data Engineer'.*/

SELECT
	job_id,
	job_title_short,
	job_location,
	job_via,
	salary_year_avg
FROM
	data_job_salary
WHERE
	job_title_short = 'Data Engineer';
