/* Practice Problem 12:
Find all job posting in the data_job_salary where the job_title is exactly "Engineer" and followed after
the term. Get the job_id, job_title, and job_posted_date.*/

SELECT
    job_id,
	job_title,
	job_posted_date
FROM
    data_job_salary

WHERE
	job_title LIKE 'Engineer%';
