/* Practice Problem 28 : -- This has already been done.
Create three tables -
* Jan 2023 jobs
* Feb 2023 jobs
* Mar 2023 jobs */

CREATE TABLE data_jobs_january AS
    (
        SELECT *
        FROM data_job_salary
        WHERE EXTRACT (MONTH FROM data_job_salary.job_posted_date) = 1
    );
CREATE TABLE data_jobs_february AS
    (
        SELECT *
        FROM data_job_salary
        WHERE EXTRACT (MONTH FROM data_job_salary.job_posted_date) = 2
    );
CREATE TABLE data_jobs_march AS
    (
        SELECT *
        FROM data_job_salary
        WHERE EXTRACT (MONTH FROM data_job_salary.job_posted_date) = 3
    );
