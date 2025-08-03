with cte as (select sale_id, product_id, year, quantity, price, 
row_number() over (partition by product_id order by year) as rownumber from sales)
select product_id, year as first_year, quantity, price from cte where rownumber =1

-- I think this query works just fine, but for some reason author doesn't want it to be in order