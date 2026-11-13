--LeetCode Practice Problem --easy
-- https://leetcode.com/problems/employees-earning-more-than-their-managers/
-- first time ever doing self join
 WITH employeeDupli as(
        SELECT
            id,
            salary
        FROM
            Employee
 )
 SELECT
    Employee.name AS Employee
FROM    Employee
LEFT JOIN employeeDupli ON Employee.managerId = employeeDupli.id
WHERE
    Employee.salary > employeeDupli.salary