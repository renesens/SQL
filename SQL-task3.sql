-- 1. Output all workers whose salaries are in the database, together with their salaries.

select employee_name, monthly_salary
from employees e 
join employee_salary es 
on e.id = es.employee_id 
join salary s 
on es.employee_id  = s.id;


--2. Remove all workers with wages less than 2,000.

select employee_name, monthly_salary
from employees e
join  employee_salary es
on e.id = es.employee_id
join salary s 
on es.employee_id  = s.id
where monthly_salary < 2000;

--3. Display all payroll positions, but no employee is assigned to them. (The salary is there, but it is not clear who receives it.)

select employee_name, monthly_salary
from employee_salary es
join salary s 
on s.id=es.salary_id
left join employees e
on e.id=es.employee_id
where employee_name is null;

--4.  Display all wage positions under 2000 but no employee is assigned to them. (The salary is there, but it is not clear who receives it.)

select employee_name, monthly_salary
from employee_salary es
join salary s 
on s.id=es.salary_id 
left join employees e 
on es.employee_id = e.id 
where employee_name is null and  monthly_salary < 2000;

-- 5. Find all employees who have not been paid.

select employee_name, employee_id
from employees e
left join employee_salary es 
on e.id = es.employee_id 
where employee_id is null;


-- 6. Output all employees with their job titles.

select employee_name, role_name
from employees e
join roles r 
on e.id=r.id 
join roles_employee re on re.employee_id=r.id;

select employee_name, role_name
from employees e
join roles_employee re
on re.employee_id=e.id
join roles r on re.employee_id=r.id;

--7. Display names and job titles of Java developers only.

select employee_name, role_name
from employees e
join roles_employee re
on e.id=re.employee_id 
join roles r
on r.id=re.role_id
where role_name like ('%Java developer%');

--8. Output names and position of Python developers only.

select employee_name, role_name 
from roles r 
join roles_employee re 
on r.id = re.role_id  
join employees e 
on re.employee_id  = e.id 
where  role_name like ('%Python developer%');

--9.  Output the names and job titles of all QA engineers.

select employee_name, role_name 
from roles r 
join roles_employee re 
on r.id = re.employee_id  
join employees e
on re.employee_id  = e.id 
where  role_name like ('%QA%');

--10. Output the names and job titles of the manual QA engineers.

select employee_name, role_name 
from roles r 
join roles_employee re 
on r.id = re.role_id  
join employees e
on re.employee_id  = e.id 
where  role_name like ('%Manual QA engineer%');

--11. Output the names and job titles of the QA automators

select employee_name, role_name 
from roles r 
join roles_employee re 
on r.id = re.role_id  
join employees e
on re.employee_id  = e.id 
where  role_name like ('%Automation QA engineer%');

--12.  Output the names and salaries of Junior Professionals

select employee_name, monthly_salary, role_name
from roles r 
join roles_employee re
on r.id = re.role_id 
join employees e 
on re.employee_id = e.id 
join employee_salary es 
on e.id = es.employee_id 
join salary s 
on es.salary_id = s.id
where role_name like ('%Junior%');

--13. Output the names and salaries of Middle professionals
  
select employee_name, monthly_salary, role_name
from roles r 
join roles_employee re 
on re.role_id = r.id 
join employees e 
on e.id = re.employee_id 
join employee_salary es 
on e.id = es.employee_id 
join salary s 
on s.id = es.salary_id 
where role_name like ('%Middle%');

--14. Output the names and salaries of senior professionals

select employee_name, monthly_salary, role_name
from roles r 
join roles_employee re 
on re.role_id = r.id 
join employees e 
on e.id = re.employee_id 
join employee_salary es 
on es.employee_id = e.id 
join salary s 
on s.id = es.salary_id 
where role_name like ('%Senior%');

--15.  Take out the salaries of Java developers

select monthly_salary, role_name
from roles r 
join roles_employee re 
on re.role_id = r.id 
join employee_salary es 
on es.employee_id = re.employee_id 
join salary s 
on s.id = es.salary_id 
where role_name like ('%Java developer');

--16. Bring out the salaries of Python developers

select monthly_salary, role_name
from roles r 
join roles_employee re 
on re.role_id = r.id 
join employee_salary es 
on es.employee_id = re.employee_id 
join salary s 
on s.id = es.salary_id 
where role_name like ('%Python%');

--17. Output the names and salaries of Junior Python developers

select employee_name, monthly_salary
from roles r  
join roles_employee re 
on re.role_id = r.id 
join employees e 
on e.id = re.employee_id 
join employee_salary es 
on es.employee_id = e.id 
join salary s 
on s.id = es.salary_id 
where role_name like ('%Junior Python%');

