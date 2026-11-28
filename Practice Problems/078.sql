--LeetCode - Hard
-- https://leetcode.com/problems/trips-and-users/submissions/2205251184/
SELECT
    request_at AS day,
    ROUND(COUNT(CASE WHEN status LIKE 'cancelled%' THEN 1 END) * 1.0/
    COUNT(*), 2) AS "Cancellation Rate" 
FROM
    Trips t
LEFT JOIN   Users c ON c.users_id = t.client_id
LEFT JOIN Users d  ON d.users_id = t.driver_id
WHERE
    c.banned = 'No'
    AND
    d.banned = 'No'
    AND
    (request_at BETWEEN '2013-10-01' AND '2013-10-03')
GROUP BY request_at
--incorrect submission completely forgot to add the date filter
-- https://leetcode.com/problems/trips-and-users/submissions/2205247554/
SELECT
    request_at AS day,
    ROUND(COUNT(CASE WHEN status LIKE 'cancelled%' THEN 1 END) * 1.0/
    COUNT(*), 2) AS "Cancellation Rate" 
FROM
    Trips t
LEFT JOIN   Users c ON c.users_id = t.client_id
LEFT JOIN Users d  ON d.users_id = t.driver_id
WHERE
    c.banned = 'No'
    AND
    d.banned = 'No'
GROUP BY request_at