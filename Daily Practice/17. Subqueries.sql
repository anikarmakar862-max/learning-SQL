-- Subquery - Nested Query
-- Find the Company names with No Degree mentioned

SELECT
	company_id
	name
FROM company_dim
WHERE company_id IN (
					SELECT
                   		company_id
                   	FROM data_job_salary
                    WHERE job_no_degree_mention = true
				   )