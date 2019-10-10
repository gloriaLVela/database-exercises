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

select * from albums where artist = 'Pink Floyd';
Select release_date, name from albums where name like "%Sgt. Pepper's Lonely Hearts Club Band%";
select genre, name from albums where name like '%Nevermind%';
select name, release_date from albums where release_date >= 1990;
select name, sales from albums where sales < 20.00;
select name, 'rock' selected_genre from albums where genre like '%rock%';