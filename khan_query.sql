# sql-khan-academy-challenges
The following includes: SQL Basic, More Advanced SQL Queries, Relational Queries in SQL, Modifying Databases with SQL

/* Booklist data base */
CREATE TABLE BookList (id INTEGER PRIMARY KEY, name TEXT, rating INTEGER);

INSERT INTO BookList VALUES (1, "The Alchemist",5);
INSERT INTO BookList VALUES (2, "The Four Agreements",5);
INSERT INTO BookList VALUES (3, "ACOTAR", 5);
SELECT * FROM BookList;

/*Challenge: Box office hits database
This database contains an incomplete list of box office hits and their release year.
You're going to get the results back out of the database in different ways!
 */

 CREATE TABLE movies (id INTEGER PRIMARY KEY, name TEXT, release_year INTEGER);
INSERT INTO movies VALUES (1, "Avatar", 2009);
INSERT INTO movies VALUES (2, "Titanic", 1997);
INSERT INTO movies VALUES (3, "Star Wars: Episode IV - A New Hope", 1977);
INSERT INTO movies VALUES (4, "Shrek 2", 2004);
INSERT INTO movies VALUES (5, "The Lion King", 1994);
INSERT INTO movies VALUES (6, "Disney's Up", 2009);

/*Select all the movies.*/

SELECT*
FROM movies;

/*Retrieve only the movies that were released in the year 2000 or later, not before.
Sort the results so that the earlier movies are listed first. */

SELECT*
FROM movies
WHERE release_year > 2000
ORDER BY release_year


/*Here's a table containing a TODO list with the number of minutes it will take to complete each item.
Insert another item to your todo list with the estimated minutes it will take.
Select the SUM of minutes it will take to do all of the items on your TODO list.*/

CREATE TABLE todo_list (id INTEGER PRIMARY KEY, item TEXT, minutes INTEGER);
INSERT INTO todo_list VALUES (1, "Wash the dishes", 15);
INSERT INTO todo_list VALUES (2, "vacuuming", 20);
INSERT INTO todo_list VALUES (3, "Learn some stuff on KA", 30);
INSERT INTO todo_list VALUES(4,"Read",60);

SELECT SUM(minutes)
FROM todo_list
