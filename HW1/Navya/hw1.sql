-- needula
-- Homework 1: SQLite Introduction

DROP TABLE IF EXISTS Edges;
DROP TABLE IF EXISTS MyRestaurants;

-- Create a table Edges(Source,Destination) where both Source and Destination are integers.
CREATE TABLE Edges (
    source INT,
    destination INT
);

-- Insert the tuples (10,5), (4,25), (1,3), (4, 4)
INSERT INTO Edges VALUES (10,5);
INSERT INTO Edges VALUES (4,25);
INSERT INTO Edges VALUES (1,3);
INSERT INTO Edges VALUES (4,4);

-- Write a SQL statement that returns all tuples
SELECT * FROM Edges;

-- Write a SQL statement that returns only column Source for all tuples
SELECT source FROM Edges;

-- Write a SQL statement that returns all tuples where Source > Destination
SELECT * FROM Edges WHERE source > destination;

-- For the next question you will be asked to create tables with attributes of types integer, varchar, date, and Boolean. However, SQLLite does not allow columns to have types of date or Boolean: you will use varchar and int instead:

-- 0 (false) and 1 (true) are the values used to interpret Booleans.
-- Date strings in SQLite are in the form: 'YYYY-MM-DD'.
-- Examples of valid date strings include: '1988-01-15', '0000-12-31', and '2011-03-28'.
-- Examples of invalid date strings include: '11-11-01', '1900-1-20', '2011-03-5', and '2011-03-50'.
-- Examples of date operations on date strings (try them):
-- select date('2011-03-28');
-- select date('now');
-- select date('now', '-5 year');
-- select date('now', '-5 year', '+24 hour');
-- select case when date('now') < date('2011-12-09') then 'Taking classes' when date('now') < date('2011-12-16') then 'Exams' else 'Vacation' end;
SELECT DATE('2011-03-28');

SELECT DATE('NOW');

SELECT CURRENT_DATE - INTERVAL '5 years';

SELECT CURRENT_DATE - INTERVAL '5 years' +  INTERVAL '24 days';

SELECT
    CASE
        WHEN CURRENT_DATE < '2011-12-09' THEN 'Taking classes'
        WHEN CURRENT_DATE < '2011-12-16' THEN 'Exams'
        ELSE 'Vacation'
    END;
-- Create a table called MyRestaurants with the following attributes (you can pick your own names for the attributes, just make sure it is clear which one is for which, and that you follow standard SQL style guidelines):
-- Name of the restaurant: a varchar field
-- Type of food they make: a varchar field
-- Distance (in minutes) from your house: an integer
-- Date of your last visit: a varchar field, interpreted as date
-- Whether you like it or not: an integer, interpreted as a Boolean (Pro Tip: like is a SQL reserved word and shouldn't be used as a column name)
CREATE TABLE MyRestaurants (
    name VARCHAR(40),
    type_food VARCHAR(40),
    distance INT,
    visit_date DATE,
    like_or_not BOOLEAN
);


-- Insert at least five tuples using the SQL INSERT command five (or more) times. You should insert at least one restaurant you liked, at least one restaurant you did not like, and at least one restaurant where you leave the iLike field NULL

INSERT INTO MyRestaurants VALUES ('Chipotle', 'Mexican', 5, '2023-04-01', 'F');
INSERT INTO MyRestaurants VALUES ('Cheesecake Factory', 'Desserts', 40, '2024-02-11', 'T');
INSERT INTO MyRestaurants VALUES ('Itadakimasu', 'Japanese', 3, '2022-12-07', 'T');
INSERT INTO MyRestaurants VALUES ('Mc Donalds', 'Fast Food', 6, '2020-12-11', 'F');
INSERT INTO MyRestaurants VALUES ('Chucky Cheese', 'Fast Food', 40, '2024-01-21', 'T');

SELECT * FROM MyRestaurants;

-- Write a SQL query that returns only the name and distance of all restaurants within and including 20 minutes of your house. The query should list the restaurants in alphabetical order of names.

SELECT name, distance FROM MyRestaurants WHERE distance < 20 ORDER BY name;

-- Write a SQL query that returns all restaurants that you like, but have not visited since more than 3 months ago.
SELECT name from MyRestaurants WHERE like_or_not = 'T' and visit_date < CURRENT_DATE - INTERVAL '3 months';


-- Practice
UPDATE MyRestaurants SET visit_date = '2021-09-06' WHERE name='Chipotle';

SELECT * FROM MyRestaurants;

ALTER TABLE MyRestaurants 


