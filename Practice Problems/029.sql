/* Practice Problem 29 :
Identify the top 5 skills that are most frequently mentioned in job postings.
Use a subquery to find the skill IDs with the highest counts in the skills_job_dim
table and then join the result with the skills_dim to get the names.
*/

SELECT 
    skills_dim.skills AS skill_name,
    top_skills.job_count
FROM (
    SELECT
        skills_job_dim.skill_id,
        COUNT(skills_job_dim.job_id) AS job_count
    FROM   
        skills_job_dim
    GROUP BY skills_job_dim.skill_id
    
) AS top_skills

INNER JOIN   skills_dim       ON     skills_dim.skill_id = top_skills.skill_id

ORDER BY top_skills.job_count DESC
LIMIT 10;