-- LeetCode Practice Problem -- EASY
-- https://leetcode.com/problems/rising-temperature/
-- LeetCode have hidden test cases that do not show on running the code
WITH lagging_temperature AS (
    SELECT 
        id,
        recordDate,
        temperature,
        LAG(temperature) OVER(ORDER BY recordDate) AS yesterdayTemp,
        LAG(recordDate) OVER(ORDER BY recordDate) AS prevDate
    FROM
        Weather
)
SELECT
    id
FROM
    lagging_temperature
WHERE 
    temperature > yesterdayTemp
    AND recordDate - prevDate = 1;