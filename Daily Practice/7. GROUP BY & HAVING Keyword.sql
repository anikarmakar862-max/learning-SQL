SELECT
	job_title_short AS jobs,
	COUNT (job_title_short) AS job_count,
	AVG (salary_year_avg) AS average_salary,
	MIN (salary_year_avg) AS lowest_pay,
	MAX (salary_year_avg) AS highest_pay
	
FROM 
	data_job_salary

GROUP BY
	job_title_short
	
HAVING
	COUNT (job_title_short) > 100  --Having allows aggregation filter, Where doesnt
	
ORDER BY
	average_salary DESC;