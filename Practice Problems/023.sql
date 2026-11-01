/* Practice Problem 23 :
Fentch all job postings, including their job titles and the names of the skills
required, even if no skills are listed for a job. Ensure that the job is located
in "New York" and offers "Health insurance". Use the data_job_salary, skills_job_dim
and skills_dim tables
*/

SELECT
    data_job_salary.job_title,
    skills_dim.skills

FROM data_job_salary

LEFT JOIN skills_job_dim ON data_job_salary.job_id = skills_job_dim.job_id
LEFT JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id

WHERE
    LOWER(data_job_salary.job_location) LIKE '%new york%'
    AND
    job_health_insurance =TRUE
--  AND skills_dim.skills is NULL
    ;