select distinct num as ConsecutiveNums 
from (select id, num, lag(num,1) over (order by id) as prev_num,
lead(num,1) over (order by id) as next_num from logs) as cte
where cte.prev_num = num and cte.next_num = num