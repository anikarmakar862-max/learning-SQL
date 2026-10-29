SELECT
	job_title_short,
	job_location,
	job_country,
	CASE
		WHEN job_location LIKE '%Kolkata%' THEN 'home town'
		WHEN job_location LIKE '%Anywhere%' THEN 'Remote Job'
		WHEN job_country='India' THEN 'In India'
		ELSE 'Outside India'
	END AS location_category
FROM data_job_salary