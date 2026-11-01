/* Practice Problem 22 :
Retrieve the list of job titles (job_title) and the corresponding company names (name)
for all job postings that mention "Data Scientist" in the Job title. Use the 
data_job_salary and company_dim tables fo this query.
*/

SELECT
    data_job_salary.job_title,
    company_dim.name AS company_name

FROM data_job_salary
INNER JOIN
company_dim
 ON data_job_salary.company_id = company_dim.company_id
WHERE
    LOWER(data_job_salary.job_title) LIKE '%data scientist%'

