-- LeetCode Practice Problem --Easy
--https://leetcode.com/problems/user-activity-for-the-past-30-days-i/submissions/2198821338/
SELECT
    activity_date AS day,
    COUNT (DISTINCT user_id) AS active_users
FROM
    Activity
WHERE 
    activity_date  BETWEEN ('2019-07-27'::DATE - INTERVAL '29 day') AND '2019-07-27'
GROUP BY
    day
-- incorrect submission - 
-- https://leetcode.com/problems/user-activity-for-the-past-30-days-i/submissions/2198817055/
-- needs to be 29 instead of 30
SELECT
    activity_date AS day,
    COUNT (DISTINCT user_id) AS active_users
FROM
    Activity
WHERE 
    activity_date  BETWEEN ('2019-07-27'::DATE - INTERVAL '30 day') AND '2019-07-27'
GROUP BY
    day