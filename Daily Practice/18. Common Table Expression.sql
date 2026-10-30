-- CTE - Common Table Expression -  A predefined Query within a Query that can be reused
-- WITH cte_name AS ( CTE definition, no semicolon insideb )

WITH company_posting_count_temp_table AS ( 
		SELECT
			company_id,
			COUNT(*) AS job_posting_count
		FROM data_job_salary
		GROUP BY company_id)

SELECT 
	company_dim.name, 
	company_posting_count_temp_table.job_posting_count
FROM 
	company_dim
LEFT JOIN 
	company_posting_count_temp_table
	ON company_posting_count_temp_table.company_id = company_dim.company_id
ORDER BY company_posting_count_temp_table.job_posting_count DESC;
