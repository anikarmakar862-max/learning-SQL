SELECT
    jobs.job_id,
    skills_to_job.skill_id,
	jobs.job_title_short,
	skills.skills
	
FROM data_job_salary AS jobs

INNER JOIN skills_job_dim AS skills_to_job
    ON jobs.job_id = skills_to_job.job_id
	
INNER JOIN skills_dim AS skills
    ON skills_to_job.skill_id = skills.skill_id

LIMIT 100;