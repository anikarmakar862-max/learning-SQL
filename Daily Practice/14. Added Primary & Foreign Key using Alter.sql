/* Deleted missing job_id & skill_id records from skills_job_dim table, because skills_job_dim 
is the original dataset and contains extra data compared to the data_job_salary & skills_dim
table. The data_job_salary & skills_dim table was loaded from https://lukeb.co/sql_jobs_db and
exported to CSV, whereas skills_job_dim table needed to be downloaded from https://lukeb.co/sql_project_csvs
since it contained duplicate values. And the original data_job_salary(job_postings_fact) CSV
is above 100 MB and cannot be hosted on GitHub*/
DELETE FROM skills_job_dim
WHERE job_id NOT IN (SELECT job_id FROM data_job_salary);
DELETE FROM skills_job_dim
WHERE skill_id NOT IN (SELECT skill_id FROM skills_dim);
-- _________________________________________________________________________________
--              Adding Primary Key and Foreign Key to tables:

ALTER TABLE company_dim
ADD PRIMARY KEY (company_id);

ALTER TABLE skills_dim
ADD PRIMARY KEY (skill_id);

ALTER TABLE data_job_salary
ADD PRIMARY KEY (job_id),
ADD FOREIGN KEY (company_id) REFERENCES company_dim (company_id);

ALTER TABLE skills_job_dim
ADD PRIMARY KEY (job_id, skill_id),
ADD FOREIGN KEY (job_id) REFERENCES data_job_salary (job_id),
ADD FOREIGN KEY (skill_id) REFERENCES skills_dim (skill_id);

-- order of foreign and primary key matter. a foreign key cannot exist before the parent table
-- already has it as a primary key