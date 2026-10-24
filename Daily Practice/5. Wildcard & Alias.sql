SELECT
	data_job_salary.job_title_short AS Title_Short,
	data_job_salary.job_title AS Title,
	data_job_salary.salary_year_avg AS Salary,
	data_job_salary.job_location As Location,
	data_job_salary.job_country AS Country
FROM data_job_salary
WHERE
	(data_job_salary.salary_year_avg IS NOT NULL) AND
	(data_job_salary.job_title LIKE '%Data%' OR
	data_job_salary.job_title LIKE '%Analyst%')
ORDER BY
	Salary DESC
LIMIT 200;