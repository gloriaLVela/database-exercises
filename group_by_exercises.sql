/**
In your script, use DISTINCT to find the unique titles in the titles table.
Your results should look like:


Senior Engineer
Staff
Engineer
Senior Staff
Assistant Engineer
Technique Leader
Manager
*/

use employees;

select distinct  title
from titles;


/**

  Find your query for employees whose last names start and end with 'E'.
  Update the query to find just the unique last names that start and end with 'E' using GROUP BY.
  The results should be:


Eldridge
Erbe
Erde
Erie
Etalle
 */

 select last_name
from employees
where last_name like 'e%e'
group by last_name;


/**
  Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'. You should get 846 rows.
 */

select first_name, last_name
from employees
where last_name like 'e%e'
group by first_name, last_name;


/**
  Find the unique last names with a 'q' but not 'qu'. Your results should be:


Chleq
Lindqvist
Qiwen
 */

select last_name
from employees
where last_name like '%q%'
and last_name not like '%qu%'
group by last_name;


/**

  Add a COUNT() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others.
 */

select last_name
from employees
where last_name = "Chleq";

select last_name, count(*)
from employees
where last_name like '%q%'
  and last_name not like '%qu%'
group by last_name
order by count(*);

/**

  Update your query for 'Irena', 'Vidya', or 'Maya'.
  Use count(*) and GROUP BY to find the number of employees for each gender with those names. Your results should be:


441 M
268 F
 */

select count(*), gender from employees.employees
where first_name IN ( 'Irena', 'Vidya',  'Maya')
group by gender;