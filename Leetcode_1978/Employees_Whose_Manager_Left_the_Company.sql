select employee_id FROM
employees where salary <30000
and manager_id not IN
(select employee_id from employees )
order by employee_id