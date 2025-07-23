select employees.name,IFNULL(employeeUNI.unique_id, NULL) as unique_id from employees
left join EmployeeUNI On employees.id = EmployeeUNI.id;
