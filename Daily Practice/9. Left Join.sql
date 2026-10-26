SELECT
    jobs.job_id,
    jobs.job_title_short,
    company.name

FROM data_job_salary AS jobs
LEFT JOIN company_dim AS company
    ON jobs.company_id = company.company_id
