/*Practice Problem 10:
Get job details for BOTH 'Data Analyst' or 'Business Analyst' position
	* For 'Data Analyst' >$100K
	* For 'Business Analyst' >$70K
Only include job location in EITHER
	* 'Boston, MA'
	* 'Anywhere' (i.e., Remote Jobs)*/

SELECT
	job_id,
	job_title_short,
	job_location,
	salary_year_avg
FROM 
	data_job_salary
WHERE
	(
	(job_title_short = 'Data Analyst' AND salary_year_avg > 100000)
	OR
	(job_title_short = 'Business Analyst' AND salary_year_avg > 70000)
	)
	AND
	job_location IN ('Boston, MA', 'Anywhere');