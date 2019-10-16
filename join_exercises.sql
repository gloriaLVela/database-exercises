# Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.
#
#
#   Department Name    | Department Manager
#  --------------------+--------------------
#   Customer Service   | Yuchang Weedman
#   Development        | Leon DasSarma
#   Finance            | Isamu Legleitner
#   Human Resources    | Karsten Sigstam
#   Marketing          | Vishwani Minakawa
#   Production         | Oscar Ghazalie
#   Quality Management | Dung Pesch
#   Research           | Hilary Kambil
#   Sales              | Hauke Zhang

use employees;
# Find the name of all departments currently managed by women.
#
#
# Department Name | Manager Name
# ----------------+-----------------
# Development     | Leon DasSarma
# Finance         | Isamu Legleitner
# Human Resources | Karsetn Sigstam
# Research        | Hilary Kambil

select dept.dept_name as 'Department Name', concat(emp.first_name, ' ', emp.last_name) 'Manager Name'
from employees emp
         join dept_manager de_emp  on emp.emp_no = de_emp.emp_no
         join departments dept on de_emp.dept_no = dept.dept_no
where emp.gender = 'F'
  and de_emp.to_date >= now()
order by dept.dept_name;


# Find the current titles of employees currently working in the Customer Service department.
#
#
# Title              | Count
# -------------------+------
# Assistant Engineer |    68
# Engineer           |   627
# Manager            |     1
# Senior Engineer    |  1790
# Senior Staff       | 11268
# Staff              |  3574
# Technique Leader   |   241

select  titles.title as Title, count(*) as Count
from employees emp
join titles on emp.emp_no = titles.emp_no
join dept_emp de on de.emp_no = emp.emp_no
join departments dept on dept.dept_no = de.dept_no
where titles.to_date > now()
and dept.dept_name = 'Customer Service'
group by titles.title;

# Find the current salary of all current managers.
#
#
# Department Name    | Name              | Salary
# -------------------+-------------------+-------
# Customer Service   | Yuchang Weedman   |  58745
# Development        | Leon DasSarma     |  74510
# Finance            | Isamu Legleitner  |  83457
# Human Resources    | Karsten Sigstam   |  65400
# Marketing          | Vishwani Minakawa | 106491
# Production         | Oscar Ghazalie    |  56654
# Quality Management | Dung Pesch        |  72876
# Research           | Hilary Kambil     |  79393
# Sales              | Hauke Zhang       | 101987

select departments.dept_name as 'Department Name',
       concat(emp.first_name, ' ', emp.last_name) as Name, sal.salary as Salary
from employees emp
join dept_manager mgr
on emp.emp_no = mgr.emp_no
    join dept_emp de on emp.emp_no = de.emp_no
    join departments on de.dept_no = departments.dept_no
join salaries sal
on emp.emp_no = sal.emp_no
where sal.to_date > NOW()
#   and de.to_date > NOW()
and mgr.to_date > NOW()
order by departments.dept_name;

#

# Bonus Find the names of all current employees, their department name, and their current manager's name.
#
#
#     240,124 Rows
#
#     Employee Name | Department Name  |  Manager Name
#     --------------|------------------|-----------------
#      Huan Lortz   | Customer Service | Yuchang Weedman

select concat(emp.first_name, ' ', emp.last_name) as 'Employee Name',  d.dept_name as 'Department Name',
       (Select concat(emp2.first_name, ' ', emp2.last_name)
from employees emp2
    join dept_manager dm on emp2.emp_no = dm.emp_no
    where dm.dept_no = de.dept_no
    and dm.to_date > NOW()) as 'Manager Name'
from employees emp
join dept_emp de on de.emp_no = emp.emp_no
join departments d on de.dept_no = d.dept_no
where de.to_date > NOW()
# and emp.first_name = 'Huan'
# and d.dept_name = 'Customer Service'
order by emp.emp_no;