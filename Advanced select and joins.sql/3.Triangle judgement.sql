with cte as (select x, y, z,(x+y+z) as 'sum', (x+y+z)/2 as longest_possible_line from triangle)
select x, y, z, 
case when x >= longest_possible_line or
y >= longest_possible_line or
z >= longest_possible_line then 'No'
else 'Yes'
end as triangle from cte