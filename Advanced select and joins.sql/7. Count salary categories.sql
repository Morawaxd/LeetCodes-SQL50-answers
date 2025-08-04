with categories as (select "Low Salary" as category
union all
select "Average Salary"
Union all
select "High Salary"),

classification as (select *, 
case when income < 20000 then "Low Salary" 
when income >= 20000 and income <= 50000 then "Average Salary"
when income > 50000 then "High Salary" 
else 0 end as category from accounts),

grouped as (select category, count(*) as accounts_count from classification group by category)

select c.category, coalesce(g.accounts_count,0) as accounts_count from categories c
left join grouped g on c.category = g.category