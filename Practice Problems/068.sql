--LeetCode - Medium
--https://leetcode.com/problems/game-play-analysis-iv/submissions/2201610120/

with laging_date as (
    select
        *,
        min(event_date) over(partition by player_id order by event_date) prevdate
    from
        Activity)
select
    round(count( case when (event_date - prevdate = 1) then player_id end) * 1.0 / count(distinct player_id), 2) as fraction
from
    laging_date

--previously I was using Lag - but that may have duplicate consicutive log ins