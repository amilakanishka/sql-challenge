
--1.List the following details of each employee: employee number, last name, first name, sex, and salary.
select emp.emp_no,emp.last_name, emp.first_name, emp.sex, sal.salary
from employees emp join salaries sal on emp.emp_no = sal.emp_no

--2.List first name, last name, and hire date for employees who were hired in 1986.
select emp.first_name, emp.last_name, emp.hire_date
from employees emp
where date_part('year',hire_date) = 1986

--3.List the manager of each department with the following information: department number, 
--  department name, the manager's employee number, last name, first name.

select dept.dept_no, dept.dept_name, emp.emp_no, emp.last_name, emp.first_name
from employees emp 
join dept_manager on emp.emp_no =  dept_manager.emp_no
join departments dept on dept.dept_no = dept_manager.dept_no

--4. List the department of each employee with the following information: employee number, 
--  last name, first name, and department name.

select emp.emp_no, emp.last_name, emp.first_name, dept.dept_name
from employees emp
join dept_emp on emp.emp_no =  dept_emp.emp_no
join departments dept on dept.dept_no = dept_emp.dept_no
order by dept.dept_name 

--5. List first name, last name, and sex for employees whose first name is "Hercules" and 
--   last names begin with "B."

select emp.first_name, emp.last_name, emp.sex
from employees emp
where emp.first_name = 'Hercules' and emp.last_name like 'B%' 

--6. List all employees in the Sales department, including their employee number, last name, 
--   first name, and department name.

select emp.emp_no, emp.last_name, emp.first_name, dept.dept_name
from employees emp
join dept_emp on emp.emp_no =  dept_emp.emp_no
join departments dept on dept.dept_no = dept_emp.dept_no
where dept.dept_name = 'Sales'

--7. List all employees in the Sales and Development departments, including their employee number, 
--   last name, first name, and department name.

select emp.emp_no, emp.last_name, emp.first_name, dept.dept_name
from employees emp
join dept_emp on emp.emp_no =  dept_emp.emp_no
join departments dept on dept.dept_no = dept_emp.dept_no
where dept.dept_name = 'Sales' or dept.dept_name = 'Development'


--8. In descending order, list the frequency count of employee last names, i.e., 
--   how many employees share each last name.

select last_name, count(last_name)
from employees
group by last_name
order by count(last_name) desc







