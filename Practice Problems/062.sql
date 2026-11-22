-- LeetCode Practice Problem --Medium
-- https://leetcode.com/problems/tree-node/submissions/2201360679/
SELECT
    id,
    CASE
    WHEN p_id is null THEN 'Root' 
    WHEN id IN  (SELECT
        p_id
    FROM Tree)
 THEN 'Inner'
    ELSE 'Leaf'
    END as type
FROM
    Tree
