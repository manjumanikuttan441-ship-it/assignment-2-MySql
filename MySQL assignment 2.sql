select distinct salary
from employees;
select employee_name,age as employee_age,salary as employee_salary 
from employees;
 select * 
from employees
where  salary>50000  and hire_date <'2016-01-01';
update employees 
set designation =  'data scientists'
where designation is null;
select * 
from employees
order by department_id ASC,salary DESC;

select * from employees where hire_date like '2018%'
order  by hire_date ASC
limit 5;
select sum(salary) as total_finance from employees
where depeartment_id = 7;
select min(age) as minimum_age from employees;
select location_id,max(salary) as max_salary from employees
group by location_id;
select designation ,avg(salary) as average_salary
from employees
where designation like '%ANALYST%'
group by designation;
select department_id,count(*) as employee_count
from employees
group by department_id
having count(*)<3;
select location_id,avg(age) as average_age 
from employees
where gender ='f'
group by location_id 
having avg(age)<30;
select e.employee_name,e.designstioin,d.department_name
from employees e 
inner join departyment d on e.department_id;
select d.department_name,count(e.employee_id)as ytotal_employees
from departments departmentsleft join employees e on d.department_id=e.department_id
group by d.department_id,d.department_name;

select l.location,e.employee_name
from employees e
right join location l on e.location_id=l.location_id;


