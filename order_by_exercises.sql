-- Use ORDER BY clauses to create more complex queries for our database
-- Create a new file called order_by_exercises.sql and copy and paste the contents of your where_exercises.sql.
-- Modify your first query to order by first name. The first result should be Irena Reutenauer and the last result should be Vidya Simmen.
--
-- Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Zweizig.

--
-- Change the order by clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda.

--
-- Update your queries for employees with 'E' in their last name to sort the results by their employee number. Your results should not change!


-- Now reverse the sort order for both queries.

-- Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.



--===========================================================================================


-- Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
-- Modify your first query to order by first name. The first result should be Irena Reutenauer and the last result should be Vidya Simmen.
select * from employees.employees
where first_name IN ( 'Irena', 'Vidya') or first_name = 'Maya'
order by first_name;

-- Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
-- Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Zweizig.
select * from employees.employees
where first_name IN ( 'Irena', 'Vidya') or first_name = 'Maya'
order by first_name, last_name;

-- Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
-- Change the order by clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda.
select * from employees.employees
where first_name IN ( 'Irena', 'Vidya') or first_name = 'Maya'
order by last_name, first_name;


--
-- Find all employees whose last name starts with 'E' — 7,330 rows.
-- Update your queries for employees with 'E' in their last name to sort the results by their employee number. Your results should not change!
select * from employees.employees
where last_name like 'E%'
order by emp_no;

--
-- Find all employees hired in the 90s — 135,214 rows.
select * from employees.employees
where hire_date like '199%-%-%';

--
-- Find all employees born on Christmas — 842 rows.
select * from employees.employees
where birth_date like '%-12-25';

-- Find all employees with a 'q' in their last name — 1,873 rows.
select * from employees.employees
where last_name like '%q%';


--=================================================================
# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
select * from employees.employees
where first_name ='Irena' or first_name = 'Vidya' or first_name = 'Maya';


# Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
select * from employees.employees
where (first_name ='Irena' or first_name = 'Vidya' or first_name = 'Maya')
    and gender = 'm';


# Find all employees whose last name starts or ends with 'E' — 30,723 rows.
select * from employees.employees
where last_name like 'E%' or last_name like '%e';


# Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
select * from employees.employees
where last_name like 'E%E';


# Find all employees hired in the 90s and born on Christmas — 362 rows.
-- Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.
select * from employees.employees
where hire_date like '199%-%-%'
and birth_date like '%-12-25'
order by birth_date desc, hire_date asc;


# Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
select * from employees.employees
where last_name like '%q%'
and last_name not like '%qu%';