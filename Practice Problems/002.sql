/*Practice Problem 2:
In the data_job_salary table get the columns job_id, job_title_short, job_location, and job_via columns.
And order it in Ascending ordr by job_location.*/

SELECT
	job_id,
	job_title_short,
	job_location,
	job_via
FROM
	data_job_salary
ORDER BY
	job_location ASC;
