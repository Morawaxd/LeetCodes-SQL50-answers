select e.name, ifnull(b.bonus, null) as bonus from employee e
left join  bonus b on e.empId = b.empID
where ifnull(b.bonus,0) <1000