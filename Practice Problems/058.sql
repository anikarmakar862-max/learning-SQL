-- LeetCode Practice Problem --Easy
-- https://leetcode.com/problems/article-views-i/submissions/2198829818/
SELECT DISTINCT  author_id AS id
FROM    Views
WHERE   author_id = viewer_id
ORDER BY id