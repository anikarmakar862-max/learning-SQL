SELECT
	data_job_salary.job_title_short,
	data_job_salary.salary_year_avg,
	data_job_salary.salary_hour_avg,
	data_job_salary.job_location
FROM data_job_salary
WHERE 
	data_job_salary.job_title_short = 'Data Analyst' 
	AND data_job_salary.salary_year_avg IS NOT NULL -- Forces only valid
	AND (data_job_salary.salary_year_avg >90000 OR data_job_salary.salary_hour_avg > 20)
ORDER BY
	data_job_salary.salary_year_avg DESC
LIMIT 20;