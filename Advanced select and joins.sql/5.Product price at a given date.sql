with cte as
    (select product_id, new_price, change_date
    from products p where change_date = 
        (select max(change_date) from products where p.product_id = product_id and change_date <= '2019-08-16'))
select p.product_id, ifnull(cte.new_price, 10) as price from(select distinct product_id from products) p
left join cte on cte.product_id = p.product_id order by product_id

-- This one got me tired...