with test as 
    (select *,
    row_number() over (partition by customer_id order by order_date) as rn,
    case when order_date = customer_pref_delivery_date then 'approved' else 'asd' end as state from delivery
    order by order_date desc)
select round(sum(case when state = 'approved' then 1 else 0 end) / count(*) *100,2) as immediate_percentage from test
where rn = 1