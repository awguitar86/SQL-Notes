/* SQL 2 */

/* Data About Data */
--COUNT: an SQL function that returns the number of rows that satisfy the condition.
SELECT COUNT(name) FROM cities; --This gets the count of the certain in row and does not count empty spaces.
SELECT COUNT(*) FROM cities; --the star * counts the number of rows in that table. This also includes empty spaces.
SELECT COUNT(DISTINCT state) FROM cities; --This gets unique states or values in the column. If there are 7 rows, but two rows are the same state this would return 6.

--MIN/MAX
SELECT MAX(population) FROM cities; --this gets the biggest value from the column.
SELECT MIN(population) FROM cities; --this gets the smallest value from the column.

--AVG/SUM
SELECT AVG(founded) FROM cities; --This will give average of all the rows in a column.
SELECT SUM(population) FROM cities; --This will get the SUM of the rows in a column.

--GROUP BY
SELECT COUNT(name) FROM cities GROUP BY state; --GROUP BY seperates the results of a function into groups based on one column.

--HAVING
SELECT COUNT(name) FROM cities GROUP BY state HAVING population > 1000000; --HAVING adds a condition to the rows included in the selection before they are grouped.


/* ALTER TABLE */

--Adding a Column
ALTER TABLE scores ADD COLUMN level INT;
ALTER TABLE scores ADD COLUMN email VARCHAR(50); --in adding a new column, write the new column name and data type;

--Adding Primary and Foreign Keys
ALTER TABLE tests ADD PRIMARY KEY (id); --in adding a PRIMARY KEY, list the column name in parenthesis.
ALTER TABLE tests ADD FOREIGN KEY (subject_id) REFERENCES subjects (id); --in adding a FOREIGN KEY, include the table and column it will reference.
ALTER TABLE subjects ADD FOREIGN KEY (teacher_id) REFERENCES teachers (id);

--Change Data Types
ALTER TABLE grades ALTER grade SET DATA TYPE decimal; --when changing a column's data type, make sure all the current data will still match the new data type.
ALTER TABLE grades ALTER student_name SET DATA TYPE VARCHAR(100);

--Rename Column
ALTER TABLE grades RENAME COLUMN student_name TO student_full_name; --renaming a column
ALTER TABLE grades RENAME COLUMN grade TO participation_score;

--Remove Column
ALTER TABLE employees DROP COLUMN yearly_bonus; --removing a column
ALTER TABLE employees DROP COLUMN vacation_days;

--Change Table Name
ALTER TABLE employees RENAME TO underlings;
ALTER TABLE grades RENAME TO celebration_of_knowledge; --renaming a table


/* DROP TABLE */
-- DROP TABLE and DROP DATABASE will permanently delete all data
-- from that table or all tables from the database, so use with caution.
DROP TABLE languages;
DROP DATABASE;


/* FILTER, ORDER BY, LIMIT */
-- DISTINCT
SELECT DISTINCT first_name FROM students; --use DISTINCT to eliminate duplicates in select statements.

--ORDER BY
SELECT * FROM student ORDER BY grades; --use ORDER BY to sort the results by a column; use ASC fr DESC to specify direction.

--LIMIT
SELECT * FROM students LIMIT 5; --use LIMIT to cap the number of results.


/* FOREIGN KEYS 1 */
-- foreign key: a column which refers to a primary key in another table; prevents duplication of data;
CREATE TABLE tests (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    subject_id INT REFERENCES subject (id) --this references the table 'subject' and column 'id'. Hence why the name of this column is subject_id.
);

CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    text VARCHAR(500),
    user_id INT REFERENCES users (id)--this references the table 'users' and column 'id'. Hence why the name of this column is user_id.
);

/* FOREIGN KEYS 2 */
SELECT * FROM cities, states
    WHERE cities.state_id = states.id; -- Inner joins - the most common - can be written with a where statement.

SELECT cities.name, states.name
    FROM cities --write only the first table in from, then specify which tasble, and the column pair to join.
    INNER JOIN states ON cities.state_id = states.id;

SELECT cities.name, states.name
    FROM cities
    LEFT JOIN states ON cities.state_id = states.id; --outer joins - left, right, and full - can also be done this same way.
--Left: Rows from the left (first) table will be included regardless of whether they have a match.
--Right: Rows from the right (second) table will be included regardless f whether they have a match.
--Full: Rows from both tables will be included regardless of whether they have a match.

/* Aliasing */
SELECT c.name, c.email, o.total, o.date
    FROM customers AS c, orders AS o --AS allows you to create an alias for the table, which you can use for the rest of the statements.
    WHERE c.id = o.customer_id;

SELECT c.name, c.email, o.total, o.date
    FROM customers c, orders o
    WHERE c.id = o.customer_id; --You can also forgo the AS and put the alias after a space.


/* Partial Matches */
--With LIKE, you can use wildcard symbols to make your searches more flexible.
SELECT * FROM movies
    WHERE title LIKE 'm%';

SELECT * FROM movies
    WHERE title LIKE 'a%'; -- % (percent) can match a string of any number of characters.

SELECT * FROM movies
    WHERE title LIKE '200_'; -- _ (underscore) can match a single character


/* SUBQUERIES */
SELECT name FROM cities -- you can use subqueries to filter rows based on information found on other tables without using a join
    WHERE state_id IN (SELECT id FROM states --use IN and place the subquery in parentheses.
        WHERE statehood > 1850);