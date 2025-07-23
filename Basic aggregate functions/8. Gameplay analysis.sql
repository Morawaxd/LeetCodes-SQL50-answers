with cte as (select *, lead(event_date,1) over (partition by player_id order by event_date) as next_date,
dense_rank() over (partition by player_id order by event_date) as ranking from activity)
select round(sum(case when datediff(next_date,event_date) =1 then 1 else 0 end)/count(distinct player_id),2)
as fraction from cte where ranking = 1