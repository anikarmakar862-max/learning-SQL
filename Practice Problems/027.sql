/* Practice Problem 27 :
Write a query to find companies (include company name) that have
posted job offering health insurance, where these postings were
made in the second quarter of 2023. Use date extraction to filter by quarters
*/

SELECT
    company_dim.company_id,
    company_dim.name AS company_name,
    data_job_salary.job_posted_date
FROM
    company_dim
LEFT JOIN data_job_salary ON data_job_salary.company_id = company_dim.company_id

WHERE
    data_job_salary.job_health_insurance = TRUE
    AND
    data_job_salary.job_posted_date::DATE BETWEEN '2023-04-01' AND '2023-06-30'

ORDER BY data_job_salary.job_posted_date ASC;

-- in place of ::DATE BETWEEN 'x' AND 'y' -- this can also be used :-
--    AND EXTRACT(QUARTER FROM data_job_salary.job_posted_date) = 2
--    AND EXTRACT(YEAR FROM data_job_salary.job_posted_date) = 2023
-- from google ai mode