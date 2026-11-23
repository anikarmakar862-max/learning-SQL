--LeetCode - Medium
--https://leetcode.com/problems/rank-scores/submissions/2201583351/
select
score,
dense_rank() over(order by score desc) as "rank"
from Scores
order by score desc