select s.user_id,round(ifnull(sum(c.action = 'confirmed')/ sum(c.action in( 'timeout','confirmed' )),0),2) as confirmation_rate from signups s
left join confirmations c on s.user_id = c.user_id
group by s.user_id