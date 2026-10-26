CREATE TABLE data_job_salary
(
job_id INT,
company_id INT,
job_title_short VARCHAR(255),
job_title VARCHAR(1000),
job_location VARCHAR(500),
job_via VARCHAR(500),
job_schedule_type VARCHAR(255),
job_work_from_home BOOLEAN,
search_location VARCHAR(500),
job_posted_date DATE,
job_no_degree_mention BOOLEAN,
job_health_insurance BOOLEAN,
job_country VARCHAR(255),
salary_rate VARCHAR(10),
salary_year_avg NUMERIC,
salary_hour_avg NUMERIC
);
COPY data_job_salary
FROM '.Resources/data_jobs_salary_all.csv'
DELIMITER '	' CSV HEADER;

SELECT *
FROM data_job_salary
LIMIT 100;
