/* Practice Problem 1:
Get the unique job locations in the data_job_salary table. Order in alphabetical order  */

SELECT DISTINCT
    job_location

FROM data_job_salary

WHERE job_location IS NOT NULL

ORDER BY job_location ASC
LIMIT 100;

-- Alternatively,  if other columns are need. Using DISTINCT ON (postgres only):-

SELECT DISTINCT ON
	(job_location) job_location,
	job_id,
	job_title_short

FROM data_job_salary

WHERE job_location IS NOT NULL

ORDER BY job_location ASC
LIMIT 100;
