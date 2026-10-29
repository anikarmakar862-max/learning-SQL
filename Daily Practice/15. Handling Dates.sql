-- Using ::DATE - removes timestamps from a timestamps data type and only leaves date

SELECT 
	job_title_short,
	job_country,
	job_posted_date::DATE AS date_only
FROM data_job_salary;

-- Adding timezone using "AT TIME ZONE"

SELECT
	job_title_short,
	job_country,
	job_posted_date AT TIME ZONE 'UTC'  AT TIME ZONE 'Asia/Kolkata' AS time_with_timezone
	-- is at and the to which we want to conver to
FROM data_job_salary;

-- EXTRACT
SELECT
	job_title_short,
	job_posted_date,
	EXTRACT (DAY FROM job_posted_date) AS day_posted,
	EXTRACT (MONTH FROM job_posted_date) AS month_posted,
	EXTRACT (YEAR FROM job_posted_date) AS year_posted
FROM data_job_salary;
