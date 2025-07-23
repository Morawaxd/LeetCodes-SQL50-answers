select e.name from employee e
join (select managerId from employee
group by managerID having count(*) >=5) m on e.id = m.managerId;