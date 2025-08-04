with cte as (select *, sum(weight) over (order by turn) as suma from queue)
select person_name from cte where suma <= 1000 order by suma desc limit 1