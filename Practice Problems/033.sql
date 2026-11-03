/* Practice Problem 33 : Union All
* Get the corresponding skill and skill type for each job posting
  in q1 (quarter 1)
* Include those without any skills too
* Look at the skills and type of each job in the first quarter that has
  a salary > $70,000 */

WITH data_jobs1st_quarter AS (
    SELECT * FROM data_jobs_january
    UNION ALL
    SELECT * FROM data_jobs_february
    UNION ALL
    SELECT * FROM data_jobs_march
)

SELECT
    skills_dim.skills AS skill_name,
    skills_dim.type AS skill_category,
    data_jobs1st_quarter.salary_year_avg
FROM
    data_jobs1st_quarter

LEFT JOIN skills_job_dim 
                    ON data_jobs1st_quarter.job_id = skills_job_dim.job_id
LEFT JOIN skills_dim 
                    ON skills_dim.skill_id = skills_job_dim.skill_id
                
WHERE
    data_jobs1st_quarter.salary_year_avg > 70000

ORDER BY
    data_jobs1st_quarter.salary_year_avg DESC;