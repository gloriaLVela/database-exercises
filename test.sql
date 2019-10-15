use employees;

/**

  USE your employees database.

DESCRIBE each table and inspect the keys and see which columns have indexes and keys.

USE your codeup_test_db database.

Add an index to make sure all album names combined with the artist are unique. Try to add duplicates to test the constraint.
 */

 describe departments;
describe dept_emp;
describe dept_manager;
describe employees;
describe salaries;
describe titles;

# use codeup_test_db;
#
# select * from albums;
#
# ALTER TABLE albums
#     ADD UNIQUE (artist,name);
#
# insert into albums(artist, name, release_date, sales, genre) values('Michael Jackson', 'Thriller',1982, 47.3, 'Pop, rock, R&B' );