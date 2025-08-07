with cte as (select e.name as name, e.salary as salary, e.departmentId, d.name as dname,
dense_rank() over (partition by e.departmentId order by e.salary desc) as ranking
from employee e
Join department d on e.departmentId = d.id)
select dname as Department, name as Employee, Salary from cte
where ranking < 4 
