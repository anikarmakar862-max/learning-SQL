SELECT
	COUNT (DISTINCT job_title_short) AS number_of_unique_job_titles,
	COUNT (*) AS number_of_rows,
	SUM (salary_year_avg) AS total_yearly_salary_paid,
	AVG (salary_year_avg) AS average_salary,
	MIN (salary_year_avg) AS least_pay,
	MAX (salary_year_avg) AS highest_pay
	
FROM data_job_salary;
