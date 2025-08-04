(select name results from users u
join movierating mr on u.user_id = mr.user_id
group by name order by count(rating) desc, name limit 1)

union all

(select title results from movies m 
join movierating mr on m.movie_id = mr.movie_id
where month(created_at) = 2
group by title order by avg(rating) desc, title limit 1)