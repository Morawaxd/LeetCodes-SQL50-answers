select query_name, round(avg(rating/position),2)as quality, 
ifnull(round(100 * sum(case when rating < 3 then 1 end)/ count(position),2),0) as poor_query_percentage
from queries
group by query_name
