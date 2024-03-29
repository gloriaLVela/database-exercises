use codeup_test_db;

truncate table albums;

insert into albums (artist,
name,
release_date,
genre,
sales)
values('Eagles','Their Greatest Hits (1971–1975)',	1976	,'Country rock,soft rock,folk rock',41.20),
('Michael Jackson','Thriller',	1982	,'Pop,rock,R&B',47.30),
('AC/DC',	'Back in Black',	1980	,'Hard rock',26.10),
('Pink Floyd','The Dark Side of the Moon',	1973	,'Progressive rock',24.20),
('Whitney Houston/ Various artists','The Bodyguard',	1992	,'R&B,soul,pop,soundtrack',28.40),
('Meat Loaf','Bat Out of Hell',	1977	,'Hard rock,glam rock,heavy metal',21.50),
('Eagles','Hotel California',	1976	,'Soft rock	',31.50),
('Bee Gees/ Various artists','Saturday Night Fever',	1977	,'Disco',21.60),
('Shania Twain','Come On Over',	1997	,'Country,pop',29.60),
('Fleetwood Mac','Rumours',	1977	,'Soft rock	',27.90),
('Various artists','Grease: The Original Soundtrack from the Motion Picture',	1978	,'Rock and roll',14.40),
('Led Zeppelin','Led Zeppelin IV',	1971	,'Hard rock,heavy metal,folk rock	',29.00),
('Michael Jackson','Bad',	1987	,'Pop,funk,rock',19.30),
('Alanis Morissette','Jagged Little Pill',	1995	,'Alternative rock',24.40),
('Celine Dion','Falling into You',	1996	,'Pop,soft rock',20.20),
('The Beatles','Sgt. Pepper''s Lonely Hearts Club Band',	1967	,'Rock',18.20),
('Various artists','Dirty Dancing',	1987	,'Pop,rock,R&B',17.90),
('Michael Jackson','Dangerous',	1991	,'Rock,funk,pop	',17.30),
('Adele','21',	2011	,'Pop,soul',25.30),
('Celine Dion','Let''s Talk About Love', 1997	,'Pop,soft rock',19.30),
('The Beatles','1',	2000	,'Rock',23.40),
('ABBA','Gold: Greatest Hits',	1992	,'Pop,disco',23.00),
('Madonna','The Immaculate Collection',	1990	,'Pop,dance',19.40),
('The Beatles','Abbey Road',	1969	,'Rock	',14.40),
('Bruce Springsteen','Born in the U.S.A.',	1984	,'Heartland rock',19.60),
('Dire Straits','Brothers in Arms',	1985	,'Roots rock,blues rock,soft rock',17.70),
('James Horner','Titanic: Music from the Motion Picture',	1997	,'Film score',18.10),
('Metallica','Metallica',	1991	,'Heavy metal',25.20),
('Nirvana', 'Nevermind',	1991	,'Grunge,alternative rock',16.70),
('Pink Floyd','The Wall',	1979	,'Progressive rock',18.70),
('Santana','Supernatural',	1999	,'Latin rock',20.50),
('Guns N'' Roses','Appetite for Destruction',	1987	,'Hard rock',21.9);

-- update albums set name = RTRIM(LTRIM(name));
--
-- update albums set genre = RTRIM(LTRIM(genre));
--
-- SELECT replace(columnA,'%[^a-Z0-9, ]%',' ')
-- FROM tableA
-- WHERE columnA like '%[^a-Z0-9, ]%';
