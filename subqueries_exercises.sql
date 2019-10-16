# Find all the employees with the same hire date as employee 101010 using a subquery.
#
# 69 Rows
use employees;


select emp.*
from employees emp
where emp.hire_date = (select emp1.hire_date
                       from employees emp1
                       where emp1.emp_no = 101010);
#
# Find all the titles held by all employees with the first name Aamod.
#
# 314 total titles, 6 unique titles
#

select distinct title
from titles t
where t.emp_no in (select emp1.emp_no
from employees emp1
where emp1.first_name
      like 'Aamod');

# Find all the current department managers that are female.
#
#
# +------------+------------+
# | first_name | last_name  |
# +------------+------------+
# | Isamu      | Legleitner |
# | Karsten    | Sigstam    |
# | Leon       | DasSarma   |
# | Hilary     | Kambil     |
# +------------+------------+

select emp.first_name, emp.last_name
from employees emp
where emp.gender = 'F'
      and emp.emp_no in
(select de_mgr.emp_no
from dept_manager de_mgr
where de_mgr.to_date > NOW());

# BONUS
#
# Find all the department names that currently have female managers.
#
#
# +-----------------+
# | dept_name       |
# +-----------------+
# | Development     |
# | Finance         |
# | Human Resources |
# | Research        |
# +-----------------+
#

select dep.dept_name
from departments dep
where dep.dept_no in (
    select dm.dept_no
    from employees emp
    join dept_manager dm on emp.emp_no = dm.emp_no
    where emp.gender = 'F'
    and dm.to_date > NOW()
          );

# Find the first and last name of the employee with the highest salary.
#
#
# +------------+-----------+
# | first_name | last_name |
# +------------+-----------+
# | Tokuyasu   | Pesch     |
# +------------+-----------+

select emp.first_name, emp.last_name
from employees emp
where emp.emp_no =
      (select sal.emp_no
      from salaries sal
        where sal.salary = (select max(sal2.salary)
        from salaries sal2 ));