-- 18. Output the names and salaries of Middle JS developers

select employee_name, monthly_salary
from roles r 
join roles_employee re on r.id = re.role_id 
join employees e on re.employee_id = e.id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where role_name like ('Middle JavaScript developer');

--19. Output the names and salaries of Senior Java developers

select employee_name, monthly_salary
from roles r 
join roles_employee re on r.id = re.role_id 
join employees e on re.employee_id = e.id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where role_name like ('Senior JavaScript developer');

--20. Bring out the salaries of Junior QA engineers

select monthly_salary, role_name
from roles r 
join roles_employee re on r.id  = re.role_id 
join employees e  on re.employee_id = e.id 
join employee_salary es on e.id = es.employee_id  
join salary s on es.salary_id = s.id
where role_name like ('%Junior%QA%');

--21. Output the average salary of all Junior Professionals
 
select avg(monthly_salary)
from roles r 
join roles_employee re on r.id  = re.role_id 
join employees e  on re.employee_id = e.id 
join employee_salary es on e.id = es.employee_id  
join salary s on es.salary_id = s.id
where role_name like ('%Junior%QA%');

--22.  Output the amount of JS developers' salaries

select sum (monthly_salary) from roles r 
join roles_employee re on r.id = re.role_id 
join employees e  on re.employee_id = e.id 
join employee_salary es on e.id = es.employee_id  
join salary s on es.salary_id = s.id
where role_name like ('%JavaScript developer%');

--23. Output the minimum salary of QA engineers

select min (monthly_salary) from roles r 
join roles_employee re on r.id = re.role_id 
join employees e  on re.employee_id = e.id 
join employee_salary es on e.id = es.employee_id  
join salary s on es.salary_id = s.id
where role_name like ('%QA engineer%');

--24. Output the maximum salary of QA engineers

select max (monthly_salary) from roles r 
join roles_employee re on r.id = re.role_id 
join employees e  on re.employee_id = e.id 
join employee_salary es on e.id = es.employee_id  
join salary s on es.salary_id = s.id
where role_name like ('%QA engineer%');

--25. Output the number of QA engineers

select count(role_name) as qa_engineer
from roles r 
join roles_employee re 
on re.role_id = r.id 
where role_name like ('%QA engineer%');

--26. Output the number of Middle professionals.

select count (role_name) as middle_count
from roles r 
join roles_employee re on r.id = re.role_id 
where role_name like ('%Middle%');

-- 27. Output the number of developers

select count (role_name) as developer_count
from roles r 
join roles_employee re on r.id = re.role_id 
where role_name like ('%developer%');

-- 28. Output the developer payroll (amount).

select sum(monthly_salary)
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join employee_salary es 
on es.employee_id = e.id 
join roles r 
on r.id = re.role_id 
join salary s 
on s.id = es.salary_id 
where role_name like ('%developer%');

--29. Output the names, positions and salaries of all specialists in ascending order

select employee_name, role_name, monthly_salary
from employees e 
join roles_employee re 
on re.employee_id = e.id 
join roles r 
on r.id = re.role_id 
join employee_salary es 
on es.employee_id = e.id 
join salary s 
on s.id = es.salary_id 
order by monthly_salary asc;

-- 30. Display names, positions and salaries of all specialists in ascending order of specialists with salaries from 1700 to 2300

select employee_name, role_name, monthly_salary
from employees e 
join roles_employee re 
on re.employee_id = e.id 
join roles r 
on r.id = re.role_id 
join employee_salary es 
on es.employee_id = e.id 
join salary s 
on s.id = es.salary_id
where monthly_salary between 1700 and 2300
order by monthly_salary asc;

--31. Output the names, positions and salaries of all specialists in ascending order and specialists whose salaries are less than 2300

select employee_name, role_name, monthly_salary
from employees e 
join roles_employee re 
on re.employee_id = e.id 
join roles r 
on r.id = re.role_id 
join employee_salary es 
on es.employee_id = e.id 
join salary s 
on s.id = es.salary_id
where monthly_salary < 2300
order by monthly_salary asc;

--32. Output the names, positions and salaries of all specialists in ascending order of specialists whose salaries are 1100, 1500, 2000

select employee_name, role_name, monthly_salary
from employees e 
join roles_employee re 
on re.employee_id = e.id 
join roles r 
on r.id = re.role_id 
join employee_salary es 
on es.employee_id = e.id 
join salary s 
on s.id = es.salary_id
where monthly_salary in (110,1500,2300)
order by monthly_salary asc;

















































































































