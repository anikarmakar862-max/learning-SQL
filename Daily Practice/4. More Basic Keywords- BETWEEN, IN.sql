SELECT
	data_job_salary.job_title_short,
	data_job_salary.salary_year_avg,
	data_job_salary.salary_hour_avg,
	data_job_salary.job_location,
	data_job_salary.job_country
FROM data_job_salary
WHERE 
	(data_job_salary.salary_year_avg BETWEEN 60000 AND 90000) AND
	(data_job_salary.job_country IN ('India', 'United States')) AND
	(data_job_salary.job_title_short IN ('Data Analyst', 'Data Scientist'))
ORDER BY
	data_job_salary.salary_year_avg DESC
LIMIT 200;
