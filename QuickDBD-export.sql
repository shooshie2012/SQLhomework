--question 1
select e.emp_no, e.last_name, e.first_name, e.gender, s.salary
from employees e
inner join salaries s on e.emp_no = s.emp_no;


--question 2
select * from employees
where hire_date < '1986-01-01'


--question 3
select d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date
from departments d
inner join dept_manager dm on d.dept_no = dm.dept_no
inner join employees e on dm.emp_no = e.emp_no

--question 4
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
inner join dept_emp de on e.emp_no = de.emp_no
inner join departments d on de.dept_no = d.dept_no


--question 5
select * from employees
where first_name = 'Hercules'
and last_name like 'B%';


--question 6
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
inner join dept_emp de on e.emp_no = de.emp_no
inner join departments d on de.dept_no = d.dept_no
where d.dept_name = 'Sales'
order by e.emp_no


--question 7
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
inner join dept_emp de on e.emp_no = de.emp_no
inner join departments d on de.dept_no = d.dept_no
where d.dept_name = 'Sales'
or d.dept_name = 'Development'
order by e.emp_no


--question 8
select last_name, count(last_name) from employees
group by last_name
order by count(last_name) desc
