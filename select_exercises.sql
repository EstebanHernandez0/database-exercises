/*Explore the structure of the albums table.

a. How many rows are in the albums table?
	There are 6 rows

b. How many unique artist names are in the albums table?
	There are 22 unique artist names
 SELECT DISTINCT artist
 FROM albums;

c. What is the primary key for the albums table?
	

d. What is the oldest release date for any album in the albums table? What is the most recent release date?
	The oldest realse date is 1967, and the most recent release date is 2011
	
SELECT release_date
FROM albums
ORDER by release_date;



Write queries to find the following information:

a. The name of all albums by Pink Floyd

SELECT *
FROM albums
WHERE artist = 'Pink Floyd';

b. The year Sgt. Pepper's Lonely Hearts Club Band was released

SELECT release_date
FROM albums
WHERE name = "Sgt. Pepper's Lonely Hearts Club Band";


c. The genre for the album Nevermind

SELECT genre
FROM albums
WHERE name = 'Nevermind';


d. Which albums were released in the 1990s

SELECT name
FROM albums
WHERE release_date >= 1990 and release_date < 2000;


e. Which albums had less than 20 million certified sales

SELECT sales
FROM albums
WHERE sales < 20;

f. All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
	Because SQL is specific when doing a query

*/
