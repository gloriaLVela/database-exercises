-- In select_exercises.sql write queries to find the following information. Before each item, output a caption explaining the results:
--
-- The name of all albums by Pink Floyd.
-- The year Sgt. Pepper's Lonely Hearts Club Band was released
-- The genre for Nevermind
-- Which albums were released in the 1990s
-- Which albums had less than 20 million certified sales
-- All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?

use codeup_test_db;

select * from albums;

select name AS 'Albums by Pink Floyd'  from albums where artist = 'Pink Floyd';
Select release_date  AS 'Sgt. Pepper''s Lonely Hearts Club Band' from albums where name like "%Sgt. Pepper's Lonely Hearts Club Band%";
select genre AS 'genre for Nevermind' from albums where name like '%Nevermind%';
select Name as 'released in the 1990' from albums where release_date between  1990 and 1999;
select name as 'records sales below 20' from albums where sales < 20.00;
select name as 'Records rock'  from albums where genre like '%rock%';