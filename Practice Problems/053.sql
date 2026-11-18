-- LeetCode Practice Problem --Easy
--https://leetcode.com/problems/actors-and-directors-who-cooperated-at-least-three-times/submissions/2198766361/
-- Write your PostgreSQL query statement below
SELECT
    actor_id,
    director_id
FROM
    ActorDirector
GROUP BY
    actor_id, director_id
HAVING
    COUNT(actordirector.timestamp) >= 3