/* LeetCode Practice Problem -easy
https://leetcode.com/problems/combine-two-tables/ */
-- basic combining two tables

SELECT
    firstName,
    lastName,
    city, 
    state
FROM
    Person
LEFT JOIN Address ON 
Person.personId = Address.personId