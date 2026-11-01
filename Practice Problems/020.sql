/* Practice Problem 20 :
We are going to check that all the skills that do not have a category assigned to it.
This can be used for validating data. So, get all skills form the skills_dim table 
that don't have type classification assigned to them . Return the skill_id and skills. 
*/

SELECT 
    skill_id,
    skills
FROM
    skills_dim
WHERE 
    LOWER(type) LIKE '%other%'