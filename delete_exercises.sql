-- Write SELECT statements for:
-- Albums released after 1991
-- Albums with the genre 'disco'
-- Albums by 'Whitney Houston' (...or maybe an artist of your choice)
-- Make sure to put appropriate captions before each SELECT.
-- Convert the SELECT statements to DELETE.
-- Use the MySQL command line client to make sure your records really were removed.

use codeup_test_db;

select name, release_date from albums where release_date > 1991;
select name,genre from albums where genre like '%disco%';
select name,artist from albums where artist like '%Whitney%Houston%';

delete from albums where release_date > 1991;
delete from albums where genre like '%disco%';
delete from albums where artist like '%Whitney%Houston%';


select name, release_date from albums where release_date > 1991;
select name,genre from albums where genre like '%disco%';
select name,artist from albums where artist like '%Whitney%Houston%';

