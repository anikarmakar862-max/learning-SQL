/* Practice Problem 31 : CTE
Find the count of the number of remote job postings per skill
 -**-  Display the top skills by there remote jobs
 -**-  Include the skill ID, name and count of postings requiring the skill
 */
 WITH remote_jobs AS (
    SELECT
        job_id
    FROM
        data_job_salary
    WHERE
        job_work_from_home = TRUE
)

SELECT 
    skills_dim.skill_id,
    skills_dim.skills AS skill_name,
    COUNT(remote_jobs.job_id) AS job_count

FROM
    remote_jobs

INNER JOIN skills_job_dim ON remote_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id

GROUP BY skills_dim.skill_id
ORDER BY job_count DESC
LIMIT 10;

--Alternativly :-
WITH remote_jobs_2 AS (
    SELECT
        skills_job_dim.skill_id,
        COUNT(skills_job_dim.skill_id) AS skill_count
    FROM
        skills_job_dim
    INNER JOIN data_job_salary ON
    data_job_salary.job_id = skills_job_dim.job_id
    WHERE
        data_job_salary.job_work_from_home = TRUE
    GROUP BY skill_id
)

SELECT

    remote_jobs_2.skill_id,
    skills_dim.skills AS skill_name,
    remote_jobs_2.skill_count


FROM
    remote_jobs_2

INNER JOIN skills_dim ON remote_jobs_2.skill_id = skills_dim.skill_id

ORDER BY remote_jobs_2.skill_count DESC LIMIT 10;