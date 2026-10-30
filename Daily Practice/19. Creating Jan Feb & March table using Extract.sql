CREATE TABLE data_jobs_january AS
(
SELECT *
FROM data_job_salary
WHERE EXTRACT(MONTH FROM job_posted_date)= 1
);

CREATE TABLE data_jobs_february AS
(
SELECT *
FROM data_job_salary
WHERE EXTRACT(MONTH FROM job_posted_date)= 2
);

CREATE TABLE data_jobs_march AS
(
SELECT *
FROM data_job_salary
WHERE EXTRACT(MONTH FROM job_posted_date)= 3
);
