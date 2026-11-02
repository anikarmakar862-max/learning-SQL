/* Practice Problem 24 :
Find the average salary and number of job_posting for each skill for this:
* Write a query to list each unique skills from the skills_dim table
* Count how many job posting mention each skill from the skills_job_dim table
* Calculate the average yearly salary for job postings associated with each skill.
* Group the results by skill name.
* Order by the average salary.  */

SELECT
    skills_dim.skills,
    COUNT(skills_job_dim.skill_id) AS job_count,
    ROUND(AVG(data_job_salary.salary_year_avg), 2) AS avg_salary

FROM skills_dim

LEFT JOIN skills_job_dim ON skills_job_dim.skill_id = skills_dim.skill_id
LEFT JOIN data_job_salary ON data_job_salary.job_id = skills_job_dim.job_id

GROUP BY skills_dim.skill_id
ORDER BY avg_salary DESC NULLS LAST;

